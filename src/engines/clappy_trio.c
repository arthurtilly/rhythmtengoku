#include "engines/clappy_trio.h"
#include "src/text_printer.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gClappyTrio ((struct ClappyTrioEngineData *)gCurrentEngineData)


/* THE CLAPPY TRIO */


struct Animation *clappy_trio_get_anim(enum ClappyTrioAnimationsEnum anim) {
    struct Animation *animation;
    animation = clappy_trio_anim_table[anim][gClappyTrio->version];

    return animation;
}

#include "asm/engines/clappy_trio/asm_080303a4.s"

#include "asm/engines/clappy_trio/asm_0803050c.s"

#include "asm/engines/clappy_trio/asm_0803051c.s"

#include "asm/engines/clappy_trio/asm_0803055c.s"

void clappy_trio_engine_start(u32 ver) {
    struct TextPrinter *printer;

    gClappyTrio->version = ver >> 2;
    gClappyTrio->unk = ver & 3;
    
    func_0803055c();
    scene_show_obj_layer();
    
    scene_hide_bg_layer(BG_LAYER_0);
    scene_hide_bg_layer(BG_LAYER_2);
    scene_hide_bg_layer(BG_LAYER_3);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    func_080303a4(&gClappyTrio->trio);
    
    gClappyTrio->lionClapVolume = 0x80 << 1;
    printer = text_printer_create_new(get_current_mem_id(), 1, 0xf0, 0x1e);
    gClappyTrio->textPrinter = printer;    
    
    text_printer_set_x_y(gClappyTrio->textPrinter, 0, 0x36);
    text_printer_center_by_content(gClappyTrio->textPrinter, TRUE);
    text_printer_set_palette(gClappyTrio->textPrinter, 0);
    text_printer_set_colors(gClappyTrio->textPrinter, 0);
    
    gClappyTrio->textBox = sprite_create(gSpriteHandler, 
        clappy_trio_get_anim(CLAPPY_TRIO_ANIM_TEXT_BOX), 
        0, 
        0x78, 
        0x36, 
        0x47F6, 
        1, 
        0, 
        0x80 << 8
    );
    sprite_set_y(gSpriteHandler, gClappyTrio->textBox, 0x36);

    gClappyTrio->grayscale = 0;
    gClappyTrio->unk3 = 0;
    
    gameplay_set_input_buttons(A_BUTTON, 0);
}

void func_0803068c(u32 playSound) {
    u16 *lions = gClappyTrio->trio.sprite;

    sprite_set_anim(gSpriteHandler, lions[0], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, playSound, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[1], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, playSound, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[2], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, playSound, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, playSound, 0x7f, 0);

    if (!playSound) { 
        play_sound(&s_f_handclap_ready_seqData);
    }
}

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

void clappy_trio_cue_spawn(struct Cue *cue, struct ClappyTrioCue *info, u32 smileAfter) {
    info->unk0_b5 = smileAfter;
}

u32 clappy_trio_cue_update(struct Cue *cue, struct ClappyTrioCue *data, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    }

    return FALSE;
}

void clappy_trio_cue_despawn(void) {
}

#include "asm/engines/clappy_trio/asm_080308f4.s"

void clappy_trio_cue_barely(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *clapAnim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);

    sprite_set_anim(gSpriteHandler, trio->sprite[3], clapAnim, 2, 1, 0x7F, 0);

    play_sound(&s_tebyoushi_pati_seqData);

    beatscript_enable_loops();
}

void clappy_trio_cue_miss(struct Cue *cue, struct ClappyTrioCue *info) {
    struct Trio *trio = &gClappyTrio->trio;
    trio->unk = 1;
    trio->unk7 = 2;
    beatscript_enable_loops();
}

void clappy_trio_input_event(u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *clapAnim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);
    
    sprite_set_anim(gSpriteHandler, trio->sprite[3], clapAnim, 2, 1, 0x7F, 0);

    play_sound(&s_witch_donats_seqData);
    
    trio->unk = 1;
    trio->unk7 = 2;
    
    beatscript_enable_loops();
}

#include "asm/engines/clappy_trio/asm_08030a60.s"

void clappy_trio_common_display_text(char *text) {
    text_printer_set_string(gClappyTrio->textPrinter, text);
}

void func_08030bf0(u32 enabled) {
    sprite_set_visible(gSpriteHandler, gClappyTrio->textBox, enabled);
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
