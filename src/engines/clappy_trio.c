#include "engines/clappy_trio.h"
#include "src/text_printer.h"


struct Animation *clappy_trio_get_anim(s32 anim) {
    return clappy_trio_anim_table[anim][gClappyTrio->version];
}


#define CLAPPY_TRIO_SPACING 48
#define CLAPPY_TRIO_Y_POS 136
void clappy_trio_init_sprites(struct Trio *trio) {
    s32 offset;
    s32 signCel;
    s16 halfSpacing = CLAPPY_TRIO_SPACING / 2;
    s16 spacing = CLAPPY_TRIO_SPACING;

    trio->sprites[0] = sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, 64, 64, 0x4800, 1, 0x7f, 0);

    switch (gClappyTrio->isQuartet) {
        case TRUE:
            offset = halfSpacing;
            signCel = 1;
            break;
        default:
            offset = 0;
            sprite_set_visible(gSpriteHandler, trio->sprites[0], FALSE);
            signCel = 0;
            break;
    }

    sprite_set_x_y(gSpriteHandler, trio->sprites[0], offset - (halfSpacing - spacing), CLAPPY_TRIO_Y_POS);

    trio->sprites[1] = sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, SCREEN_CENTER_X - CLAPPY_TRIO_SPACING + offset, CLAPPY_TRIO_Y_POS, 0x4800, 1, 0x7f, 0);
    trio->sprites[2] = sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, SCREEN_CENTER_X                       + offset, CLAPPY_TRIO_Y_POS, 0x4800, 1, 0x7f, 0);
    trio->sprites[3] = sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, SCREEN_CENTER_X + CLAPPY_TRIO_SPACING + offset, CLAPPY_TRIO_Y_POS, 0x4800, 1, 0x7f, 0);

    trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_BEAT;
    trio->resetBeatAnimation = 1;

    sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_YOU),  0,       SCREEN_CENTER_X + CLAPPY_TRIO_SPACING + offset, 152, 0x4800, 0, 0, 0);
    sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_SIGN), signCel, SCREEN_CENTER_X, 56, 0x4800, 0, 0, 0);
}


void clappy_trio_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


void clappy_trio_init_gfx2(void) {
    func_0800c604(0);
    run_func_after_task(func_08002ee0(get_current_mem_id(), clappy_trio_gfx_tables[gClappyTrio->version], 0x2000), clappy_trio_init_gfx3, 0);
}


void clappy_trio_init_gfx1(void) {
    func_0800c604(0);
    run_func_after_task(start_new_texture_loader(get_current_mem_id(), clappy_trio_buffered_textures), clappy_trio_init_gfx2, 0);
}


void clappy_trio_engine_start(u32 version) {
    gClappyTrio->version = version >> 2;
    gClappyTrio->isQuartet = version & 3;

    clappy_trio_init_gfx1();
    scene_show_obj_layer();

    scene_hide_bg_layer(BG_LAYER_0);
    scene_hide_bg_layer(BG_LAYER_2);
    scene_hide_bg_layer(BG_LAYER_3);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    clappy_trio_init_sprites(&gClappyTrio->trio);

    gClappyTrio->lionClapVolume = INT_TO_FIXED(1.0);
    gClappyTrio->textPrinter = text_printer_create_new(get_current_mem_id(), 1, 240, 30);

    text_printer_set_x_y(gClappyTrio->textPrinter, 0, 54);
    text_printer_center_by_content(gClappyTrio->textPrinter, TRUE);
    text_printer_set_palette(gClappyTrio->textPrinter, 0);
    text_printer_set_colors(gClappyTrio->textPrinter, 0);

    gClappyTrio->textBox = sprite_create(gSpriteHandler, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_TEXT_BOX), 0, 120, 54, 0x47f6, 1, 0, 0x8000);

    sprite_set_y(gSpriteHandler, gClappyTrio->textBox, 54);

    gClappyTrio->grayscale = FALSE;
    gClappyTrio->revertGrayscale = FALSE;

    gameplay_set_input_buttons(A_BUTTON, 0);
}


void clappy_trio_crouch(u32 mute) {
    s16 *lions = gClappyTrio->trio.sprites;

    sprite_set_anim(gSpriteHandler, lions[0], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[1], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[2], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, lions[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT), 0, mute, 0x7f, 0);

    if (!mute) {
        play_sound(&s_f_handclap_ready_seqData);
    }
}


void clappy_trio_crouch_smirk(u32 mute) {
    s16 *lions = gClappyTrio->trio.sprites;

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
    s16 sprite;
    u8_8 volume;

    switch (lion) {
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
            sprite = -1;
            break;
    }

    sprite_set_anim(gSpriteHandler, sprite, clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP), 0, 1, 0x7f, 0);

    volume = (gClappyTrio->lionClapVolume * 5) >> 3;
    play_sound_w_pitch_volume(&s_HC_seqData, volume, INT_TO_FIXED(2.0));
}


void clappy_trio_set_clap_volume(u24_8 volume) {
    gClappyTrio->lionClapVolume = volume;
}


void clappy_trio_enable_grayscale(u32 enable) {
    gClappyTrio->grayscale = enable;
}


void clappy_trio_engine_update(void) {
    text_printer_update(gClappyTrio->textPrinter);
}


void clappy_trio_engine_stop(void) {
}


void clappy_trio_cue_spawn(struct Cue *cue, struct ClappyTrioCue *info, u32 smileAfter) {
    info->smileAfter = smileAfter;
}


u32 clappy_trio_cue_update(struct Cue *cue, struct ClappyTrioCue *data, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(120)) {
        return TRUE;
    }

    return FALSE;
}


void clappy_trio_cue_despawn(void) {
}


void clappy_trio_cue_hit(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;

    sprite_set_anim(gSpriteHandler, trio->sprites[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP), 0, 1, 0x7f, 0);
    play_sound_w_pitch_volume(&s_HC_seqData, INT_TO_FIXED(1.0), INT_TO_FIXED(4.0));

    switch (info->smileAfter) {
        case TRUE:
            trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_SMILE;
            trio->resetBeatAnimation = 2;
            break;
    }

    if (gClappyTrio->grayscale) {
        palette_fade_in(get_current_mem_id(), 10, 8, COLOR_WHITE, clappy_trio_grayscale_bg_pal[0],  BG_PALETTE_BUFFER(0));
        palette_fade_in(get_current_mem_id(), 10, 8, COLOR_WHITE, clappy_trio_grayscale_obj_pal[0], BG_PALETTE_BUFFER(0x10));
        gClappyTrio->revertGrayscale = TRUE;
    }
}


void clappy_trio_cue_barely(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;

    sprite_set_anim(gSpriteHandler, trio->sprites[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP), 2, 1, 0x7f, 0);
    play_sound(&s_tebyoushi_pati_seqData);

    beatscript_enable_loops();
}


void clappy_trio_cue_miss(struct Cue *cue, struct ClappyTrioCue *info) {
    struct Trio *trio = &gClappyTrio->trio;

    trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_GLARE;
    trio->resetBeatAnimation = 2;

    beatscript_enable_loops();
}


void clappy_trio_input_event(u32 pressed, u32 released) {
    struct Trio *trio = &gClappyTrio->trio;

    sprite_set_anim(gSpriteHandler, trio->sprites[3], clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP), 2, 1, 0x7f, 0);
    play_sound(&s_witch_donats_seqData);

    trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_GLARE;
    trio->resetBeatAnimation = 2;

    beatscript_enable_loops();
}


void clappy_trio_common_beat_animation(void) {
    struct Trio *trio = &gClappyTrio->trio;
    struct Animation *anim;
    s32 otherLionsAnimation;
    s32 updatePlayer;
    u32 playerTotalCels;

    switch (trio->beatAnimation) {
        case CLAPPY_TRIO_ANIM_STATE_GLARE:
            otherLionsAnimation = CLAPPY_TRIO_ANIM_GLARE;
            break;
        case CLAPPY_TRIO_ANIM_STATE_SMILE:
            otherLionsAnimation = CLAPPY_TRIO_ANIM_SMILE;
            break;
        default:
            otherLionsAnimation = CLAPPY_TRIO_ANIM_BEAT;
            break;
    }

    anim = clappy_trio_get_anim(otherLionsAnimation);
    trio->resetBeatAnimation--;
    if (!trio->resetBeatAnimation) {
        trio->beatAnimation = CLAPPY_TRIO_ANIM_STATE_BEAT;
    }

    sprite_set_anim(gSpriteHandler, trio->sprites[0], anim, 0, 1, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, trio->sprites[1], anim, 0, 1, 0x7f, 0);
    sprite_set_anim(gSpriteHandler, trio->sprites[2], anim, 0, 1, 0x7f, 0);

    updatePlayer = TRUE;
    if (sprite_get_anim(gSpriteHandler, trio->sprites[3]) == clappy_trio_get_anim(CLAPPY_TRIO_ANIM_CLAP)) {
        playerTotalCels = sprite_get_total_cels(gSpriteHandler, trio->sprites[3]);
        if (sprite_get_anim_cel(gSpriteHandler, trio->sprites[3]) < playerTotalCels - 1) {
            updatePlayer = FALSE;
        }
    }

    if (anim == clappy_trio_get_anim(CLAPPY_TRIO_ANIM_GLARE)) {
        anim = clappy_trio_get_anim(CLAPPY_TRIO_ANIM_BEAT);
    }

    if (updatePlayer) {
        sprite_set_anim(gSpriteHandler, trio->sprites[3], anim, 0, 1, 0x7f, 0);
    }

    if (gClappyTrio->revertGrayscale) {
        palette_fade_to(get_current_mem_id(), 16, 8, clappy_trio_grayscale_bg_pal[0],  clappy_trio_bg_pal[0],  BG_PALETTE_BUFFER(0));
        palette_fade_to(get_current_mem_id(), 16, 8, clappy_trio_grayscale_obj_pal[0], clappy_trio_obj_pal[0], BG_PALETTE_BUFFER(0x10));
        gClappyTrio->revertGrayscale = FALSE;
    }
}


void clappy_trio_common_display_text(char *text) {
    text_printer_set_string(gClappyTrio->textPrinter, text);
}


void clappy_trio_textbox_shown(u32 enabled) {
    sprite_set_visible(gSpriteHandler, gClappyTrio->textBox, enabled);
}


void clappy_trio_common_init_tutorial(struct Scene *skipDestination) {
    if (skipDestination) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDestination);
        gameplay_set_skip_icon(1, TRUE);
    } else {
        gameplay_enable_tutorial(FALSE);
        gameplay_set_skip_icon(0, FALSE);
    }
}
