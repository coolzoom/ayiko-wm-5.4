#include "Locale.hpp"
#include "Common.h"

char const * const localeNames[] = {
    "enUS",
    "koKR",
    "frFR",
    "deDE",
    "zhCN",
    "zhTW",
    "esES",
    "esMX",
    "ruRU",
    "ptPT",
    "itIT",
};

LocaleConstant GetLocaleByName(const std::string& name)
{
    for (uint32 i = 0; i < TOTAL_LOCALES; ++i)
        if (name == localeNames[i])
            return LocaleConstant(i);

    return LOCALE_enUS;                                     // including enGB case
}
