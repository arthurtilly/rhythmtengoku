#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/code_08016e18.h"

// For readability. !TODO - CHANGE/REMOVE
#define gSneakySpiritsInfo D_030055d0->gameInfo.sneakySpirits

// OAM Animations:
extern u32 D_088a0ca0[]; // Animation: "bow_draw"
extern u32 D_088a0cd0[]; // Animation: "ghost_hit"
extern u32 D_088a0cf8[]; // Animation: "door_back_wall"
extern u32 D_088a0d08[]; // Animation: "door_open"
extern u32 D_088a0d80[]; // Animation: "ghost_miss_taunt"
extern u32 D_088a0df0[]; // Animation: "arrow_miss"
extern u32 D_088a0e80[]; // Animation: "ghost_barely_scared"
extern u32 D_088a0f28[]; // Animation: "tree"
extern u32 D_088a0f58[]; // Animation: "ghost_walk"
extern u32 D_088a0fb8[]; // Animation: "ghost_miss_dash"
extern u32 D_088a0fd8[]; // Animation: "rain_fall"
extern u32 D_088a1000[]; // Animation: "rain_splash"
extern u32 D_088a1010[]; // Animation: "rain_fall_slow"
extern u32 D_088a1158[]; // Animation: "bow_shoot"
extern u32 D_088a11a8[]; // Animation: "ghost_mask" (might be masking)
extern u32 D_088a11b8[]; // Animation: "ghost_barely_run"
extern u32 D_088a1258[]; // Animation: "arrow_hit"
extern u32 D_088a1280[]; // Animation: "ghost_dash_tutorial"

// Sound Effects:
extern const struct SequenceData s_ghost_rain_seqData;           // Sound: Wind/Rain
extern const struct SequenceData s_ghost_gosha_seqData;          // Sound: Arrow Missed
extern const struct SequenceData s_ghost_walk_seqData;           // Sound: Ghost Moving
extern const struct SequenceData s_f_aim_just_hit_seqData;       // Sound: Ghost Hit
extern const struct SequenceData s_f_aim_just_hit_voice_seqData; // Sound: Ghost Hit Voice
extern const struct SequenceData s_ghost_miss_hit_seqData;       // Sound: Ghost Barely
extern const struct SequenceData s_ghost_dash_seqData;           // Sound: Ghost Miss
extern const struct SequenceData s_ghost_warai_seqData;          // Sound: Ghost Miss Voice

// Additional Data:
extern u16  D_03005550;   // BeatScript: Music Volume
extern char D_08059f90[]; // Empty Default Text
extern u32  D_089de6e0;   // GFX Null
extern u32 *D_089de7a4[]; // GFX Struct Index

// External Functions: !TODO
extern u16  func_08001980(u16);
extern u32 *func_08002634();
extern u32 *func_08004b98(u32 *, char *, u32, u32);
extern u32  func_0800e3e4(s16, u32, u32, s8, s8, u16);

// External Library Functions:
extern void func_0804cebc(s32, s16, s8);
extern u32  func_0804d160(s32, u32 *, s8, s16, s16, u16, s8, s8, u16);
extern void func_0804d5d4(s32, s16, s16, s16);
extern void func_0804d614(s32, s16, s16);
extern void func_0804d770(s32, s16, u16);
extern void func_0804d8f8(s32, s16, u32 *, u32, u32, u32, u32);
extern void func_0804dae0(s32, s16, s8, u32, u32);
extern void func_0804dcb8(s32, s16, u16);
extern u16  func_0804ddb0(s32, s16, s8);


/* SNEAKY SPIRITS */


// [func_0801ee98] ENGINE Func_00 - Appear At Position
void func_0801ee98(u32 position) {
    s16 ghost;
    s32 posA = func_08008f04(8, 0x58, position, gSneakySpiritsInfo.unk7A - 1);
    s32 posB = func_08008f04(0x50, 0x4c, position, gSneakySpiritsInfo.unk7A - 1);
    posB += (0x100 - gSneakySpiritsInfo.ghostHeight) >> 3;

    ghost = gSneakySpiritsInfo.ghostWalk;
    func_0804d5d4(D_03005380, ghost, posA, posB);
    func_0804d770(D_03005380, ghost, 1);
    func_0804cebc(D_03005380, ghost, 0);
    func_0804dcb8(D_03005380, ghost, (func_0800c1a8() << 8) / 0x64);
    func_0804d614(D_03005380, gSneakySpiritsInfo.ghostMask, posA);
    func_08002698(&s_ghost_walk_seqData, (gSneakySpiritsInfo.ghostHeight * 15) >> 5, 0);
}


// [func_0801ef70] SUB - Initialise Rain
void func_0801ef70(void) {
    u32 i;

    for (i = 0; i < 30; i++) {
        gSneakySpiritsInfo.rainDrops[i] = func_0804d160(D_03005380, D_088a0fd8, 0, 0x78, 0x50, 0x800, 0, 0, 0x8000);
    }
    for (i = 0; i < 20; i++) {
        gSneakySpiritsInfo.rainSplashes[i] = func_0804d160(D_03005380, D_088a1000, 0, 0x40, 0x40, 0x8400, 0, 0, 0x8002);
    }

    gSneakySpiritsInfo.rainDropNext = 0;
    gSneakySpiritsInfo.rainSplashNext = 0;
    gSneakySpiritsInfo.rainSlow = 0;
    gSneakySpiritsInfo.freezeRain = 0;
    gSneakySpiritsInfo.tree = func_0804d160(D_03005380, D_088a0f28, 0, 0xdf, 0x4c, 0x4f00, 1, 0, 0);
}


// [func_0801f040] SUB - Update Rain
void func_0801f040(void) {
    u32 i;
    s16 entity;

    for (i = 0; i < 4; i++) {
        entity = gSneakySpiritsInfo.rainDrops[gSneakySpiritsInfo.rainDropNext];
        func_0804d8f8(D_03005380, entity, D_088a0fd8, 0, 1, 0, 2);
        func_0804d5d4(D_03005380, entity, func_08001980(0xf0), func_08001980(0x40) + 0x30);
        func_0804d770(D_03005380, entity, 1);

        gSneakySpiritsInfo.rainDropNext += 1;
        if (gSneakySpiritsInfo.rainDropNext >= 30) {
            gSneakySpiritsInfo.rainDropNext = 0;
        }
    }

    for (i = 0; i < 4; i++) {
        entity = gSneakySpiritsInfo.rainSplashes[gSneakySpiritsInfo.rainSplashNext];
        func_0804cebc(D_03005380, entity, 0);
        func_0804d5d4(D_03005380, entity, func_08001980(0xf0), func_08001980(0x32) + 0x6e);
        func_0804d770(D_03005380, entity, 1);

        gSneakySpiritsInfo.rainSplashNext += 1;
        if (gSneakySpiritsInfo.rainSplashNext >= 20) {
            gSneakySpiritsInfo.rainSplashNext = 0;
        }
    }
}


// [func_0801f17c] SUB - Update Rain If Not In Slow-Motion
void func_0801f17c(void) {
    if (!gSneakySpiritsInfo.rainSlow) func_0801f040();
}


// [func_0801f194] SUB - Set Rain { 0 = Normal; 1 = Slow-Motion }
void func_0801f194(u32 arg0) {
    u32 i;
    s16 element;
    u32 temp;

    if (gSneakySpiritsInfo.rainSlow == arg0) return;
    gSneakySpiritsInfo.rainSlow = arg0;

    if (arg0) {
        for (i = 0; i < 30; i++) {
            element = gSneakySpiritsInfo.rainDrops[i];
            if (!gSneakySpiritsInfo.freezeRain) {
                temp = 0x100 / (func_08001980(3) + 1);
            } else { temp = 0; }

            func_0804d8f8(D_03005380, element, D_088a1010, 0, 1, 0x7f, 0);
            func_0804d5d4(D_03005380, element, func_08001980(0xf0), func_08001980(0xa0));
            func_0804dcb8(D_03005380, element, temp);
            func_0804d770(D_03005380, element, 1);
        }

        for (i = 0; i < 20; i++) {
            element = gSneakySpiritsInfo.rainSplashes[i];
            func_0804da20(D_03005380, element, 1);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo.tree, 1);
    }

    else {
        for (i = 0; i < 30; i++) {
            element = gSneakySpiritsInfo.rainDrops[i];

            func_0804d770(D_03005380, element, 0);
            func_0804dcb8(D_03005380, element, 0x100);
        }

        for (i = 0; i < 20; i++) {
            element = gSneakySpiritsInfo.rainSplashes[i];
            func_0804da20(D_03005380, element, 0);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo.tree, 0);
    }
}


// [func_0801f30c] ENGINE Func_06 - Set Rain (Tutorial) { 0 = Normal; 1 = Slow-Motion }
void func_0801f30c(u32 arg0) {
    func_0801f194(arg0);
}


// [func_0801f318] ENGINE Func_07 - Freeze Slow-Motion Rain (Tutorial)
void func_0801f318(u32 arg0) {
    gSneakySpiritsInfo.freezeRain = arg0;
}


// [func_0801f328] GFX_LOAD Func_02
void func_0801f328(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0801f338] GFX_LOAD Func_01
void func_0801f338(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089de7a4[gSneakySpiritsInfo.version], 0x2000);
    func_08005d38(data, func_0801f328, 0);
}


// [func_0801f378] GFX_LOAD Func_00
void func_0801f378(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089de6e0);
    func_08005d38(data, func_0801f338, 0);
}


// [func_0801f3a4] MAIN - Load
void func_0801f3a4(u32 ver) {
    u32 *temp;

    gSneakySpiritsInfo.version = ver;
    func_0801f378();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
    func_0800e0a0(2, 1, 0, 0, 0, 30, 2);

    gSneakySpiritsInfo.unk0 = func_0800c660(0x380, 1);
    temp = func_08004b98(gSneakySpiritsInfo.unk0, D_08059f90, 0, 0);
    gSneakySpiritsInfo.text = func_0804d160(D_03005380, temp, 0, 0x78, 0x20, 0, 0, 0, 0);
    func_0801ef70();

    gSneakySpiritsInfo.bow = func_0804d160(D_03005380, D_088a0ca0, 0, 0xd2, 0x80, 0x4800, 0, 0, 0x8000);
    gSneakySpiritsInfo.arrowReady = 0;

    gSneakySpiritsInfo.door = func_0804d160(D_03005380, D_088a0d08, 0, 0x48, 0x30, 0x8800, 0, 0, 0);
    gSneakySpiritsInfo.backWall = func_0804d160(D_03005380, D_088a0cf8, 0, 0x18, 0x2d, 0x879c, 0, 0, 0);

    gSneakySpiritsInfo.ghostWalk = func_0804d160(D_03005380, D_088a0f58, 0, 0x10, 0x50, 0x8792, 1, 0, 2);
    func_0804d5d4(D_03005380, gSneakySpiritsInfo.ghostWalk, -0x64, -0x64);
    gSneakySpiritsInfo.ghostMask = func_0804d160(D_03005380, D_088a11a8, 0, 0x58, 0x8c, 0x8791, 1, 0, 0);
    gSneakySpiritsInfo.ghostHit = func_0804d160(D_03005380, D_088a0cd0, 0, 0x64, 0x4c, 0x87a6, 0, 0, 0x8000);
    gSneakySpiritsInfo.unk7A = 7;
    gSneakySpiritsInfo.tutorialGhost = func_0804d160(D_03005380, D_088a1280, 0, 0x78, 0x5c, 0x8792, 1, 0x7f, 0x8000);
    gSneakySpiritsInfo.ghostHeight = 0x100;

    gSneakySpiritsInfo.rainChannel = 0;

    func_08017338(0, 0);
    gSneakySpiritsInfo.slowMotionHit = 1;
    if (ver == 1) {
        gSneakySpiritsInfo.slowMotionHit = 0;
    }
}


// [func_0801f5bc] ENGINE Func_10 - Unknown (STUB, Unused)
void func_0801f5bc(void) {
}


// [func_0801f5c0] ENGINE Func_01 - Next Vertical Position
void func_0801f5c0(u32 arg0) {
    gSneakySpiritsInfo.ghostHeight = arg0;
    func_0800c4b0(1, func_0800c3a4(0xc), &D_03005550, D_03005550, arg0);
}


// [func_0801f5f4] ENGINE Func_02 - Bow Appear
void func_0801f5f4(void) {
    func_0800e25c(gSneakySpiritsInfo.bow, 0x122, 0x80, 0xd2, 0x80, 0xe6);
    func_0804d770(D_03005380, gSneakySpiritsInfo.bow, 1);
}


// [func_0801f638] ENGINE Func_03 - Draw Bow
void func_0801f638(void) {
    if (gSneakySpiritsInfo.arrowReady == 0) {
        gSneakySpiritsInfo.arrowReady = 1;
        func_08017338(1, 0);
        func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, D_088a0ca0, 0, 1, 0x7f, 0);
    }
}


// [func_0801f684] ENGINE Func_04 - Play Wind/Rain SFX
void func_0801f684(u32 arg0) {
    if (!arg0) {
        if (gSneakySpiritsInfo.rainChannel) {
            func_08002920(gSneakySpiritsInfo.rainChannel, 0);
            func_08002828(gSneakySpiritsInfo.rainChannel);
            gSneakySpiritsInfo.rainChannel = 0;
        }
    } else {
        gSneakySpiritsInfo.rainChannel = func_08002634(&s_ghost_rain_seqData);
    }
}


// [func_0801f6d0] SUB - Cross-Fade Music and Wind/Rain SFX
void func_0801f6d0(void) {
    s32 temp1;
    u32 temp;

    if (gSneakySpiritsInfo.rainChannel) {
        temp1 = (0x100 - D_030053c0.unk190);
        temp = func_080087d4(temp1 / 2, 0, 0x80) + 0x40;
        func_08002920(gSneakySpiritsInfo.rainChannel, temp);
    }
}


// [func_0801f71c] ENGINE Func_05 - Display Text (Tutorial)
void func_0801f71c(char *string) {
    u32 *temp;

    func_08007b04(gSneakySpiritsInfo.unk0, gSneakySpiritsInfo.text);
    temp = func_08004b98(gSneakySpiritsInfo.unk0, string, 1, 0xc);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.text, temp, 0, 1, 0, 0);
}


// [func_0801f76c] ENGINE Func_08 - Display Dashing Sneaky Spirit (Tutorial)
void func_0801f76c(u32 arg0) {
    func_0804d770(D_03005380, gSneakySpiritsInfo.tutorialGhost, arg0);
}


// [func_0801f794] ENGINE Func_09 - Animate Dashing Sneaky Spirit (Tutorial)
void func_0801f794(u32 arg0) {
    func_0804cebc(D_03005380, gSneakySpiritsInfo.tutorialGhost, arg0);
}


// [func_0801f7bc] MAIN - Loop
void func_0801f7bc(void) {
    func_0801f17c();
    func_0801f6d0();
}


// [func_0801f7cc] MAIN - Unload
void func_0801f7cc(void) {
    func_0800be88(0x100);
    func_0800c0c4(0);
    func_0800c0f8(0, 0);
}


// [func_0801f7e8] CUE - Spawn
void func_0801f7e8(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    arg1->unk26 = arg2;
}


// [func_0801f7f0] CUE - Behaviour
u32 func_0801f7f0(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(0x30)) {
        return 1; }
    else {
        return 0; }
}


// [func_0801f80c] CUE - Despawn (STUB)
void func_0801f80c(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
}


// [func_0801f810] SUB - Revert Slow-Motion Effects
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
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, D_088a1158, 0, 1, 0x7f, 0);
    func_0804dcb8(D_03005380, gSneakySpiritsInfo.ghostWalk, (func_0800c1a8() << 8) / 0x64);
}


// [func_0801f8d0] CUE - Hit
void func_0801f8d0(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    u32 duration;
    s8  xVel;
    s8  yVel;
    u32 temp;

    if (gSneakySpiritsInfo.slowMotionHit) {
        func_0800be88(0x40);        // Set Game Speed (0x40 = 0.25; Default = 0x100)
        func_0800c0c4(-0xc00);      // Set Music Pitch (-0xc00 = -12 semitones; Default = 0)
        func_0800c0f8(0x200, 0);    // Set Music Channel 9 Volume to 0

        duration = func_0800c3a4(0x16) - func_08018054();
        xVel = 0x44;
        yVel = 0x3c;
    } else {
        duration = func_0800c3a4(0x30) - func_08018054();
        xVel = 0x54;
        yVel = 0x44;
    }

    temp = func_0804ddb0(D_03005380, gSneakySpiritsInfo.ghostHit, 2);
    func_0804cebc(D_03005380, gSneakySpiritsInfo.ghostHit, func_08001980(temp));
    func_0804d770(D_03005380, gSneakySpiritsInfo.ghostHit, 1);
    temp = func_0800e3e4(gSneakySpiritsInfo.ghostHit, 0x64, 0x4c, xVel, yVel, (u16) duration);
    func_08005d38(temp, func_0801f810, 0);

    func_0804dae0(D_03005380, gSneakySpiritsInfo.door, 1, 0x7f, 0);
    func_0804cebc(D_03005380, gSneakySpiritsInfo.door, 1);

    func_0801f194(1);

    gSneakySpiritsInfo.arrowReady = 0;
    func_08017338(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, D_088a1158, 3, 0, 0, 0);

    func_08002634(&s_f_aim_just_hit_seqData);
    func_08002634(&s_f_aim_just_hit_voice_seqData);

    func_0804d160(D_03005380, D_088a1258, 0, 0x80, 0x5a, 0x8792, 1, 0, 3);
}


// [func_0801fa4c] CUE - Barely
void func_0801fa4c(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    gSneakySpiritsInfo.arrowReady = 0;
    func_08017338(0, 0);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, D_088a1158, 0, 1, 0x7f, 0);

    func_0804d160(D_03005380, D_088a0df0, 0, 0x46, 0x3a, 0x8792, 1, 0x7f, 3);
    if (func_08018054() < 0) {
        func_0804d160(D_03005380, D_088a0e80, 0, 0x7a, 0x5e, 0x8792, 1, 0, 3);
    } else {
        func_0804d160(D_03005380, D_088a11b8, 0, 0x7a, 0x5e, 0x8792, 1, 0, 3);
    }
    func_08002634(&s_ghost_miss_hit_seqData);
}


// [func_0801fb14] CUE - Miss
void func_0801fb14(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    u8 unk26;
    u16 temp;

    func_0804d160(D_03005380, D_088a0fb8, 0, 0x78, 0x5c, 0x8792, 1, 0, 3);

    // Taunt if enabled.
    unk26 = arg1->unk26;
    if (!unk26) {
        func_0804d160(D_03005380, D_088a0d80, 0, 0xa0, 0x69, 0x8792, 1, unk26, 3);
        temp = func_0800c3b8();
        func_0800856c(temp, func_08002634, &s_ghost_warai_seqData, func_0800c3a4(0xc));
    }
    func_08002634(&s_ghost_dash_seqData);
}


// [func_0801fbb0] MAIN - Input Event
void func_0801fbb0(void) {
    if (gSneakySpiritsInfo.arrowReady) {
        gSneakySpiritsInfo.arrowReady = 0;
        func_08017338(0, 0);
        func_0804d8f8(D_03005380, gSneakySpiritsInfo.bow, D_088a1158, 0, 1, 0x7f, 0);
        func_0804d160(D_03005380, D_088a0df0, 0, 0x46, 0x3a, 0x8792, 1, 0x7f, 3);
        func_08002634(&s_ghost_gosha_seqData);
    }
}


// [func_0801fc3c] GRAPHICAL Func_00 - Unknown (STUB)
void func_0801fc3c(void) {
}


// [func_0801fc40] GRAPHICAL Func_01 - Unknown (STUB)
void func_0801fc40(void) {
}
