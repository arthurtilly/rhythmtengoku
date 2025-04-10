#include "engines/clappy_trio.h"
#include "src/text_printer.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.

#define gClappyTrio ((struct ClappyTrioEngineData *)gCurrentEngineData)

enum ClappyTrioBeatAnimationState {
    CLAPPY_TRIO_ANIM_STATE_BEAT,
    CLAPPY_TRIO_ANIM_STATE_GLARE,
    CLAPPY_TRIO_ANIM_STATE_SMILE
};

/* THE CLAPPY TRIO */

// Get Animation
struct Animation *clappy_trio_get_anim(enum ClappyTrioAnimationsEnum anim) {
    struct Animation *animation;
    animation = clappy_trio_anim_table[anim][gClappyTrio->version];

    return animation;
}

// Init. Lion Sprites (https://decomp.me/scratch/kp2vu)
#include "asm/engines/clappy_trio/asm_080303a4.s"

// Graphics Init. 3
void clappy_trio_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

// Graphics Init. 2
void clappy_trio_init_gfx2(void) {
    s32 task;
    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), clappy_trio_gfx_tables[gClappyTrio->version], 0x2000);
    run_func_after_task(task, clappy_trio_init_gfx3, 0);
}

// Graphics Init. 1
void clappy_trio_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), clappy_trio_buffered_textures);
    run_func_after_task(task, clappy_trio_init_gfx2, 0);
}

// Game Engine Start
void clappy_trio_engine_start(u32 ver) {
    struct TextPrinter *printer;

    gClappyTrio->version = ver >> 2; 
    gClappyTrio->isQuartet = ver & 3;
    
    clappy_trio_init_gfx1();
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
    
    gClappyTrio->textBox = sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_TEXT_BOX), 0, 120, 54, 0x47F6, 1, 0, 0x8000);

    sprite_set_y(gSpriteHandler, gClappyTrio->textBox, 54);

    gClappyTrio->grayscale = FALSE;
    gClappyTrio->revertGrayscale = FALSE;
    
    gameplay_set_input_buttons(A_BUTTON, 0);
}

// Engine Event 00 (Crouch)
void clappy_trio_crouch(u32 mute) {
    u16 *lions = gClappyTrio->trio.sprites;

    sprite_set_anim(gSpriteHandler, lions[0], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[1], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[2], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);

    if (!mute) { 
        play_sound(&s_f_handclap_ready_seqData);
    }
}

// Engine Event 01 (Crouch - Smirk)
void clappy_trio_crouch_smirk(u32 mute) {
    u16 *lions = gClappyTrio->trio.sprites;

    sprite_set_anim(gSpriteHandler, lions[0], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_SMIRK), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[1], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_SMIRK), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[2], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_SMIRK), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_SMIRK), 0, mute, 0x7f, 0);

    if (!mute) { 
        play_sound(&s_f_handclap_ready_seqData);
    }
}

void clappy_trio_manual_clap(u32 lion) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *anim;
    s16 sprite;
    u16 volume;

    switch(lion) {
        case 0:
            sprite = trio->sprites[1];
            break;
        case 1:
            sprite = trio->sprites[2];
            break;
        case 2:
            sprite = trio->sprites[3];
            break;
        case 3:
            sprite = trio->sprites[0];
            break;
        default:
            sprite = 0xffff;
            break;
    }

    anim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);
    
    sprite_set_anim(gSpriteHandler, sprite, anim, 0, 1, 0x7f, 0);

    volume = (gClappyTrio->lionClapVolume * 5) >> 3;
    
    play_sound_w_pitch_volume(&s_HC_seqData, volume, INT_TO_FIXED(2.0));
}

// Engine Event 04 (Set Manual Clap Volume)
void clappy_trio_set_clap_volume(u32 volume) {
    gClappyTrio->lionClapVolume = volume;
}

// Engine Event 03 (Enable Grayscale Effect)
void clappy_trio_enable_grayscale(u8 enable) {
    gClappyTrio->grayscale = enable;
}

// Game Engine Update
void clappy_trio_engine_update(void) {
    text_printer_update(gClappyTrio->textPrinter);
}

// Game Engine Stop (Stub)
void clappy_trio_engine_stop(void) {
}

void clappy_trio_cue_spawn(struct Cue *cue, struct ClappyTrioCue *info, u32 smileAfter) {
    info->smileAfter = smileAfter;
}

// Cue - Update
u32 clappy_trio_cue_update(struct Cue *cue, struct ClappyTrioCue *data, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    }

    return FALSE;
}

// Cue - Despawn (Stub)
void clappy_trio_cue_despawn(void) {
}

// Cue - Hit (https://decomp.me/scratch/UAIPR)
#include "asm/engines/clappy_trio/asm_080308f4.s"

// This function works as intended when the Makefile's NONMATCHING is set to 1
/*
void clappy_trio_cue_hit(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;

    sprite_set_anim(gSpriteHandler, trio->sprites[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP), 0, 1, 0x7f, 0);
    play_sound_w_pitch_volume(&s_HC_seqData, 0x100, 0x400);
        
    switch (info->smileAfter) {
        case 1:
            trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_SMILE;
            trio->resetBeatAnimation = 2;
            break;
    }
    
    if (gClappyTrio->grayscale) {
        palette_fade_in(get_current_mem_id(), 10, 8, 0x7fff, clappy_trio_bg_pal[4], BG_PALETTE_BUFFER(0));
        palette_fade_in(get_current_mem_id(), 10, 8, 0x7fff, clappy_trio_bg_pal[1], BG_PALETTE_BUFFER(0x10));
        gClappyTrio->revertGrayscale = TRUE;
    }
}
*/

void clappy_trio_cue_barely(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *clapAnim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);

    sprite_set_anim(gSpriteHandler, trio->sprites[3], clapAnim, 2, 1, 0x7F, 0);

    play_sound(&s_tebyoushi_pati_seqData);

    beatscript_enable_loops();
}

// Cue - Miss
void clappy_trio_cue_miss(struct Cue *cue, struct ClappyTrioCue *info) {
    struct Trio *trio = &gClappyTrio->trio;
    trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_GLARE;
    trio->resetBeatAnimation = 2;
    beatscript_enable_loops();
}

// Input Event
void clappy_trio_input_event(u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *clapAnim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);
    
    sprite_set_anim(gSpriteHandler, trio->sprites[3], clapAnim, 2, 1, 0x7F, 0);

    play_sound(&s_witch_donats_seqData);
    
    trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_GLARE;
    trio->resetBeatAnimation = 2;
    
    beatscript_enable_loops();
}

// Common Event 0 (Beat Animation) (https://decomp.me/scratch/UuWC8)
#include "asm/engines/clappy_trio/asm_08030a60.s"

// This function works as intended when the Makefile's NONMATCHING is set to 1
/*
void clappy_trio_common_beat_animation(void) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *anim;
    
    u32 otherLionsAnimation;
    u32 unk2;
    struct Animation *playerAnimation;
    struct Animation *clapAnimation;

    u32 playerAnimCel;
    u32 playerTotalCels;

    switch (trio->beatAnimation) {
        case 1:
            otherLionsAnimation = CLAPPY_TRIO_ANIM_GLARE;
            break;
        case 2:
            otherLionsAnimation = CLAPPY_TRIO_ANIM_SMILE;
            break;
        default:
            otherLionsAnimation = CLAPPY_TRIO_ANIM_BEAT;
            break;
    }

    anim = clappy_trio_get_anim(otherLionsAnimation);

    trio->resetBeatAnimation--;
    if (!trio->resetBeatAnimation) {
        trio->beatAnimation = CLAPPY_TRIO_ANIM_BEAT;
    }

    sprite_set_anim(gSpriteHandler, trio->sprites[0], anim, 0, 1, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, trio->sprites[1], anim, 0, 1, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, trio->sprites[2], anim, 0, 1, 0x7f, 0);

    playerAnimation = (struct Animation *)sprite_get_data(gSpriteHandler, trio->sprites[3], SPRITE_DATA_ANIMATION);
    clapAnimation = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP);

    unk2 = TRUE;
    if (playerAnimation == clapAnimation) {
        playerTotalCels = sprite_get_data(gSpriteHandler, trio->sprites[3], SPRITE_DATA_TOTAL_CELS);
        playerAnimCel = sprite_get_anim_cel(gSpriteHandler, trio->sprites[3]);

        if (playerAnimCel < playerTotalCels - 1) { 
            unk2 = FALSE;
        }
    }

    if (anim == clappy_trio_get_anim(CLAPPY_TRIO_ANIM_GLARE)) {
        anim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT);
    }

    if (unk2) {
        sprite_set_anim(gSpriteHandler, trio->sprites[3], anim, 0, 1, 0x7f, 0);
    }
    
    if (gClappyTrio->revertGrayscale) { 
        palette_fade_to(get_current_mem_id(), 0x10, 8, clappy_trio_bg_pal[4], clappy_trio_bg_pal[0], BG_PALETTE_BUFFER(0));
        palette_fade_to(get_current_mem_id(), 0x10, 8, clappy_trio_bg_pal[1], clappy_trio_obj_pal[0], BG_PALETTE_BUFFER(0x10));
        gClappyTrio->revertGrayscale = FALSE;
    }
}*/


// Common Event 1 (Display Text)
void clappy_trio_common_display_text(char *text) {
    text_printer_set_string(gClappyTrio->textPrinter, text);
}

// Engine Event 05 (Set Text Box Visibility)
void clappy_trio_textbox_shown(u32 enabled) {
    sprite_set_visible(gSpriteHandler, gClappyTrio->textBox, enabled);
}

// Common Event 2 (Init. Tutorial)
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