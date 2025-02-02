#include "common.h"
#include "hud_element.h"

#define NAMESPACE action_command_hammer

// icon indexes for hud elements
extern HudScript HudScript_TimingBar1Chance[];
extern HudScript HudScript_TimingWait[];
extern HudScript HudScript_TimingCharge4a[];
extern HudScript HudScript_TimingCharge4b[];
extern HudScript HudScript_TimingCharge4c[];
extern HudScript HudScript_StickHoldLeft[];
extern HudScript HudScript_RightOn[];

extern s32 D_802941E0;

ApiStatus N(CreateHudElements)(Evt* script, s32 isInitialCall) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    s32 hudElement;

    battleStatus->unk_82 = 1;
    battleStatus->unk_434 = &D_802941E0;
    battleStatus->unk_86 = 0;

    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        battleStatus->unk_84 = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();
    actionCommandStatus->actionCommandID = ACTION_COMMAND_SMASH;
    actionCommandStatus->hudElementX = -48;
    actionCommandStatus->state = 0;
    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->hudElementY = 96;

    hudElement = create_hud_element(HudScript_TimingBar1Chance);
    actionCommandStatus->hudElements[0] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 10);

    hudElement = create_hud_element(HudScript_TimingWait);
    actionCommandStatus->hudElements[1] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 0);

    hudElement = create_hud_element(HudScript_TimingCharge4a);
    actionCommandStatus->hudElements[2] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 0);

    hudElement = create_hud_element(HudScript_TimingCharge4b);
    actionCommandStatus->hudElements[3] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 0);

    hudElement = create_hud_element(HudScript_TimingCharge4c);
    actionCommandStatus->hudElements[4] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 0);

    hudElement = create_hud_element(HudScript_StickHoldLeft);
    actionCommandStatus->hudElements[5] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 0);

    hudElement = create_hud_element(HudScript_RightOn);
    actionCommandStatus->hudElements[6] = hudElement;
    set_hud_element_flags(hudElement, 0x82);
    set_hud_element_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    set_hud_element_render_depth(hudElement, 0);
    set_hud_element_alpha(hudElement, 0xFF);

    return ApiStatus_DONE2;
}

ApiStatus func_802A9258_422258(Evt* script, s32 isInitialCall) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    Bytecode* args = script->ptrReadPos;

    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        battleStatus->unk_84 = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();
    actionCommandStatus->unk_4E = evt_get_variable(script, *args++);
    actionCommandStatus->unk_52 = evt_get_variable(script, *args++);
    actionCommandStatus->unk_50 = evt_get_variable(script, *args);
    actionCommandStatus->unk_50 = func_80268224(actionCommandStatus->unk_50);
    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->unk_62 = 1;
    if (actionCommandStatus->unk_4E < 0) {
        actionCommandStatus->unk_4E = 0;
        actionCommandStatus->unk_62 = 0;
    }

    actionCommandStatus->unk_5F = 0;
    battleStatus->actionSuccess = 0;
    battleStatus->unk_84 = 0;
    battleStatus->unk_86 = 0;
    actionCommandStatus->state = 10;
    battleStatus->flags1 &= ~0x8000;
    func_80269118();
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "battle/action_cmd/hammer", func_802A936C_42236C);

void N(draw_hud_elements)(void) {
    draw_hud_element_clipped(gActionCommandStatus.hudElements[0]);
    draw_hud_element_clipped(gActionCommandStatus.hudElements[1]);
    draw_hud_element_clipped(gActionCommandStatus.hudElements[2]);
    draw_hud_element_clipped(gActionCommandStatus.hudElements[3]);
    draw_hud_element_clipped(gActionCommandStatus.hudElements[4]);
    draw_hud_element_clipped(gActionCommandStatus.hudElements[5]);
    draw_hud_element_clipped(gActionCommandStatus.hudElements[6]);
}

void N(free_hud_elements)(void) {
    free_hud_element(gActionCommandStatus.hudElements[0]);
    free_hud_element(gActionCommandStatus.hudElements[1]);
    free_hud_element(gActionCommandStatus.hudElements[2]);
    free_hud_element(gActionCommandStatus.hudElements[3]);
    free_hud_element(gActionCommandStatus.hudElements[4]);
    free_hud_element(gActionCommandStatus.hudElements[5]);
    free_hud_element(gActionCommandStatus.hudElements[6]);
}
