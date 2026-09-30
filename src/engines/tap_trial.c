#include "engines/tap_trial.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gTapTrial ((struct TapTrialEngineData *)gCurrentEngineData)


/* TAP TRIAL */


struct Animation *tap_trial_get_anim(u32 anim) {
    return tap_trial_anim_table[anim][gTapTrial->version];
}

void tap_trial_play_girl_action(u32 action) {
    u32 unk = 0;
    struct TapTrialAction *girlAction = &tap_trial_girl_action_table[gTapTrial->version][action];
    s16 girlSprite = gTapTrial->unk_8;
    s32 x;
    
    gTapTrial->unk_10 = action;
    
    if (-1 < girlAction->animID) {
        sprite_set_anim(
            gSpriteHandler, 
            girlSprite, 
            tap_trial_get_anim(girlAction->animID), 
            girlAction->playbackArg1,
            girlAction->playbackArg2,
            girlAction->playbackArg3,
            girlAction->playbackArg4
        );
    }

    if (action == 10) {
        unk = 1;
        schedule_function_call(get_current_mem_id(), tap_trial_play_girl_action, 0xd, ticks_to_frames(0x6));
    }

    if (action == 0xb) {
        unk = 1;
    }

    if (unk != 0) {
        x = sprite_get_data(gSpriteHandler, girlSprite, SPRITE_DATA_X_POS);
        scene_move_sprite_sine_wave(girlSprite, x, 0x73, 0x28, ticks_to_frames(0x18));
    }

    gTapTrial->unk_a = ticks_to_frames(girlAction->duration);
}

#include "asm/engines/tap_trial/asm_0803db30.s"

void tap_trial_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

void tap_trial_init_gfx2(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), tap_trial_gfx_tables[gTapTrial->version], 0x2000);
    run_func_after_task(data, tap_trial_init_gfx3, 0);
}

void tap_trial_init_gfx1(void) {
    u32 data;

    func_0800c604(0);
    data = start_new_texture_loader(get_current_mem_id(), tap_trial_buffered_textures);
    run_func_after_task(data, tap_trial_init_gfx2, 0);
}

void func_0803dd84(s16 sprite) {
    sprite_set_origin_x_y(gSpriteHandler, sprite, &D_03004b10.BG_OFS[1].x, &D_03004b10.BG_OFS[1].y);
}

void tap_trial_engine_start(u32 version) {
    struct PrintedTextAnim *textAnim;
    s32 unk, unk2, unk3;
    gTapTrial->version = version;

    if (version == ENGINE_VER_TAP_TRIAL_RANDOM) {
        gTapTrial->version = agb_random(5);
    }

    tap_trial_init_gfx1();
    scene_show_obj_layer();

    scene_set_bg_layer_display(BG_LAYER_0, TRUE, 0, 0, 0, 28, 3);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 2);
    scene_set_bg_layer_display(BG_LAYER_2, FALSE, 0, 0, 0, 30, 0);
    scene_set_bg_layer_display(BG_LAYER_3, TRUE, 0, 0, 0, 31, 3);

    D_03004b10.BLDMOD = 0x841;
    D_03004b10.COLEV = 0x1000;

    gTapTrial->font = scene_create_obj_font_printer(0x340, 2);

    textAnim = bmp_font_obj_print_c(gTapTrial->font, D_0805a8bc, 1, 0xf);
    gTapTrial->textSprite = sprite_create(gSpriteHandler, textAnim->frames, 0, 0x5a, 0x3c, 0, 0, 0, 0);

    gTapTrial->unk_e = 0xa0;
    gTapTrial->unk_8 = sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRL_BEAT), 0, gTapTrial->unk_e, 0x73, 0x4800, 1, 0x7f, 0);

    gTapTrial->unk_a = 0;
    gTapTrial->unk_c = 0;

    func_0803dd84(gTapTrial->unk_8);

    func_0803dd84(sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_SHADOW), 0, gTapTrial->unk_e, 0x73, 0x480a, 0, 0, 0));

    gTapTrial->unk_12[0] = sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_MONKEY_BEAT), 0, 0x6e, 0x73, 0x47f6, 1, 0x7f, 0);
    gTapTrial->unk_12[1] = sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_MONKEY_BEAT), 0, 0x46, 0x73, 0x47f6, 1, 0x7f, 0);

    func_0803dd84(gTapTrial->unk_12[0]);
    func_0803dd84(gTapTrial->unk_12[1]);

    gTapTrial->unk_16 = 0;

    func_0803dd84(sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_SHADOW), 0, 0x6e, 0x73, 0x4800, 0, 0, 0));
    func_0803dd84(sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_SHADOW), 0, 0x46, 0x73, 0x4800, 0, 0, 0));

    gTapTrial->unk_18 = sprite_create(gSpriteHandler, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRAFFE_BEDAZZLED), 0, 0, 0x78, 0x4864, 0, 0, 0);
    sprite_set_x_y(gSpriteHandler, gTapTrial->unk_18, -56, 0);

    textAnim = bmp_font_obj_print_c(gTapTrial->font, D_0805a8bc, 1, 0xf);
    gTapTrial->unk_1a = sprite_create(gSpriteHandler, textAnim->frames, 0, 0x78, 0x86, 0, 0, 0, 0);
    gTapTrial->unk_1c = 0;
    gTapTrial->unk_1e = 0;

    init_drumtech(&gTapTrial->drumtech);

    // why does this work???
    
    unk = gTapTrial->unk_374;
    unk2 = gTapTrial->unk_378;
    unk3 = gTapTrial->unk_37c;
    
    gTapTrial->unk_38c = 0;
    gTapTrial->unk_37c = 0;
    gTapTrial->unk_378 = 0;
    gTapTrial->unk_374 = 0; 

    unk = gTapTrial->unk_380;
    unk2 = gTapTrial->unk_384;
    unk3 = gTapTrial->unk_388;
    
    gTapTrial->unk_390 = 0;
    gTapTrial->unk_388 = 0;
    gTapTrial->unk_384 = 0;
    gTapTrial->unk_380 = 0;
    gTapTrial->unk_394 = 0;

    gameplay_set_input_buttons(A_BUTTON, 0);
} 

void tap_trial_engine_event_stub(void) {
}

void func_0803e08c(void) {
    func_0800c604(0);

    if (gTapTrial->unk_1e != 0) {
        beatscript_enable_loops();
    } else {
        beatscript_disable_loops();
    }

    gTapTrial->unk_1e = 0;
}

void func_0803e0bc(u32 arg0) {
    beatscript_enable_loops();
    schedule_function_call(get_current_mem_id(), func_0803e08c, 0, ticks_to_frames(arg0));

    gTapTrial->unk_1e = 0;
}

void func_0803e0f8(void) {
    gTapTrial->unk_1e = 0;
    gTapTrial->unk_20 = 0;
}

void func_0803e10c(u32 arg0) {
    if (arg0 != 0) {
        scene_set_sprite_motion_decelerate(gTapTrial->unk_18, -56, 0xb0, 0, 0x78, 0xdc);
    } else {
        scene_set_sprite_motion_decelerate(gTapTrial->unk_18, 0, 0x78, -56, 0xb0, 0xdc);
    }
}

void func_0803e160(void) {
    if (gTapTrial->unk_1c == 0) {
        sprite_set_anim(gSpriteHandler, gTapTrial->unk_18, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRAFFE_BEDAZZLED), 0, 1, 0, 0);
        func_0803e258(0);
    }
}

void func_0803e1a4(u32 arg0) {
    if (gTapTrial->unk_1c != 0) {
        return;
    }

    if (gTapTrial->unk_1e != 0) {
        return;
    }

    if (gTapTrial->unk_20 > arg0) {
        return;
    }
    
    sprite_set_anim(gSpriteHandler, gTapTrial->unk_18, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRAFFE_NEUTRAL), 0, 1, 0, 0);
    func_0803e258(D_089e8054[agb_random(5)]);
}

void func_0803e208(void) {
    if (gTapTrial->unk_1c == 0) {
        sprite_set_anim(gSpriteHandler, gTapTrial->unk_18, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRAFFE_DISAPPOINTED), 0, 1, 0x7f, 0);
        gTapTrial->unk_1c = ticks_to_frames(0x30);
        func_0803e258(0);
    }
}

void func_0803e258(char* text) {
    struct PrintedTextAnim *textAnim;
    
    if (text == NULL) {
        sprite_set_visible(gSpriteHandler, gTapTrial->unk_1a, FALSE);
        scene_hide_bg_layer(BG_LAYER_2);
    } else {
        textAnim = bmp_font_obj_print_c(gTapTrial->font, text, 1, 0xc);
        delete_bmp_font_obj_text_anim(gTapTrial->font, gTapTrial->unk_1a);
        sprite_set_anim(gSpriteHandler, gTapTrial->unk_1a, textAnim->frames, 0, 0, 0, 0);
        sprite_set_visible(gSpriteHandler, gTapTrial->unk_1a, TRUE);
        scene_show_bg_layer(BG_LAYER_2);
    }
}

void func_0803e2e0(u32 arg0) {
    gTapTrial->unk_378 = arg0;
}

void func_0803e2f4(s32 arg0) {
    gTapTrial->unk_38c = arg0 < 0 ? -arg0 : arg0;
}

void func_0803e310(u32 arg0) {
    gTapTrial->unk_37c = arg0;
}

void func_0803e324(u32 arg0) {
    gTapTrial->unk_384 = arg0;
}

void func_0803e338(s32 arg0) {
    gTapTrial->unk_390 = arg0 < 0 ? -arg0 : arg0;
}

void func_0803e354(u32 arg0) {
    gTapTrial->unk_388 = arg0;
}

void func_0803e368(void) {
    s32 unk;
    s32 unk3;
    s32 unk4;
    
    gTapTrial->unk_378 = clamp_int32(gTapTrial->unk_378 + gTapTrial->unk_37c, -gTapTrial->unk_38c, gTapTrial->unk_38c);

    gTapTrial->unk_374 += gTapTrial->unk_378;
    D_03004b10.BG_OFS[0].x = gTapTrial->unk_374 >> 8;
    D_03004b10.BG_OFS[3].x = gTapTrial->unk_374 >> 8;

    gTapTrial->unk_384 = clamp_int32(gTapTrial->unk_384 + gTapTrial->unk_388, -gTapTrial->unk_390, gTapTrial->unk_390);
    
    gTapTrial->unk_380 += gTapTrial->unk_384;
    D_03004b10.BG_OFS[0].y = gTapTrial->unk_380 >> 8;
    D_03004b10.BG_OFS[3].y = gTapTrial->unk_380 >> 8;

    unk3 = (gTapTrial->unk_384 < 0 ? -gTapTrial->unk_384 : gTapTrial->unk_384) << 4;
    unk4 = gTapTrial->unk_390 < 0 ? -gTapTrial->unk_390 : gTapTrial->unk_390;
    
    unk = unk3 / unk4;
    D_03004b10.COLEV = (0x10 - unk) * 0x100 | unk;
}

void func_0803e420(u32 arg0) {
    gTapTrial->unk_378 *= arg0;
    gTapTrial->unk_378 >>= 8;
    gTapTrial->unk_384 *= arg0;
    gTapTrial->unk_384 >>= 8;
}

void func_0803e448(void) {
}

void func_0803e44c(void) {
    if (gTapTrial->unk_394 != 0) {
        gTapTrial->unk_394--;
        D_03004b10.BG_OFS[1].y = D_089e8068[gTapTrial->unk_394];
    }
}

void func_0803e48c(void) {
    if (gTapTrial->unk_a != 0) {
        gTapTrial->unk_a--;
    }
}

void func_0803e4a4(void) {
    if (gTapTrial->unk_16 != 0) {
        gTapTrial->unk_16--;
    }
}

void func_0803e4bc(void) {
    if (gTapTrial->unk_1c != 0) {
        gTapTrial->unk_1c--;

        if (gTapTrial->unk_1c == 0) {
            func_0803e160();
        }
    }
}

void tap_trial_engine_update(void) {
    func_0803e48c();
    func_0803e4a4();
    func_0803e4bc();
    func_0803e368();
    update_drumtech();
}

void tap_trial_engine_stop(void) {
    D_03004b10.BLDMOD = 0;
}

void tap_trial_cue_spawn(struct Cue *cue, struct TapTrialCue *info, u32 param) {
}

u32 tap_trial_cue_update(struct Cue *cue, struct TapTrialCue *info, u32 runningTime, u32 released) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void tap_trial_cue_despawn(struct Cue *cue, struct TapTrialCue *info) {
}

void tap_trial_cue_hit(struct Cue *cue, struct TapTrialCue *info, u32 pressed, u32 released) {
    func_0803e644();
    gTapTrial->unk_394 = 5;
}

void tap_trial_cue_barely(struct Cue *cue, struct TapTrialCue *info, u32 pressed, u32 released) {
    func_0803e644();
    stop_sound(&s_f_tap_tap_seqData);
    play_sound(&s_tebyoushi_pati_seqData);

    gTapTrial->unk_20++;
    func_0803e420(0xc8);
}

void tap_trial_cue_miss(struct Cue *cue, struct TapTrialCue *info) {
    gTapTrial->unk_1e++;

    switch(gTapTrial->unk_10) {
        case 0xd:
            sprite_set_anim(gSpriteHandler, gTapTrial->unk_8, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRL_MISS_CROUCH), 0, 1, 0x7f, 0);
            gTapTrial->unk_10 = 0xe;
            gTapTrial->unk_a = ticks_to_frames(0x24);
            play_sound(&s_f_tap_miss1_seqData);
            break;
        case 0xb:
            sprite_set_anim(gSpriteHandler, gTapTrial->unk_8, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRL_MISS_POSE), 0, 1, 0x7f, 0);
            gTapTrial->unk_10 = 0xb;
            gTapTrial->unk_a = ticks_to_frames(0x24);
            play_sound(&s_f_tap_miss2_seqData);
            break;
    }

    func_0803e208();
    gTapTrial->unk_1c = ticks_to_frames(0x30);
    func_0803e420(0x20);
}

void func_0803e644(void) {
    s32 unk = -1;

    switch (gTapTrial->unk_10) {
        case 0:
        case 2:
        case 4:
            unk = 4;
            break;
        case 1:
        case 3:
        case 5:
            unk = 5;
            break;
        case 7:
        case 8:
            unk = 6;
            break;
        case 6:
            unk = 7;
            break;
        case 0xd:
            unk = 0xe;
            break;
        case 0xb:
            unk = 0xc;
            break;
    }

    if (unk < 0) {
        return;
    }

    tap_trial_play_girl_action(unk);
    play_sound(&s_f_tap_tap_seqData);
}

#include "asm/engines/tap_trial/asm_0803e6d0.s"

void tap_trial_common_beat_animation(void) {
    if (gTapTrial->unk_a == 0) {
        sprite_set_anim(gSpriteHandler, gTapTrial->unk_8, tap_trial_get_anim(TAP_TRIAL_ANIM_GIRL_BEAT), 0, 1, 0x7f, 0);
    }

    if (gTapTrial->unk_16 == 0) {
        sprite_set_anim(gSpriteHandler, gTapTrial->unk_12[0], tap_trial_get_anim(TAP_TRIAL_ANIM_MONKEY_BEAT), 0, 1, 0x7f, 0);
        sprite_set_anim(gSpriteHandler, gTapTrial->unk_12[1], tap_trial_get_anim(TAP_TRIAL_ANIM_MONKEY_BEAT), 0, 1, 0x7f, 0);
    }
}

void tap_trial_common_display_text(const char *text) {
    struct PrintedTextAnim *textAnim;

    if (text == NULL) {
        sprite_set_visible(gSpriteHandler, gTapTrial->textSprite, FALSE);
    } else {
        textAnim = bmp_font_obj_print_c(gTapTrial->font, text, 1, 13);
        delete_bmp_font_obj_text_anim(gTapTrial->font, gTapTrial->textSprite);
        sprite_set_anim(gSpriteHandler, gTapTrial->textSprite, textAnim->frames, 0, 0, 0, 0);
        sprite_set_visible(gSpriteHandler, gTapTrial->textSprite, TRUE);
    }
}
