#include "src/engines/sneaky_spirits.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/code_08016e18.h"
#include "src/lib_0804c870.h"

// For readability.
#define gSneakySpiritsInfo D_030055d0->gameInfo.sneakySpirits


/* SNEAKY SPIRITS */


// [func_0801ee98] ENGINE Func_00 - Appear At Position
void func_0801ee98(u32 position) {
    s16 ghostSprite;
    s32 x, y;

    x = func_08008f04(8, 88, position, gSneakySpiritsInfo.maxSteps - 1);
    y = func_08008f04(80, 76, position, gSneakySpiritsInfo.maxSteps - 1);
    y += (0x100 - gSneakySpiritsInfo.ghostHeight) >> 3;
    ghostSprite = gSneakySpiritsInfo.ghostWalk;

    func_0804d5d4(D_03005380, ghostSprite, x, y);
    func_0804d770(D_03005380, ghostSprite, 1);
    func_0804cebc(D_03005380, ghostSprite, 0);
    func_0804dcb8(D_03005380, ghostSprite, (func_0800c1a8() << 8) / 100);
    func_0804d614(D_03005380, gSneakySpiritsInfo.ghostMask, x);
    func_08002698(&s_ghost_walk_seqData, (gSneakySpiritsInfo.ghostHeight * 15) >> 5, 0);
}


// [func_0801ef70] Initialise Rain
void func_0801ef70(void) {
    u32 i;

    for (i = 0; i < 30; i++) {
        gSneakySpiritsInfo.rainDrops[i] = func_0804d160(D_03005380, &D_088a0fd8, 0, 120, 80, 0x800, 0, 0, 0x8000);
    }
    for (i = 0; i < 20; i++) {
        gSneakySpiritsInfo.rainSplashes[i] = func_0804d160(D_03005380, &D_088a1000, 0, 64, 64, 0x8400, 0, 0, 0x8002);
    }

    gSneakySpiritsInfo.rainDropNext = 0;
    gSneakySpiritsInfo.rainSplashNext = 0;
    gSneakySpiritsInfo.rainSlow = FALSE;
    gSneakySpiritsInfo.freezeRain = FALSE;
    gSneakySpiritsInfo.tree = func_0804d160(D_03005380, &D_088a0f28, 0, 223, 76, 0x4f00, 1, 0, 0);
}


// [func_0801f040] Update Rain
void func_0801f040(void) {
    u32 i;
    s16 sprite;

    for (i = 0; i < 4; i++) {
        sprite = gSneakySpiritsInfo.rainDrops[gSneakySpiritsInfo.rainDropNext];
        func_0804d8f8(D_03005380, sprite, &D_088a0fd8, 0, 1, 0, 2);
        func_0804d5d4(D_03005380, sprite, func_08001980(240), func_08001980(64) + 48);
        func_0804d770(D_03005380, sprite, 1);

        gSneakySpiritsInfo.rainDropNext += 1;
        if (gSneakySpiritsInfo.rainDropNext >= 30) {
            gSneakySpiritsInfo.rainDropNext = 0;
        }
    }

    for (i = 0; i < 4; i++) {
        sprite = gSneakySpiritsInfo.rainSplashes[gSneakySpiritsInfo.rainSplashNext];
        func_0804cebc(D_03005380, sprite, 0);
        func_0804d5d4(D_03005380, sprite, func_08001980(240), func_08001980(50) + 110);
        func_0804d770(D_03005380, sprite, 1);

        gSneakySpiritsInfo.rainSplashNext += 1;
        if (gSneakySpiritsInfo.rainSplashNext >= 20) {
            gSneakySpiritsInfo.rainSplashNext = 0;
        }
    }
}


// [func_0801f17c] Update Rain If Not In Slow-Motion
void func_0801f17c(void) {
    if (!gSneakySpiritsInfo.rainSlow) func_0801f040();
}


// [func_0801f194] Set Rain Speed
void func_0801f194(u32 slowMotion) {
    u32 i, temp;
    s16 sprite;

    if (gSneakySpiritsInfo.rainSlow == slowMotion) return;
    gSneakySpiritsInfo.rainSlow = slowMotion;

    if (slowMotion) {
        for (i = 0; i < 30; i++) {
            sprite = gSneakySpiritsInfo.rainDrops[i];
            temp = (!gSneakySpiritsInfo.freezeRain) ? 0x100 / (func_08001980(3) + 1) : 0;

            func_0804d8f8(D_03005380, sprite, &D_088a1010, 0, 1, 0x7f, 0);
            func_0804d5d4(D_03005380, sprite, func_08001980(240), func_08001980(160));
            func_0804dcb8(D_03005380, sprite, temp);
            func_0804d770(D_03005380, sprite, 1);
        }

        for (i = 0; i < 20; i++) {
            sprite = gSneakySpiritsInfo.rainSplashes[i];
            func_0804da20(D_03005380, sprite, 1);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo.tree, 1);
    }

    else {
        for (i = 0; i < 30; i++) {
            sprite = gSneakySpiritsInfo.rainDrops[i];

            func_0804d770(D_03005380, sprite, 0);
            func_0804dcb8(D_03005380, sprite, 0x100);
        }

        for (i = 0; i < 20; i++) {
            sprite = gSneakySpiritsInfo.rainSplashes[i];
            func_0804da20(D_03005380, sprite, 0);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo.tree, 0);
    }
}


// [func_0801f30c] ENGINE Func_06 - Set Rain Speed (Tutorial)
void func_0801f30c(u32 slowMotion) {
    func_0801f194(slowMotion);
}


// [func_0801f318] ENGINE Func_07 - Freeze Slow-Motion Rain (Tutorial)
void func_0801f318(u32 freezeRain) {
    gSneakySpiritsInfo.freezeRain = freezeRain;
}


// [func_0801f328] GFX_INIT Func_02
void func_0801f328(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0801f338] GFX_INIT Func_01
void func_0801f338(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089de7a4[gSneakySpiritsInfo.version], 0x2000);
    func_08005d38(data, func_0801f328, 0);
}


// [func_0801f378] GFX_INIT Func_00
void func_0801f378(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089de6e0);
    func_08005d38(data, func_0801f338, 0);
}


// [func_0801f3a4] MAIN - Init
void func_0801f3a4(u32 ver) {
    u32 *textAnim;

    gSneakySpiritsInfo.version = ver;
    func_0801f378();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
    func_0800e0a0(2, 1, 0, 0, 0, 30, 2);

    gSneakySpiritsInfo.unk0 = func_0800c660(0x380, 1);
    textAnim = func_08004b98(gSneakySpiritsInfo.unk0, &D_08059f90, 0, 0);
    gSneakySpiritsInfo.text = func_0804d160(D_03005380, textAnim, 0, 120, 32, 0, 0, 0, 0);
    func_0801ef70();

    gSneakySpiritsInfo.bow = func_0804d160(D_03005380, &D_088a0ca0, 0, 210, 128, 0x4800, 0, 0, 0x8000);
    gSneakySpiritsInfo.arrowReady = FALSE;

    gSneakySpiritsInfo.door = func_0804d160(D_03005380, &D_088a0d08, 0, 72, 48, 0x8800, 0, 0, 0);
    gSneakySpiritsInfo.backWall = func_0804d160(D_03005380, &D_088a0cf8, 0, 24, 45, 0x879c, 0, 0, 0);

    gSneakySpiritsInfo.ghostWalk = func_0804d160(D_03005380, &D_088a0f58, 0, 16, 80, 0x8792, 1, 0, 2);
    func_0804d5d4(D_03005380, gSneakySpiritsInfo.ghostWalk, -100, -100);
    gSneakySpiritsInfo.ghostMask = func_0804d160(D_03005380, &D_088a11a8, 0, 88, 140, 0x8791, 1, 0, 0);
    gSneakySpiritsInfo.ghostHit = func_0804d160(D_03005380, &D_088a0cd0, 0, 100, 76, 0x87a6, 0, 0, 0x8000);
    gSneakySpiritsInfo.maxSteps = 7;
    gSneakySpiritsInfo.tutorialGhost = func_0804d160(D_03005380, &D_088a1280, 0, 120, 92, 0x8792, 1, 0x7f, 0x8000);
    gSneakySpiritsInfo.ghostHeight = 0x100;

    gSneakySpiritsInfo.rainChannel = NULL;

    func_08017338(0, 0);
    gSneakySpiritsInfo.slowMotionHit = TRUE;
    if (ver == SNEAKY_SPIRITS_VERSION_REMIX) {
        gSneakySpiritsInfo.slowMotionHit = FALSE;
    }
}


// [func_0801f5bc] ENGINE Func_10 - Unknown (STUB, Unused)
void func_0801f5bc(void) {
}


// [func_0801f5c0] ENGINE Func_01 - Next Vertical Position
void func_0801f5c0(u32 height) {
    gSneakySpiritsInfo.ghostHeight = height;
    func_0800c4b0(1, func_0800c3a4(0xc), &D_030053c0.unk190, D_030053c0.unk190, height);
}


// [func_0801f5f4] ENGINE Func_02 - Bow Appear
void func_0801f5f4(void) {
    func_0800e25c(gSneakySpiritsInfo.bow, 290, 128, 210, 128, 230);
    func_0804d770(D_03005380, gSneakySpiritsInfo.bow, 1);
}


// [func_0801f638] ENGINE Func_03 - Draw Bow
void func_0801f638(void) {
    if (!gSneakySpiritsInfo.arrowReady) {
        gSneakySpiritsInfo.arrowReady = TRUE;
        func_08017338(1, 0);
        func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, &D_088a0ca0, 0, 1, 0x7f, 0);
    }
}


// [func_0801f684] ENGINE Func_04 - Play Wind/Rain SFX
void func_0801f684(u32 play) {
    if (!play && (gSneakySpiritsInfo.rainChannel != NULL)) {
        func_08002920(gSneakySpiritsInfo.rainChannel, 0);
        func_08002828(gSneakySpiritsInfo.rainChannel);
        gSneakySpiritsInfo.rainChannel = NULL;
    }
    else if (play) {
        gSneakySpiritsInfo.rainChannel = func_08002634(&s_ghost_rain_seqData);
    }
}


// [func_0801f6d0] Cross-Fade Music and Wind/Rain SFX
void func_0801f6d0(void) {
    u32 rainVolume;

    if (gSneakySpiritsInfo.rainChannel == NULL) return;

    rainVolume = func_080087d4((0x100 - D_030053c0.unk190) / 2, 0, 128) + 0x40;
    func_08002920(gSneakySpiritsInfo.rainChannel, rainVolume);
}


// [func_0801f71c] ENGINE Func_05 - Display Text (Tutorial)
void func_0801f71c(char *string) {
    func_08007b04(gSneakySpiritsInfo.unk0, gSneakySpiritsInfo.text);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.text, func_08004b98(gSneakySpiritsInfo.unk0, string, 1, 0xc), 0, 1, 0, 0);
}


// [func_0801f76c] ENGINE Func_08 - Display Dashing Sneaky Spirit (Tutorial)
void func_0801f76c(u32 playAnim) {
    func_0804d770(D_03005380, gSneakySpiritsInfo.tutorialGhost, playAnim);
}


// [func_0801f794] ENGINE Func_09 - Animate Dashing Sneaky Spirit (Tutorial)
void func_0801f794(u32 frame) {
    func_0804cebc(D_03005380, gSneakySpiritsInfo.tutorialGhost, frame);
}


// [func_0801f7bc] MAIN - Update
void func_0801f7bc(void) {
    func_0801f17c(); // Update Rain
    func_0801f6d0(); // Update Wind/Rain SFX
}


// [func_0801f7cc] MAIN - Close
void func_0801f7cc(void) {
    func_0800be88(0x100);
    func_0800c0c4(0);
    func_0800c0f8(0, 0);
}


// [func_0801f7e8] CUE - Spawn
void func_0801f7e8(u32 arg0, struct SneakySpiritsCue *cue, u32 disableTaunt) {
    cue->disableTaunt = disableTaunt;
}


// [func_0801f7f0] CUE - Update
u32 func_0801f7f0(u32 arg0, struct SneakySpiritsCue *cue, u32 arg2) {
    if (arg2 > func_0800c3a4(0x30)) return TRUE;

    return FALSE;
}


// [func_0801f80c] CUE - Despawn (STUB)
void func_0801f80c(u32 arg0, struct SneakySpiritsCue *cue, u32 arg2) {
}


// [func_0801f810] Revert Slow-Motion Effects
void func_0801f810(void) {
    func_0800c604(0);

    if (gSneakySpiritsInfo.slowMotionHit) {
        func_0800be88(0x100);   // Reset Game Speed
        func_0800c0c4(0);       // Reset Music Pitch
        func_0800c0f8(0, 0);    // Reset Music Channel Volume
    }

    func_0804d770(D_03005380, gSneakySpiritsInfo.ghostHit, 0);
    func_0804dae0(D_03005380, gSneakySpiritsInfo.door, -1, 0, 0);
    func_0804cebc(D_03005380, gSneakySpiritsInfo.door, 3);
    func_0801f194(0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, &D_088a1158, 0, 1, 0x7f, 0);
    func_0804dcb8(D_03005380, gSneakySpiritsInfo.ghostWalk, (func_0800c1a8() << 8) / 100);
}


// [func_0801f8d0] CUE - Hit
void func_0801f8d0(u32 arg0, struct SneakySpiritsCue *cue, u32 arg2) {
    u32 duration;
    s8  xVel;
    s8  yVel;
    u32 temp;

    if (gSneakySpiritsInfo.slowMotionHit) {
        func_0800be88(0x40);        // Set Game Speed (0x40 = 0.25; Default = 0x100)
        func_0800c0c4(-0xc00);      // Set Music Pitch (-0xc00 = -12 semitones; Default = 0)
        func_0800c0f8((1 << 9), 0); // Set Music Channel 9 Volume to 0

        duration = func_0800c3a4(0x16) - func_08018054();
        xVel = 68;
        yVel = 60;
    } else {
        duration = func_0800c3a4(0x30) - func_08018054();
        xVel = 84;
        yVel = 68;
    }

    temp = (u16) func_0804ddb0(D_03005380, gSneakySpiritsInfo.ghostHit, 2);
    func_0804cebc(D_03005380, gSneakySpiritsInfo.ghostHit, func_08001980(temp));
    func_0804d770(D_03005380, gSneakySpiritsInfo.ghostHit, 1);
    temp = func_0800e3e4(gSneakySpiritsInfo.ghostHit, 100, 76, xVel, yVel, (u16) duration);
    func_08005d38(temp, func_0801f810, 0);

    func_0804dae0(D_03005380, gSneakySpiritsInfo.door, 1, 0x7f, 0);
    func_0804cebc(D_03005380, gSneakySpiritsInfo.door, 1);

    func_0801f194(1);

    gSneakySpiritsInfo.arrowReady = FALSE;
    func_08017338(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, &D_088a1158, 3, 0, 0, 0);

    func_08002634(&s_f_aim_just_hit_seqData);
    func_08002634(&s_f_aim_just_hit_voice_seqData);

    func_0804d160(D_03005380, &D_088a1258, 0, 128, 90, 0x8792, 1, 0, 3);
}


// [func_0801fa4c] CUE - Barely
void func_0801fa4c(u32 arg0, struct SneakySpiritsCue *cue, u32 arg2) {
    gSneakySpiritsInfo.arrowReady = FALSE;
    func_08017338(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, &D_088a1158, 0, 1, 0x7f, 0);

    func_0804d160(D_03005380, &D_088a0df0, 0, 70, 58, 0x8792, 1, 0x7f, 3);
    if (func_08018054() < 0) {
        func_0804d160(D_03005380, &D_088a0e80, 0, 122, 94, 0x8792, 1, 0, 3);
    } else {
        func_0804d160(D_03005380, &D_088a11b8, 0, 122, 94, 0x8792, 1, 0, 3);
    }
    func_08002634(&s_ghost_miss_hit_seqData);
}


// [func_0801fb14] CUE - Miss
void func_0801fb14(u32 arg0, struct SneakySpiritsCue *cue, u32 arg2) {
    func_0804d160(D_03005380, &D_088a0fb8, 0, 120, 92, 0x8792, 1, 0, 3);

    if (!cue->disableTaunt) {
        func_0804d160(D_03005380, &D_088a0d80, 0, 160, 105, 0x8792, 1, 0, 3);
        func_0800856c((u16) func_0800c3b8(), func_08002634, &s_ghost_warai_seqData, func_0800c3a4(0xc));
    }

    func_08002634(&s_ghost_dash_seqData);
}


// [func_0801fbb0] MAIN - Input Event
void func_0801fbb0(void) {
    if (!gSneakySpiritsInfo.arrowReady) return;

    gSneakySpiritsInfo.arrowReady = FALSE;
    func_08017338(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, &D_088a1158, 0, 1, 0x7f, 0);
    func_0804d160(D_03005380, &D_088a0df0, 0, 70, 58, 0x8792, 1, 0x7f, 3);
    func_08002634(&s_ghost_gosha_seqData);
}


// [func_0801fc3c] COMMON Func_00 - STUB
void func_0801fc3c(void) {
}


// [func_0801fc40] COMMON Func_01 - STUB
void func_0801fc40(void) {
}
