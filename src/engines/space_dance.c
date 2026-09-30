#include "engines/space_dance.h"

// For readability.
#define gSpaceDance ((struct SpaceDanceEngineData *)gCurrentEngineData)


/* SPACE DANCE */


// Get Animation
struct Animation *space_dance_get_anim(u32 anim) {
    return space_dance_anim_table[anim][gSpaceDance->version];
}

// Graphics Init. 3
void space_dance_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

// Graphics Init. 2
void space_dance_init_gfx2(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), space_dance_gfx_tables[gSpaceDance->version], 0x2000);
    run_func_after_task(task, space_dance_init_gfx3, 0);
}

// Graphics Init. 1
void space_dance_init_gfx1(void) {
    u32 data;

    func_0800c604(0);
    data = start_new_texture_loader(get_current_mem_id(), space_dance_buffered_textures);
    run_func_after_task(data, space_dance_init_gfx2, 0);
}

// Game Engine Start
void space_dance_engine_start(u32 version) {
    u32 baseTileNum, maxTileRows, i;
    s16 sprite;
    
    gSpaceDance->version = version;
    
    space_dance_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    scene_set_bg_layer_display(BG_LAYER_2, FALSE, 0, 0, 0, 30, 2);

    if (version == 1) {
        scene_show_bg_layer(BG_LAYER_2);
    }

    if (gSpaceDance->version == 1) {
        baseTileNum = 0x380;
    } else {
        baseTileNum = 0x340;
    }

    if (gSpaceDance->version == 1) {
        maxTileRows = 1;
    } else {
        maxTileRows = 2;
    }

    gSpaceDance->font = scene_create_obj_font_printer(baseTileNum, maxTileRows);
    gSpaceDance->textSprite = sprite_create(gSpriteHandler, bmp_font_obj_print_l(gSpaceDance->font, D_0805a8b8, 1, 0xF)->frames, 0, 0x78, 0x20, 0, 0, 0, 0);
    
    for (i = 0; i < SPACE_DANCE_DANCER_AMOUNT; i++) {
        sprite = sprite_create(gSpriteHandler, space_dance_get_anim(SPACE_DANCE_ANIM_DANCER_BEAT), 0, 0x78, 0x78, i * 10 + 0x4800, 1, 0x7f, 0);
        gSpaceDance->dancers[i] = sprite;
        
        sprite_set_x_y(gSpriteHandler, sprite, i * 0x28 + 0x50, 0x88);
        gSpaceDance->dancerBeatTimer[i] = 0;
    }
    
    gSpaceDance->tutorialIconSprite = sprite_create(gSpriteHandler, space_dance_get_anim(SPACE_DANCE_ANIM_TUTORIAL_ICONS), 0, 200, 0x88, 0x47f6, 0, 0, 0);
    gSpaceDance->grampsSprite = sprite_create(gSpriteHandler, space_dance_get_anim(SPACE_DANCE_ANIM_GRAMPS_BEAT), 0, 0x1e, 0x78, 0x479c, 1, 0x7f, 0);

    sprite_set_y(gSpriteHandler, gSpaceDance->grampsSprite, 0x88);

    gSpaceDance->grampsBeatTimer = 0;
    gSpaceDance->grampsPoseAnimEnabled = TRUE;
    gSpaceDance->grampsBeatAnimEnabled = TRUE;
    gSpaceDance->grampsEmoteTimer = 0;
    gSpaceDance->bgScrollY = 0;
    gSpaceDance->bgScrollX = 0;
    gSpaceDance->bgScrollSpeedX = gSpaceDance->bgScrollSpeedY = 0;

    gSpaceDance->blankSprite = sprite_create(gSpriteHandler, space_dance_get_anim(SPACE_DANCE_ANIM_BLANK2), 0, 0x40, 0x40, 0x48c8, 0, 0, 0x8000);
    gSpaceDance->spawnShootingStar = FALSE;
    gSpaceDance->sparkleX = 0x100;
    gSpaceDance->sparkleY = 0x10;

    gameplay_set_input_buttons(A_BUTTON | DPAD_DOWN | DPAD_RIGHT, 0);

    gSpaceDance->unk_35 = 0;
    gSpaceDance->unk_36 = 0;
}

// Engine Event 08 (Stub)
void space_dance_engine_event_stub(void) {
}

// Engine Event 00 (Play Cue)
void space_dance_play_cue_animation(u32 cue) {
    u32 i;
    
    play_sound(space_dancer_sounds[cue]);

    for (i = 0; i < SPACE_DANCE_DANCER_AMOUNT; i++) {
        if (i != 3 || 2 < cue) {       
            sprite_set_anim(gSpriteHandler, gSpaceDance->dancers[i], space_dance_get_anim(space_dancer_anim_map[cue]), 0, 1, 0x7f, 0);
            gSpaceDance->dancerBeatTimer[i] = ticks_to_frames(0x14);
        }
    }

    if (gSpaceDance->grampsPoseAnimEnabled != 0 && gSpaceDance->grampsEmoteTimer == 0) {
        sprite_set_anim(gSpriteHandler,  gSpaceDance->grampsSprite, space_dance_get_anim(space_gramps_anim_map[cue]), 0, 1, 0x7f, 0);
        gSpaceDance->grampsBeatTimer = ticks_to_frames(0x14);
    }
}

// Update Timers
void space_dance_update_timers(void) {
    u32 i;

    for (i = 0; i < SPACE_DANCE_DANCER_AMOUNT; i++) {
        if (gSpaceDance->dancerBeatTimer[i] != 0) {
            gSpaceDance->dancerBeatTimer[i]--;
        }
    }

    if (gSpaceDance->grampsBeatTimer != 0) {
        gSpaceDance->grampsBeatTimer--;
    }

    if (gSpaceDance->grampsEmoteTimer != 0) {
        gSpaceDance->grampsEmoteTimer--;

        if (gSpaceDance->grampsEmoteTimer == 0) {
            sprite_set_anim(gSpriteHandler, gSpaceDance->grampsSprite, space_dance_get_anim(SPACE_DANCE_ANIM_GRAMPS_BEAT), 0x7f, 1, 0x7f, 0);
        }
    } 
}

// Engine Event 05 (Enable Space Gramps Pose Animations)
void space_dance_enable_gramps_pose_anims(u32 enabled) {
    gSpaceDance->grampsPoseAnimEnabled = enabled;
}

// Engine Event 06 (Enable Space Gramps Beat Animations)
void space_dance_enable_gramps_beat_anims(u32 enabled) {
    gSpaceDance->grampsBeatAnimEnabled = enabled;
}

// Engine Event 07 (Play Gramps Animation)
void space_dance_play_gramps_animation(u32 arg0) {
    if (gSpaceDance->grampsBeatTimer == 0) {
        gSpaceDance->grampsEmoteTimer = 0;
        sprite_set_anim(gSpriteHandler, gSpaceDance->grampsSprite, space_dance_get_anim(space_gramps_anim_map[arg0]), 0, 1, 0, 0);
    }
}

// Engine Event 01 (Set BG Scroll Speed)
void space_dance_set_bg_scroll_speed(u32 speed) {
    gSpaceDance->bgScrollSpeedX = speed;
    gSpaceDance->bgScrollSpeedY = speed >> 8;
}

// Update BG Scroll
void space_dance_update_bg_scroll(void) {
    gSpaceDance->bgScrollX += gSpaceDance->bgScrollSpeedX;
    gSpaceDance->bgScrollY += gSpaceDance->bgScrollSpeedY;

    D_03004b10.BG_OFS[1].x = gSpaceDance->bgScrollX >> 2;
    D_03004b10.BG_OFS[1].y = gSpaceDance->bgScrollY >> 2;
    D_03004b10.BG_OFS[2].x = gSpaceDance->bgScrollX >> 2;
    D_03004b10.BG_OFS[2].y = gSpaceDance->bgScrollY >> 2;
} 

// Engine Event 02 (Set Tutorial Icon)
void space_dance_set_tutorial_icon(u32 icon) {
    sprite_set_anim_cel(gSpriteHandler, gSpaceDance->tutorialIconSprite, icon);
}

// Engine Event 03 (Spawn Shooting Star)
void space_dance_spawn_shooting_star(void) {
    gSpaceDance->spawnShootingStar = TRUE;
}

// Updating Sparkles/Shooting Star
void space_dance_update_sparkles(void) {
    if (gSpaceDance->spawnShootingStar != FALSE) {
        sprite_create(gSpriteHandler, space_dance_get_anim(SPACE_DANCE_ANIM_SPARKLE), 0, gSpaceDance->sparkleX, gSpaceDance->sparkleY, 0x48d2, 1, 0, 3);
        gSpaceDance->sparkleX -= 0x18;
        gSpaceDance->sparkleY += 6;

        sprite_set_visible(gSpriteHandler, gSpaceDance->blankSprite, TRUE);
        sprite_set_x_y(gSpriteHandler, gSpaceDance->blankSprite, gSpaceDance->sparkleX, gSpaceDance->sparkleY);

        if (gSpaceDance->sparkleX < -0x10) {
            gSpaceDance->spawnShootingStar = FALSE;
        } 
    }
}

// Engine Event 04 (?)
// (this boolean seems to do something with sound and i'm currently in school so i can't really test it lol)
void func_0803d588(u32 arg0) {
    gSpaceDance->unk_35 = arg0;
}

// Game Engine Update
void space_dance_engine_update(void) {
    space_dance_update_timers();
    space_dance_update_bg_scroll();
    space_dance_update_sparkles();

    if (gSpaceDance->unk_36 != 0) {
        gSpaceDance->unk_36--;
    }
}

// Game Engine Stop (Stub)
void space_dance_engine_stop(void) {
}

// Cue - Spawn
void space_dance_cue_spawn(struct Cue *cue, struct SpaceDanceCue *info, u32 move) {
    info->pose = move;
}

// Cue - Update
u32 space_dance_cue_update(struct Cue *cue, struct SpaceDanceCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x30) ) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// Cue - Despawn
void space_dance_cue_despawn(struct Cue *cue, struct SpaceDanceCue *info) {
}

// Reset Input Buttons
void space_dance_reset_input_buttons(void) {
    gameplay_set_input_buttons(A_BUTTON | DPAD_DOWN | DPAD_RIGHT, 0);
}

// Cue - Hit
void space_dance_cue_hit(struct Cue *cue, struct SpaceDanceCue *info, u32 pressed, u32 released) {
    s16 sprite = gSpaceDance->dancers[3];
    //struct Animation *anim = 
    
    sprite_set_anim(gSpriteHandler, sprite, space_dance_get_anim(space_dance_cue_anim_map[info->pose]), 0, 1, 0x7f, 0);
    
    gSpaceDance->dancerBeatTimer[3] = ticks_to_frames(0x14);
    
    gameplay_set_input_buttons(0, 0);

    schedule_function_call(get_current_mem_id(), space_dance_reset_input_buttons, 0, ticks_to_frames(0x14));
}

// Space Gramps Raise Brow
void space_dance_gramps_raise_brow(u32 arg0) {
    if (gSpaceDance->grampsEmoteTimer == 0) {
        sprite_set_anim(gSpriteHandler, gSpaceDance->grampsSprite, space_dance_get_anim(SPACE_DANCE_ANIM_GRAMPS_RAISE_BROW), arg0, 1, 0x7f, 0);
        gSpaceDance->grampsEmoteTimer = ticks_to_frames(0x24);
    }
}

// Space Gramps Frown
void space_dance_gramps_frown(u32 arg0) {
    sprite_set_anim(gSpriteHandler, gSpaceDance->grampsSprite, space_dance_get_anim(SPACE_DANCE_ANIM_GRAMPS_FROWN), arg0, 1, 0x7f, 0);

    gSpaceDance->grampsEmoteTimer = ticks_to_frames(0x24);
}

// Cue - Barely
void space_dance_cue_barely(struct Cue *cue, struct SpaceDanceCue *info, u32 pressed, u32 released) {
    space_dance_cue_hit(cue, info, pressed, released);
    space_dance_gramps_raise_brow(0);
}

// Cue - Miss
void space_dance_cue_miss(struct Cue *cue, struct SpaceDanceCue *info) {
    s16 playerSprite = gSpaceDance->dancers[3];
    
    sprite_set_anim(gSpriteHandler, playerSprite, space_dance_get_anim(SPACE_DANCE_ANIM_DANCER_HURT), 0, 1, 0x7f, 0);
    gSpaceDance->dancerBeatTimer[3] = ticks_to_frames(0x14);

    sprite_create(gSpriteHandler, space_dance_get_anim(SPACE_DANCE_ANIM_HURT_EFFECT), 0, 200, space_dance_hurt_effect_y_pos[info->pose], 0x4819, 1, 0, 3);
    
    gameplay_set_input_buttons(0, 0);
    schedule_function_call(get_current_mem_id(), space_dance_reset_input_buttons, 0, ticks_to_frames(0x10));
    
    space_dance_gramps_frown(0);
    beatscript_enable_loops();

    stop_sound(&s_space_kou_right_seqData);
    stop_sound(&s_space_kou_down_seqData);
    stop_sound(&s_space_kou_punch_seqData);
    stop_sound(&s_space_ikeo_right_seqData);
    stop_sound(&s_space_ikeo_down_seqData);
    stop_sound(&s_space_ikeo_punch_seqData);
    play_sound(&s_witch_donats_seqData);
}

// Reset Input Buttons (declared twice?)
void space_dance_reset_input_buttons_2(void) {
    gameplay_set_input_buttons(A_BUTTON | DPAD_DOWN | DPAD_RIGHT, 0);
}

// Input Event
void space_dance_input_event(u32 pressed, u32 released) {
    struct Animation *poseAnim = NULL;

    if (pressed & A_BUTTON) {
        poseAnim = space_dance_get_anim(SPACE_DANCE_ANIM_DANCER_PUNCH);
    }

    if (pressed & DPAD_RIGHT) {
        poseAnim = space_dance_get_anim(SPACE_DANCE_ANIM_DANCER_RIGHT);
    }

    if (pressed & DPAD_DOWN) {
        poseAnim = space_dance_get_anim(SPACE_DANCE_ANIM_DANCER_DOWN);
    }

    if (poseAnim != NULL) {
        sprite_set_anim(gSpriteHandler, gSpaceDance->dancers[3], poseAnim, 0, 1, 0x7f, 0);
        gSpaceDance->dancerBeatTimer[3] = ticks_to_frames(0x14);

        gameplay_set_input_buttons(0, 0);
        schedule_function_call(get_current_mem_id(), space_dance_reset_input_buttons_2, 0, ticks_to_frames(0x14));

        play_sound(&s_tebyoushi_pati_seqData);

        if (gSpaceDance->unk_35 != 0 && gSpaceDance->unk_36 == 0) {
            play_sound_w_pitch_volume(&s_warai_solo_seqData, 0x40, 0);
            gSpaceDance->unk_36 = ticks_to_frames(0x30);
        }
    }

    beatscript_enable_loops();
}

// Common Event 0 (Beat Animation)
void space_dance_common_beat_animation(void) {
    u32 i;

    for (i = 0; i < SPACE_DANCE_DANCER_AMOUNT; i++) {
        if (gSpaceDance->dancerBeatTimer[i] == 0) {
            sprite_set_anim(gSpriteHandler, gSpaceDance->dancers[i], space_dance_get_anim(SPACE_DANCE_ANIM_DANCER_BEAT), 0, 1, 0x7f, 0);
        }
    }

    if (gSpaceDance->grampsBeatTimer == 0 && gSpaceDance->grampsBeatAnimEnabled != 0 && gSpaceDance->grampsEmoteTimer == 0) {
        sprite_set_anim(gSpriteHandler, gSpaceDance->grampsSprite, space_dance_get_anim(SPACE_DANCE_ANIM_GRAMPS_BEAT), 0, 1, 0x7f, 0);
    }
}

// Common Event 1 (Display Text)
void space_dance_common_display_text(const char *text) {
    struct PrintedTextAnim *textAnim;
    
    if (text == NULL) {
        sprite_set_visible(gSpriteHandler, gSpaceDance->textSprite, FALSE);
    } else {
        delete_bmp_font_obj_text_anim(gSpaceDance->font, gSpaceDance->textSprite);
        textAnim = bmp_font_obj_print_c(gSpaceDance->font, text, 1, 0xc);
        
        sprite_set_anim(gSpriteHandler, gSpaceDance->textSprite, textAnim->frames, 0, 0, 0, 0);
        sprite_set_visible(gSpriteHandler, gSpaceDance->textSprite, TRUE);
    }
}

// Common Event 0 (Init. Tutorial, Unimplemented)
void space_dance_common_init_tutorial(void) {
}
