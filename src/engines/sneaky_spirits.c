#include "engines/sneaky_spirits.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804c870.h"

// For readability.
#define gSneakySpiritsInfo ((struct SneakySpiritsInfo *)D_030055d0)


/* SNEAKY SPIRITS */


// [func_0801ee98] ENGINE Func_00 - Appear At Position
void func_0801ee98(u32 position) {
    s16 ghostSprite;
    s32 x, y;

    x = func_08008f04(8, 88, position, gSneakySpiritsInfo->maxSteps - 1);
    y = func_08008f04(80, 76, position, gSneakySpiritsInfo->maxSteps - 1);
    y += (0x100 - gSneakySpiritsInfo->ghostHeight) >> 3;
    ghostSprite = gSneakySpiritsInfo->ghostWalk;

    func_0804d5d4(D_03005380, ghostSprite, x, y);
    func_0804d770(D_03005380, ghostSprite, 1);
    func_0804cebc(D_03005380, ghostSprite, 0);
    func_0804dcb8(D_03005380, ghostSprite, (get_beatscript_tempo() << 8) / 100);
    func_0804d614(D_03005380, gSneakySpiritsInfo->ghostMask, x);
    play_sound_w_pitch_volume(&s_ghost_walk_seqData, (gSneakySpiritsInfo->ghostHeight * 15) >> 5, 0);
}


// [func_0801ef70] Initialise Rain
void func_0801ef70(void) {
    u32 i;

    for (i = 0; i < 30; i++) {
        gSneakySpiritsInfo->rainDrops[i] = func_0804d160(D_03005380, sneaky_spirits_anim12, 0, 120, 80, 0x800, 0, 0, 0x8000);
    }
    for (i = 0; i < 20; i++) {
        gSneakySpiritsInfo->rainSplashes[i] = func_0804d160(D_03005380, sneaky_spirits_anim13, 0, 64, 64, 0x8400, 0, 0, 0x8002);
    }

    gSneakySpiritsInfo->rainDropNext = 0;
    gSneakySpiritsInfo->rainSplashNext = 0;
    gSneakySpiritsInfo->rainSlow = FALSE;
    gSneakySpiritsInfo->freezeRain = FALSE;
    gSneakySpiritsInfo->tree = func_0804d160(D_03005380, sneaky_spirits_anim08, 0, 223, 76, 0x4f00, 1, 0, 0);
}


// [func_0801f040] Update Rain
void func_0801f040(void) {
    u32 i;
    s16 sprite;

    for (i = 0; i < 4; i++) {
        sprite = gSneakySpiritsInfo->rainDrops[gSneakySpiritsInfo->rainDropNext];
        func_0804d8f8(D_03005380, sprite, sneaky_spirits_anim12, 0, 1, 0, 2);
        func_0804d5d4(D_03005380, sprite, agb_random(240), agb_random(64) + 48);
        func_0804d770(D_03005380, sprite, 1);

        gSneakySpiritsInfo->rainDropNext += 1;
        if (gSneakySpiritsInfo->rainDropNext >= 30) {
            gSneakySpiritsInfo->rainDropNext = 0;
        }
    }

    for (i = 0; i < 4; i++) {
        sprite = gSneakySpiritsInfo->rainSplashes[gSneakySpiritsInfo->rainSplashNext];
        func_0804cebc(D_03005380, sprite, 0);
        func_0804d5d4(D_03005380, sprite, agb_random(240), agb_random(50) + 110);
        func_0804d770(D_03005380, sprite, 1);

        gSneakySpiritsInfo->rainSplashNext += 1;
        if (gSneakySpiritsInfo->rainSplashNext >= 20) {
            gSneakySpiritsInfo->rainSplashNext = 0;
        }
    }
}


// [func_0801f17c] Update Rain If Not In Slow-Motion
void func_0801f17c(void) {
    if (!gSneakySpiritsInfo->rainSlow) func_0801f040();
}


// [func_0801f194] Set Rain Speed
void func_0801f194(u32 slowMotion) {
    u32 i, temp;
    s16 sprite;

    if (gSneakySpiritsInfo->rainSlow == slowMotion) return;
    gSneakySpiritsInfo->rainSlow = slowMotion;

    if (slowMotion) {
        for (i = 0; i < 30; i++) {
            sprite = gSneakySpiritsInfo->rainDrops[i];
            temp = (!gSneakySpiritsInfo->freezeRain) ? 0x100 / (agb_random(3) + 1) : 0;

            func_0804d8f8(D_03005380, sprite, sneaky_spirits_anim14, 0, 1, 0x7f, 0);
            func_0804d5d4(D_03005380, sprite, agb_random(240), agb_random(160));
            func_0804dcb8(D_03005380, sprite, temp);
            func_0804d770(D_03005380, sprite, 1);
        }

        for (i = 0; i < 20; i++) {
            sprite = gSneakySpiritsInfo->rainSplashes[i];
            func_0804da20(D_03005380, sprite, 1);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo->tree, 1);
    }

    else {
        for (i = 0; i < 30; i++) {
            sprite = gSneakySpiritsInfo->rainDrops[i];

            func_0804d770(D_03005380, sprite, 0);
            func_0804dcb8(D_03005380, sprite, 0x100);
        }

        for (i = 0; i < 20; i++) {
            sprite = gSneakySpiritsInfo->rainSplashes[i];
            func_0804da20(D_03005380, sprite, 0);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo->tree, 0);
    }
}


// [func_0801f30c] ENGINE Func_06 - Set Rain Speed (Tutorial)
void func_0801f30c(u32 slowMotion) {
    func_0801f194(slowMotion);
}


// [func_0801f318] ENGINE Func_07 - Freeze Slow-Motion Rain (Tutorial)
void func_0801f318(u32 freezeRain) {
    gSneakySpiritsInfo->freezeRain = freezeRain;
}


// [func_0801f328] GFX_INIT Func_02
void func_0801f328(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0801f338] GFX_INIT Func_01
void func_0801f338(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), sneaky_spirits_gfx_tables[gSneakySpiritsInfo->version], 0x2000);
    task_run_after(task, func_0801f328, 0);
}


// [func_0801f378] GFX_INIT Func_00
void func_0801f378(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(get_current_mem_id(), sneaky_spirits_buffered_textures);
    task_run_after(data, func_0801f338, 0);
}


// [func_0801f3a4] MAIN - Init
void func_0801f3a4(u32 ver) {
    struct Animation *textAnim;

    gSneakySpiritsInfo->version = ver;
    func_0801f378();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, 2);

    gSneakySpiritsInfo->unk0 = func_0800c660(0x380, 1);
    textAnim = func_08004b98(gSneakySpiritsInfo->unk0, D_08059f90, 0, 0);
    gSneakySpiritsInfo->text = func_0804d160(D_03005380, textAnim, 0, 120, 32, 0, 0, 0, 0);
    func_0801ef70();

    gSneakySpiritsInfo->bow = func_0804d160(D_03005380, sneaky_spirits_anim00, 0, 210, 128, 0x4800, 0, 0, 0x8000);
    gSneakySpiritsInfo->arrowReady = FALSE;

    gSneakySpiritsInfo->door = func_0804d160(D_03005380, sneaky_spirits_anim03, 0, 72, 48, 0x8800, 0, 0, 0);
    gSneakySpiritsInfo->backWall = func_0804d160(D_03005380, sneaky_spirits_anim02, 0, 24, 45, 0x879c, 0, 0, 0);

    gSneakySpiritsInfo->ghostWalk = func_0804d160(D_03005380, sneaky_spirits_anim10, 0, 16, 80, 0x8792, 1, 0, 2);
    func_0804d5d4(D_03005380, gSneakySpiritsInfo->ghostWalk, -100, -100);
    gSneakySpiritsInfo->ghostMask = func_0804d160(D_03005380, sneaky_spirits_anim16, 0, 88, 140, 0x8791, 1, 0, 0);
    gSneakySpiritsInfo->ghostHit = func_0804d160(D_03005380, sneaky_spirits_anim01, 0, 100, 76, 0x87a6, 0, 0, 0x8000);
    gSneakySpiritsInfo->maxSteps = 7;
    gSneakySpiritsInfo->tutorialGhost = func_0804d160(D_03005380, sneaky_spirits_anim19, 0, 120, 92, 0x8792, 1, 0x7f, 0x8000);
    gSneakySpiritsInfo->ghostHeight = 0x100;

    gSneakySpiritsInfo->rainChannel = NULL;

    gameplay_set_input_buttons(0, 0);
    gSneakySpiritsInfo->slowMotionHit = TRUE;
    if (ver == SNEAKY_SPIRITS_VERSION_REMIX) {
        gSneakySpiritsInfo->slowMotionHit = FALSE;
    }
}


// [func_0801f5bc] ENGINE Func_10 - Unknown (STUB, Unused)
void func_0801f5bc(void) {
}


// [func_0801f5c0] ENGINE Func_01 - Next Vertical Position
void func_0801f5c0(u32 height) {
    gSneakySpiritsInfo->ghostHeight = height;
    func_0800c4b0(1, beats_to_ticks(0xc), &D_030053c0.musicVolume, D_030053c0.musicVolume, height);
}


// [func_0801f5f4] ENGINE Func_02 - Bow Appear
void func_0801f5f4(void) {
    func_0800e25c(gSneakySpiritsInfo->bow, 290, 128, 210, 128, 230);
    func_0804d770(D_03005380, gSneakySpiritsInfo->bow, 1);
}


// [func_0801f638] ENGINE Func_03 - Draw Bow
void func_0801f638(void) {
    if (!gSneakySpiritsInfo->arrowReady) {
        gSneakySpiritsInfo->arrowReady = TRUE;
        gameplay_set_input_buttons(A_BUTTON, 0);
        func_0804d8f8(D_03005380, gSneakySpiritsInfo->bow, sneaky_spirits_anim00, 0, 1, 0x7f, 0);
    }
}


// [func_0801f684] ENGINE Func_04 - Play Wind/Rain SFX
void func_0801f684(u32 play) {
    if (!play && (gSneakySpiritsInfo->rainChannel != NULL)) {
        set_soundplayer_volume(gSneakySpiritsInfo->rainChannel, 0);
        stop_soundplayer(gSneakySpiritsInfo->rainChannel);
        gSneakySpiritsInfo->rainChannel = NULL;
    }
    else if (play) {
        gSneakySpiritsInfo->rainChannel = play_sound(&s_ghost_rain_seqData);
    }
}


// [func_0801f6d0] Cross-Fade Music and Wind/Rain SFX
void func_0801f6d0(void) {
    u32 rainVolume;

    if (gSneakySpiritsInfo->rainChannel == NULL) return;

    rainVolume = func_080087d4((0x100 - D_030053c0.musicVolume) / 2, 0, 128) + 0x40;
    set_soundplayer_volume(gSneakySpiritsInfo->rainChannel, rainVolume);
}


// [func_0801f71c] ENGINE Func_05 - Display Text (Tutorial)
void func_0801f71c(char *string) {
    func_08007b04(gSneakySpiritsInfo->unk0, gSneakySpiritsInfo->text);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo->text, func_08004b98(gSneakySpiritsInfo->unk0, string, 1, 0xc), 0, 1, 0, 0);
}


// [func_0801f76c] ENGINE Func_08 - Display Dashing Sneaky Spirit (Tutorial)
void func_0801f76c(u32 playAnim) {
    func_0804d770(D_03005380, gSneakySpiritsInfo->tutorialGhost, playAnim);
}


// [func_0801f794] ENGINE Func_09 - Animate Dashing Sneaky Spirit (Tutorial)
void func_0801f794(u32 frame) {
    func_0804cebc(D_03005380, gSneakySpiritsInfo->tutorialGhost, frame);
}


// [func_0801f7bc] MAIN - Update
void func_0801f7bc(void) {
    func_0801f17c(); // Update Rain
    func_0801f6d0(); // Update Wind/Rain SFX
}


// [func_0801f7cc] MAIN - Close
void func_0801f7cc(void) {
    set_beatscript_speed(0x100);
    beatscript_scene_set_music_pitch_env(0);
    beatscript_scene_set_music_track_volume(0, 0);
}


// [func_0801f7e8] CUE - Spawn
void func_0801f7e8(struct Cue *cue, struct SneakySpiritsCue *info, u32 disableTaunt) {
    info->disableTaunt = disableTaunt;
}


// [func_0801f7f0] CUE - Update
u32 func_0801f7f0(struct Cue *cue, struct SneakySpiritsCue *info, u32 runningTime, u32 duration) {
    if (runningTime > beats_to_ticks(0x30)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// [func_0801f80c] CUE - Despawn (STUB)
void func_0801f80c(struct Cue *cue, struct SneakySpiritsCue *info) {
}


// [func_0801f810] Revert Slow-Motion Effects
void func_0801f810(void) {
    func_0800c604(0);

    if (gSneakySpiritsInfo->slowMotionHit) {
        set_beatscript_speed(0x100);   // Reset Game Speed
        beatscript_scene_set_music_pitch_env(0);       // Reset Music Pitch
        beatscript_scene_set_music_track_volume(0, 0);    // Reset Music Channel Volume
    }

    func_0804d770(D_03005380, gSneakySpiritsInfo->ghostHit, 0);
    func_0804dae0(D_03005380, gSneakySpiritsInfo->door, -1, 0, 0);
    func_0804cebc(D_03005380, gSneakySpiritsInfo->door, 3);
    func_0801f194(FALSE);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo->bow, sneaky_spirits_anim15, 0, 1, 0x7f, 0);
    func_0804dcb8(D_03005380, gSneakySpiritsInfo->ghostWalk, (get_beatscript_tempo() << 8) / 100);
}


// [func_0801f8d0] CUE - Hit
void func_0801f8d0(struct Cue *cue, struct SneakySpiritsCue *info, u32 pressed, u32 released) {
    u32 duration;
    s8  xVel;
    s8  yVel;
    u32 temp;

    if (gSneakySpiritsInfo->slowMotionHit) {
        set_beatscript_speed(0x40);        // Set Game Speed (0x40 = 0.25; Default = 0x100)
        beatscript_scene_set_music_pitch_env(-0xc00);      // Set Music Pitch (-0xc00 = -12 semitones; Default = 0)
        beatscript_scene_set_music_track_volume((1 << 9), 0); // Set Music Channel 9 Volume to 0

        duration = beats_to_ticks(0x16) - gameplay_get_last_hit_offset();
        xVel = 68;
        yVel = 60;
    } else {
        duration = beats_to_ticks(0x30) - gameplay_get_last_hit_offset();
        xVel = 84;
        yVel = 68;
    }

    temp = (u16) func_0804ddb0(D_03005380, gSneakySpiritsInfo->ghostHit, 2);
    func_0804cebc(D_03005380, gSneakySpiritsInfo->ghostHit, agb_random(temp));
    func_0804d770(D_03005380, gSneakySpiritsInfo->ghostHit, 1);
    temp = func_0800e3e4(gSneakySpiritsInfo->ghostHit, 100, 76, xVel, yVel, duration);
    task_run_after(temp, func_0801f810, 0);

    func_0804dae0(D_03005380, gSneakySpiritsInfo->door, 1, 0x7f, 0);
    func_0804cebc(D_03005380, gSneakySpiritsInfo->door, 1);

    func_0801f194(TRUE);

    gSneakySpiritsInfo->arrowReady = FALSE;
    gameplay_set_input_buttons(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo->bow, sneaky_spirits_anim15, 3, 0, 0, 0);

    play_sound(&s_f_aim_just_hit_seqData);
    play_sound(&s_f_aim_just_hit_voice_seqData);

    func_0804d160(D_03005380, sneaky_spirits_anim18, 0, 128, 90, 0x8792, 1, 0, 3);
}


// [func_0801fa4c] CUE - Barely
void func_0801fa4c(struct Cue *cue, struct SneakySpiritsCue *info, u32 pressed, u32 released) {
    gSneakySpiritsInfo->arrowReady = FALSE;
    gameplay_set_input_buttons(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo->bow, sneaky_spirits_anim15, 0, 1, 0x7f, 0);

    func_0804d160(D_03005380, sneaky_spirits_anim06, 0, 70, 58, 0x8792, 1, 0x7f, 3);
    if (gameplay_get_last_hit_offset() < 0) {
        func_0804d160(D_03005380, sneaky_spirits_anim07, 0, 122, 94, 0x8792, 1, 0, 3);
    } else {
        func_0804d160(D_03005380, sneaky_spirits_anim17, 0, 122, 94, 0x8792, 1, 0, 3);
    }
    play_sound(&s_ghost_miss_hit_seqData);
}


// [func_0801fb14] CUE - Miss
void func_0801fb14(struct Cue *cue, struct SneakySpiritsCue *info, u32 pressed, u32 released) {
    func_0804d160(D_03005380, sneaky_spirits_anim11, 0, 120, 92, 0x8792, 1, 0, 3);

    if (!info->disableTaunt) {
        func_0804d160(D_03005380, sneaky_spirits_anim05, 0, 160, 105, 0x8792, 1, 0, 3);
        func_0800856c(get_current_mem_id(), play_sound, (u32)&s_ghost_warai_seqData, beats_to_ticks(0x0C));
    }

    play_sound(&s_ghost_dash_seqData);
}


// [func_0801fbb0] MAIN - Input Event
void func_0801fbb0(u32 pressed, u32 released) {
    if (!gSneakySpiritsInfo->arrowReady) return;

    gSneakySpiritsInfo->arrowReady = FALSE;
    gameplay_set_input_buttons(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo->bow, sneaky_spirits_anim15, 0, 1, 0x7f, 0);
    func_0804d160(D_03005380, sneaky_spirits_anim06, 0, 70, 58, 0x8792, 1, 0x7f, 3);
    play_sound(&s_ghost_gosha_seqData);
}


// [func_0801fc3c] COMMON Func_00 - STUB
void func_0801fc3c(void) {
}


// [func_0801fc40] COMMON Func_01 - STUB
void func_0801fc40(void) {
}
