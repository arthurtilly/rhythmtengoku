#include "engines/clappy_trio.h"
#include "src/text_printer.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gClappyTrio ((struct ClappyTrioEngineData *)gCurrentEngineData)


/* THE CLAPPY TRIO */


#include "asm/engines/clappy_trio/asm_08030384.s"

#include "asm/engines/clappy_trio/asm_080303a4.s"

#include "asm/engines/clappy_trio/asm_0803050c.s"

#include "asm/engines/clappy_trio/asm_0803051c.s"

#include "asm/engines/clappy_trio/asm_0803055c.s"

#include "asm/engines/clappy_trio/asm_08030588.s"

#include "asm/engines/clappy_trio/asm_0803068c.s"

#include "asm/engines/clappy_trio/asm_0803074c.s"

#include "asm/engines/clappy_trio/asm_0803080c.s"

void func_0803088c(u32 volume) {
    gClappyTrio->lionClapVolume = volume;
}

void func_08030898(u8 enable) {
    gClappyTrio->grayscale = enable;
}

void clappy_trio_engine_update(void) {
    text_printer_update(gClappyTrio->textPrinter);
}

void clappy_trio_engine_stop(void) {
}

#include "asm/engines/clappy_trio/asm_080308bc.s"

u32 clappy_trio_cue_update(struct Cue *cue, struct ClappyTrioCue *data, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    }

    return FALSE;
}

void clappy_trio_cue_despawn(void) {
}

#include "asm/engines/clappy_trio/asm_080308f4.s"

#include "asm/engines/clappy_trio/asm_080309a8.s"

#include "asm/engines/clappy_trio/asm_080309f4.s"

void clappy_trio_input_event(u32 pressed, u32 released) {
    struct Lion *lion = &gClappyTrio->lion;
    struct Animation *clapAnim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);

    sprite_set_anim(gSpriteHandler, lion->sprite, clapAnim, 2, 1, 0x7F, 0);

    play_sound(&s_witch_donats_seqData);

    lion->unk2 = 1;
    lion->unk3 = 2;
    
    beatscript_enable_loops();
}


#include "asm/engines/clappy_trio/asm_08030a60.s"

void clappy_trio_common_display_text(char *text) {
    text_printer_set_string(gClappyTrio->textPrinter, text);
}

void func_08030bf0(u32 enabled) {
    sprite_set_visible(gSpriteHandler, gClappyTrio->unk, enabled);
}

void clappy_trio_common_init_tutorial(struct Scene *skipDestination) {
    if (skipDestination != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDestination);
        gameplay_set_skip_icon(1, TRUE);
    } else {
        gameplay_enable_tutorial(FALSE);
        gameplay_set_skip_icon(0, FALSE);
    }
}
