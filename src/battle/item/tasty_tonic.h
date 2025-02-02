#ifndef BATTLE_ITEM_TASTY_TONIC
#define BATTLE_ITEM_TASTY_TONIC

#include "common.h"
#include "script_api/battle.h"

#undef NAMESPACE
#define NAMESPACE battle_item_tasty_tonic

ApiStatus N(func_802A123C_72223C)(Evt* script, s32 isInitialCall);

extern EvtScript N(UseItemWithEffect);
extern EvtScript N(PlayerGoHome);
extern EvtScript N(DrinkItem);

#endif
