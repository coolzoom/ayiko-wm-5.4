#ifndef TRINITY_AUCTIONBROKER_HPP
#define TRINITY_AUCTIONBROKER_HPP

namespace Trinity {

class AuctionBroker final
{
public:
    AuctionBroker(void *context);
    ~AuctionBroker();

    int bind(char const *endpoint);
    void stop();

    void update();

private:
    void *m_context;
    void *m_responder;
    bool m_stopped;
};

} // namespace Trinity

#endif // TRINITY_AUCTIONBROKER_HPP
