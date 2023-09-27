#include "engines/sneaky_spirits.h"

#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gSneakySpirits ((struct SneakySpiritsEngineData *)gCurrentEngineData)


/* SNEAKY SPIRITS */


// Engine Event 00 (Show Ghost)
void sneaky_spirits_show_ghost(u32 position) {
    s16 ghostSprite;
    s32 x, y;

    x = math_lerp(8, 88, position, gSneakySpirits->maxSteps - 1);
    y = math_lerp(80, 76, position, gSneakySpirits->maxSteps - 1);
    y += (0x100 - gSneakySpirits->ghostHeight) >> 3;
    ghostSprite = gSneakySpirits->ghostWalk;

    func_0804d5d4(D_03005380, ghostSprite, x, y);
    func_0804d770(D_03005380, ghostSprite, 1);
    func_0804cebc(D_03005380, ghostSprite, 0);
    func_0804dcb8(D_03005380, ghostSprite, INT_TO_FIXED(get_beatscript_tempo()) / 100u);
    func_0804d614(D_03005380, gSneakySpirits->ghostMask, x);
    play_sound_w_pitch_volume(&s_ghost_walk_seqData, (gSneakySpirits->ghostHeight * 15) >> 5, 0);
}


// Initialise Rain
void sneaky_spirits_init_rain(void) {
    u32 i;

    for (i = 0; i < SNEAKY_SPIRITS_RAIN_DROP_AMOUNT; i++) {
        gSneakySpirits->rainDrops[i] = func_0804d160(D_03005380, anim_sneaky_spirits_rain, 0, 120, 80, 0x800, 0, 0, 0x8000);
    }
    for (i = 0; i < SNEAKY_SPIRITS_RAIN_SPLASH_AMOUNT; i++) {
        gSneakySpirits->rainSplashes[i] = func_0804d160(D_03005380, anim_sneaky_spirits_splash, 0, 64, 64, 0x8400, 0, 0, 0x8002);
    }

    gSneakySpirits->rainDropNext = 0;
    gSneakySpirits->rainSplashNext = 0;
    gSneakySpirits->rainSlow = FALSE;
    gSneakySpirits->freezeRain = FALSE;
    gSneakySpirits->tree = func_0804d160(D_03005380, anim_sneaky_spirits_tree, 0, 223, 76, 0x4f00, 1, 0, 0);
}


// Update Rain
void sneaky_spirits_update_fast_rain(void) {
    u32 i;
    s16 sprite;

    for (i = 0; i < 4; i++) {
        sprite = gSneakySpirits->rainDrops[gSneakySpirits->rainDropNext];
        func_0804d8f8(D_03005380, sprite, anim_sneaky_spirits_rain, 0, 1, 0, 2);
        func_0804d5d4(D_03005380, sprite, agb_random(240), agb_random(64) + 48);
        func_0804d770(D_03005380, sprite, 1);

        gSneakySpirits->rainDropNext += 1;
        if (gSneakySpirits->rainDropNext >= SNEAKY_SPIRITS_RAIN_DROP_AMOUNT) {
            gSneakySpirits->rainDropNext = 0;
        }
    }

    for (i = 0; i < 4; i++) {
        sprite = gSneakySpirits->rainSplashes[gSneakySpirits->rainSplashNext];
        func_0804cebc(D_03005380, sprite, 0);
        func_0804d5d4(D_03005380, sprite, agb_random(240), agb_random(50) + 110);
        func_0804d770(D_03005380, sprite, 1);

        gSneakySpirits->rainSplashNext += 1;
        if (gSneakySpirits->rainSplashNext >= SNEAKY_SPIRITS_RAIN_SPLASH_AMOUNT) {
            gSneakySpirits->rainSplashNext = 0;
        }
    }
}


// Update Rain If Not In Slow-Motion
void sneaky_spirits_update_rain(void) {
    if (!gSneakySpirits->rainSlow) sneaky_spirits_update_fast_rain();
}


// Set Rain Speed
void sneaky_spirits_set_rain_speed(u32 slowMotion) {
    u32 i;
    u32 animSpeed;
    s16 sprite;

    if (gSneakySpirits->rainSlow == slowMotion) return;
    gSneakySpirits->rainSlow = slowMotion;

    if (slowMotion) {
        for (i = 0; i < SNEAKY_SPIRITS_RAIN_DROP_AMOUNT; i++) {
            sprite = gSneakySpirits->rainDrops[i];
            animSpeed = (!gSneakySpirits->freezeRain) ? INT_TO_FIXED(1.0) / (agb_random(3) + 1) : 0;

            func_0804d8f8(D_03005380, sprite, anim_sneaky_spirits_rain_slow, 0, 1, 0x7f, 0);
            func_0804d5d4(D_03005380, sprite, agb_random(240), agb_random(160));
            func_0804dcb8(D_03005380, sprite, animSpeed);
            func_0804d770(D_03005380, sprite, 1);
        }

        for (i = 0; i < SNEAKY_SPIRITS_RAIN_SPLASH_AMOUNT; i++) {
            sprite = gSneakySpirits->rainSplashes[i];
            func_0804da20(D_03005380, sprite, TRUE);
        }

        func_0804da20(D_03005380, gSneakySpirits->tree, TRUE);
    }

    else {
        for (i = 0; i < SNEAKY_SPIRITS_RAIN_DROP_AMOUNT; i++) {
            sprite = gSneakySpirits->rainDrops[i];

            func_0804d770(D_03005380, sprite, 0);
            func_0804dcb8(D_03005380, sprite, INT_TO_FIXED(1.0));
        }

        for (i = 0; i < SNEAKY_SPIRITS_RAIN_SPLASH_AMOUNT; i++) {
            sprite = gSneakySpirits->rainSplashes[i];
            func_0804da20(D_03005380, sprite, FALSE);
        }

        func_0804da20(D_03005380, gSneakySpirits->tree, FALSE);
    }
}


// Engine Event 06 (Set Rain Speed)
void sneaky_spirits_event_set_rain_speed(u32 slowMotion) {
    sneaky_spirits_set_rain_speed(slowMotion);
}


// Engine Event 07 (Freeze Slow-Motion Rain)
void sneaky_spirits_freeze_slow_rain(u32 freezeRain) {
    gSneakySpirits->freezeRain = freezeRain;
}


// Graphics Init. 3
void sneaky_spirits_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// Graphics Init. 2
void sneaky_spirits_init_gfx2(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), sneaky_spirits_gfx_tables[gSneakySpirits->version], 0x2000);
    run_func_after_task(task, sneaky_spirits_init_gfx3, 0);
}


// Graphics Init. 1
void sneaky_spirits_init_gfx1(void) {
    u32 data;

    func_0800c604(0);
    data = start_new_texture_loader(get_current_mem_id(), sneaky_spirits_buffered_textures);
    run_func_after_task(data, sneaky_spirits_init_gfx2, 0);
}


// Game Engine Start
void sneaky_spirits_engine_start(u32 version) {
    struct PrintedTextAnim *textAnim;

    gSneakySpirits->version = version;
    sneaky_spirits_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, 2);

    gSneakySpirits->unk0 = scene_create_obj_font_printer(0x380, 1);
    textAnim = bmp_font_obj_print_c(gSneakySpirits->unk0, D_08059f90, 0, 0);
    gSneakySpirits->text = func_0804d160(D_03005380, textAnim->frames, 0, 120, 32, 0, 0, 0, 0);
    sneaky_spirits_init_rain();

    gSneakySpirits->bow = func_0804d160(D_03005380, anim_sneaky_spirits_bow, 0, 210, 128, 0x4800, 0, 0, 0x8000);
    gSneakySpirits->arrowReady = FALSE;

    gSneakySpirits->door = func_0804d160(D_03005380, anim_sneaky_spirits_door, 0, 72, 48, 0x8800, 0, 0, 0);
    gSneakySpirits->backWall = func_0804d160(D_03005380, anim_sneaky_spirits_back_wall, 0, 24, 45, 0x879c, 0, 0, 0);

    gSneakySpirits->ghostWalk = func_0804d160(D_03005380, anim_sneaky_spirit_walk, 0, 16, 80, 0x8792, 1, 0, 2);
    func_0804d5d4(D_03005380, gSneakySpirits->ghostWalk, -100, -100);
    gSneakySpirits->ghostMask = func_0804d160(D_03005380, anim_sneaky_spirits_wall_mask, 0, 88, 140, 0x8791, 1, 0, 0);
    gSneakySpirits->ghostHit = func_0804d160(D_03005380, anim_sneaky_spirit_hit, 0, 100, 76, 0x87a6, 0, 0, 0x8000);
    gSneakySpirits->maxSteps = 7;
    gSneakySpirits->tutorialGhost = func_0804d160(D_03005380, anim_sneaky_spirit_tutorial, 0, 120, 92, 0x8792, 1, 0x7f, 0x8000);
    gSneakySpirits->ghostHeight = 0x100;

    gSneakySpirits->rainChannel = NULL;

    gameplay_set_input_buttons(0, 0);
    gSneakySpirits->slowMotionHit = TRUE;
    if (version == SNEAKY_SPIRITS_VERSION_REMIX) {
        gSneakySpirits->slowMotionHit = FALSE;
    }
}


// Engine Event 0A (Stub)
void sneaky_spirits_engine_event_stub(void) {
}


// Engine Event 01 (Set Next Vertical Position)
void sneaky_spirits_set_ghost_height(u32 height) {
    gSneakySpirits->ghostHeight = height;
    scene_start_integer_interp(1, ticks_to_frames(0xc), &D_030053c0.musicVolume, D_030053c0.musicVolume, height);
}


// Engine Event 02 (Spawn Bow)
void sneaky_spirits_spawn_bow(void) {
    scene_set_sprite_motion_decelerate(gSneakySpirits->bow, 290, 128, 210, 128, 230);
    func_0804d770(D_03005380, gSneakySpirits->bow, 1);
}


// Engine Event 03 (Draw Bow)
void sneaky_spirits_draw_bow(void) {
    if (!gSneakySpirits->arrowReady) {
        gSneakySpirits->arrowReady = TRUE;
        gameplay_set_input_buttons(A_BUTTON, 0);
        func_0804d8f8(D_03005380, gSneakySpirits->bow, anim_sneaky_spirits_bow, 0, 1, 0x7f, 0);
    }
}


// Engine Event 04 (Play Wind/Rain SFX)
void sneaky_spirits_enable_wind_sfx(u32 play) {
    if (!play && (gSneakySpirits->rainChannel != NULL)) {
        set_soundplayer_volume(gSneakySpirits->rainChannel, 0);
        stop_soundplayer(gSneakySpirits->rainChannel);
        gSneakySpirits->rainChannel = NULL;
    }
    else if (play) {
        gSneakySpirits->rainChannel = play_sound(&s_ghost_rain_seqData);
    }
}


// Cross-Fade Music and Wind/Rain SFX
void sneaky_spirits_update_wind_sfx(void) {
    u32 rainVolume;

    if (gSneakySpirits->rainChannel == NULL) return;

    rainVolume = clamp_int32((INT_TO_FIXED(1.0) - D_030053c0.musicVolume) / 2, INT_TO_FIXED(0.0), INT_TO_FIXED(0.5)) + INT_TO_FIXED(0.25);
    set_soundplayer_volume(gSneakySpirits->rainChannel, rainVolume);
}


// Engine Event 05 (Display Text)
void sneaky_spirits_display_text(char *string) {
    struct PrintedTextAnim *textAnim;

    delete_bmp_font_obj_text_anim(gSneakySpirits->unk0, gSneakySpirits->text);
    textAnim = bmp_font_obj_print_c(gSneakySpirits->unk0, string, 1, 0xc);
    func_0804d8f8(D_03005380, gSneakySpirits->text, textAnim->frames, 0, 1, 0, 0);
}


// Engine Event 08 (Display Tutorial Sneaky Spirit)
void sneaky_spirits_display_tutorial_ghost(u32 playAnim) {
    func_0804d770(D_03005380, gSneakySpirits->tutorialGhost, playAnim);
}


// Engine Event 09 (Animate Tutorial Sneaky Spirit)
void sneaky_spirits_animate_tutorial_ghost(u32 frame) {
    func_0804cebc(D_03005380, gSneakySpirits->tutorialGhost, frame);
}


// Game Engine Update
void sneaky_spirits_engine_update(void) {
    sneaky_spirits_update_rain(); // Update Rain
    sneaky_spirits_update_wind_sfx(); // Update Wind/Rain SFX
}


// Game Engine Close
void sneaky_spirits_engine_stop(void) {
    set_beatscript_speed(INT_TO_FIXED(1.0));
    scene_set_music_pitch_env(0);
    scene_set_music_track_volume(0, 0);
}


// Cue - Spawn
void sneaky_spirits_cue_spawn(struct Cue *cue, struct SneakySpiritsCue *info, u32 disableTaunt) {
    info->disableTaunt = disableTaunt;
}


// Cue - Update
u32 sneaky_spirits_cue_update(struct Cue *cue, struct SneakySpiritsCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x30)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void sneaky_spirits_cue_despawn(struct Cue *cue, struct SneakySpiritsCue *info) {
}


// Revert Slow-Motion Effects
void sneaky_spirits_stop_slow_motion(void) {
    func_0800c604(0);

    if (gSneakySpirits->slowMotionHit) {
        set_beatscript_speed(0x100);   // Reset Game Speed
        scene_set_music_pitch_env(0);       // Reset Music Pitch
        scene_set_music_track_volume(0, 0);    // Reset Music Channel Volume
    }

    func_0804d770(D_03005380, gSneakySpirits->ghostHit, 0);
    func_0804dae0(D_03005380, gSneakySpirits->door, -1, 0, 0);
    func_0804cebc(D_03005380, gSneakySpirits->door, 3);
    sneaky_spirits_set_rain_speed(FALSE);
    func_0804d8f8(D_03005380, gSneakySpirits->bow, anim_sneaky_spirits_bow_shoot, 0, 1, 0x7f, 0);
    func_0804dcb8(D_03005380, gSneakySpirits->ghostWalk, INT_TO_FIXED(get_beatscript_tempo()) / 100u);
}


// Cue - Hit
void sneaky_spirits_cue_hit(struct Cue *cue, struct SneakySpiritsCue *info, u32 pressed, u32 released) {
    u32 duration;
    s8 targetX, targetY;
    u32 totalFrames;
    s32 task;

    if (gSneakySpirits->slowMotionHit) {
        set_beatscript_speed(0x40);        // Set Game Speed (0x40 = 0.25; Default = 0x100)
        scene_set_music_pitch_env(-0xc00);      // Set Music Pitch (-0xc00 = -12 semitones; Default = 0)
        scene_set_music_track_volume((1 << 9), 0); // Set Music Channel 9 Volume to 0

        duration = ticks_to_frames(0x16) - gameplay_get_last_hit_offset();
        targetX = 68;
        targetY = 60;
    } else {
        duration = ticks_to_frames(0x30) - gameplay_get_last_hit_offset();
        targetX = 84;
        targetY = 68;
    }

    totalFrames = (u16) func_0804ddb0(D_03005380, gSneakySpirits->ghostHit, 2);
    func_0804cebc(D_03005380, gSneakySpirits->ghostHit, agb_random(totalFrames));
    func_0804d770(D_03005380, gSneakySpirits->ghostHit, 1);
    task = scene_set_sprite_motion_lerp(gSneakySpirits->ghostHit, 100, 76, targetX, targetY, duration);
    run_func_after_task(task, sneaky_spirits_stop_slow_motion, 0);

    func_0804dae0(D_03005380, gSneakySpirits->door, 1, 0x7f, 0);
    func_0804cebc(D_03005380, gSneakySpirits->door, 1);

    sneaky_spirits_set_rain_speed(TRUE);

    gSneakySpirits->arrowReady = FALSE;
    gameplay_set_input_buttons(0, 0);
    func_0804d8f8(D_03005380, gSneakySpirits->bow, anim_sneaky_spirits_bow_shoot, 3, 0, 0, 0);

    play_sound(&s_f_aim_just_hit_seqData);
    play_sound(&s_f_aim_just_hit_voice_seqData);

    func_0804d160(D_03005380, anim_sneaky_spirit_hit_effect, 0, 128, 90, 0x8792, 1, 0, 3);
}


// Cue - Barely
void sneaky_spirits_cue_barely(struct Cue *cue, struct SneakySpiritsCue *info, u32 pressed, u32 released) {
    gSneakySpirits->arrowReady = FALSE;
    gameplay_set_input_buttons(0, 0);
    func_0804d8f8(D_03005380, gSneakySpirits->bow, anim_sneaky_spirits_bow_shoot, 0, 1, 0x7f, 0);

    func_0804d160(D_03005380, anim_sneaky_spirits_arrow_miss, 0, 70, 58, 0x8792, 1, 0x7f, 3);
    if (gameplay_get_last_hit_offset() < 0) {
        func_0804d160(D_03005380, anim_sneaky_spirit_scared_early, 0, 122, 94, 0x8792, 1, 0, 3);
    } else {
        func_0804d160(D_03005380, anim_sneaky_spirit_scared_late, 0, 122, 94, 0x8792, 1, 0, 3);
    }
    play_sound(&s_ghost_miss_hit_seqData);
}


// Cue - Miss
void sneaky_spirits_cue_miss(struct Cue *cue, struct SneakySpiritsCue *info) {
    func_0804d160(D_03005380, anim_sneaky_spirit_dash, 0, 120, 92, 0x8792, 1, 0, 3);

    if (!info->disableTaunt) {
        func_0804d160(D_03005380, anim_sneaky_spirit_taunt, 0, 160, 105, 0x8792, 1, 0, 3);
        schedule_function_call(get_current_mem_id(), play_sound, (u32)&s_ghost_warai_seqData, ticks_to_frames(0x0C));
    }

    play_sound(&s_ghost_dash_seqData);
}


// Input Event
void sneaky_spirits_input_event(u32 pressed, u32 released) {
    if (!gSneakySpirits->arrowReady) return;

    gSneakySpirits->arrowReady = FALSE;
    gameplay_set_input_buttons(0, 0);
    func_0804d8f8(D_03005380, gSneakySpirits->bow, anim_sneaky_spirits_bow_shoot, 0, 1, 0x7f, 0);
    func_0804d160(D_03005380, anim_sneaky_spirits_arrow_miss, 0, 70, 58, 0x8792, 1, 0x7f, 3);
    play_sound(&s_ghost_gosha_seqData);
}


// Common Event 0 (Beat Animation, Unimplemented)
void sneaky_spirits_common_beat_animation(void) {
}


// Common Event 1 (Display Text, Unimplemented)
void sneaky_spirits_common_display_text(void) {
}
