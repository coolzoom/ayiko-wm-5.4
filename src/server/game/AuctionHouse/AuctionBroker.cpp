#include "AuctionBroker.hpp"
#include "AuctionHouseMgr.h"
#include "ObjectDefines.h"

#include <zmq.h>

namespace {

uint8 tryBuyout(zmq_msg_t *request)
{
    auto const data = static_cast<uint8 const *>(zmq_msg_data(request));

    uint8 houseId = *(uint8 const *)(data + 0);
    uint32 auctionId = *(uint32 const *)(data + 1);
    uint32 buyerLowGuid = *(uint32 const *)(data + 5);

    uint64 buyerGuid = MAKE_NEW_GUID(buyerLowGuid, 0, HIGHGUID_PLAYER);

    AuctionHouseObject *auctionHouse = sAuctionMgr->GetAuctionsMapByHouseId(houseId);
    AuctionEntry *auction = auctionHouse->GetAuction(auctionId);
    if (!auction)
        return 1;

    SQLTransaction trans = CharacterDatabase.BeginTransaction();

    if (auction->bidder != 0 && auction->bidder != buyerGuid)
        sAuctionMgr->SendAuctionOutbiddedMail(auction, auction->buyout, buyerGuid, trans);

    auction->bidder = buyerGuid;
    auction->bid = auction->buyout;

    sAuctionMgr->SendAuctionSalePendingMail(auction, trans);
    sAuctionMgr->SendAuctionSuccessfulMail(auction, trans);
    sAuctionMgr->SendAuctionWonMail(auction, trans);

    auction->DeleteFromDB(trans);

    uint32 itemTemplate = auction->itemEntry;
    sAuctionMgr->RemoveAItem(auction->itemGUIDLow);
    auctionHouse->RemoveAuction(auction, itemTemplate);

    CharacterDatabase.CommitTransaction(trans);
    return 0;
}

} // namespace

namespace Trinity {

AuctionBroker::AuctionBroker(void *context)
    : m_context(context)
    , m_responder(m_context ? zmq_socket(m_context, ZMQ_REP) : NULL)
    , m_stopped(false)
{ }

AuctionBroker::~AuctionBroker()
{
    stop();
}

int AuctionBroker::bind(char const *endpoint)
{
    return (m_context && m_responder)
            ? zmq_bind(m_responder, endpoint)
            : -1;
}

void AuctionBroker::stop()
{
    if (!m_stopped)
    {
        zmq_close(m_responder);
        m_stopped = true;
    }
}

void AuctionBroker::update()
{
    zmq_pollitem_t items[] = {
        { m_responder, 0, ZMQ_POLLIN, 0 }
    };

    if (zmq_poll(items, 1, 0) <= 0)
        return;

    zmq_msg_t message;

    while (true) {
        zmq_msg_init(&message);
        if (zmq_recvmsg(m_responder, &message, ZMQ_DONTWAIT) == -1)
            break;

        uint8 const result = tryBuyout(&message);
        zmq_msg_close(&message);

        zmq_msg_init_size(&message, sizeof(result));
        memcpy(zmq_msg_data(&message), &result, sizeof(result));

        zmq_sendmsg(m_responder, &message, ZMQ_DONTWAIT);
        zmq_msg_close(&message);
    }
}

} // namespace Trinity
