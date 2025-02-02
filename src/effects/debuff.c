#include "common.h"
#include "effects_internal.h"

void debuff_appendGfx(void* effect);

INCLUDE_ASM(s32, "effects/debuff", debuff_main);

void debuff_init(void) {
}

INCLUDE_ASM(s32, "effects/debuff", debuff_update);

void debuff_render(EffectInstance* effect) {
    RenderTask renderTask;
    RenderTask* retTask;

    renderTask.appendGfx = debuff_appendGfx;
    renderTask.appendGfxArg = effect;
    renderTask.distance = 0;
    renderTask.renderMode = RENDER_MODE_28;

    retTask = shim_queue_render_task(&renderTask);
    retTask->renderMode |= RENDER_MODE_2;
}

INCLUDE_ASM(s32, "effects/debuff", debuff_appendGfx);
