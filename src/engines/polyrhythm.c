#include "engines/polyrhythm.h"
#include "src/code_0800b778.h"
#include "src/riq_gameplay.h"
#include "src/lib_0804c870.h"

asm(".include \"include/gba.inc\""); // Temporary

#define gPolyrhythmInfo D_030055d0->polyrhythm


/* POLYRHYTHM */


#include "asm/engines/polyrhythm/asm_08035d1c.s"

#include "asm/engines/polyrhythm/asm_08035d2c.s"

#include "asm/engines/polyrhythm/asm_08035d6c.s"


// Game Init.
void func_08035d98(u32 ver) {
    gPolyrhythmInfo.version = ver;
    func_08035d6c(); // Init. Graphics
    func_0800e0ec(); // Init. BG Layers
    func_0800e0a0(1, 1, 0, 0, 0, 29, 2); // Init. BG1
    func_08017338(A_BUTTON | DPAD_ALL, 0); // Init. Button Filters
    func_08035f7c(); // Populate World
    func_0803656c(); // Init. Rods
    gPolyrhythmInfo.aButtonArrowSprite = func_0804d160(D_03005380, D_088f62fc, 0, 64, 64, 0x4800, 1, 0, 0x8000);
    gPolyrhythmInfo.dPadArrowSprite = func_0804d160(D_03005380, D_088f631c, 0, 64, 64, 0x4800, 1, 0, 0x8000);
    func_0804d7b4(D_03005380, gPolyrhythmInfo.aButtonArrowSprite, 0x1000000);
    func_0804d7b4(D_03005380, gPolyrhythmInfo.dPadArrowSprite, 0x1000000);
}


// Engine Event 0x05 (STUB)
void func_08035e84(void) {
}


// Game Update
void func_08035e88(void) {
    func_0803698c();
}


// Game Close
void func_08035e94(void) {
}


#include "asm/engines/polyrhythm/asm_08035e98.s"

#include "asm/engines/polyrhythm/asm_08035eac.s"

#include "asm/engines/polyrhythm/asm_08035ecc.s"

#include "asm/engines/polyrhythm/asm_08035ed0.s"

#include "asm/engines/polyrhythm/asm_08035f08.s"

#include "asm/engines/polyrhythm/asm_08035f40.s"

#include "asm/engines/polyrhythm/asm_08035f4c.s"

#include "asm/engines/polyrhythm/asm_08035f74.s"

#include "asm/engines/polyrhythm/asm_08035f78.s"


// Populate World
void func_08035f7c(void) {
    struct PolyrhythmBlock *block;
    u32 i, j;
    s16 x, y;
    u16 z;

    func_0804d160(D_03005380, D_088f61ec, 0, 32, 112, 0x4400, 0, 0, 0);

    for (i = 0; i < 2; i++) {
        x = D_089e5c00[i];
        y = D_089e5c04[i];
        z = ((1 - i) << 10) + 0x4404;

        func_0804d160(D_03005380, D_088f62e4, 1 - i, 122, 111, z - 1, 0, 0, 0);

        block = gPolyrhythmInfo.lanes[i];
        for (j = 0; j < 16; j++) {
            block->sprite = func_0804d160(D_03005380, D_088f61fc, 0, x, y, z, 0, 0, 0);
            block->unk0_b0 = 0;
            block->unk0_b3 = 0;
            x += 0x10;
            y -= 8;
            z += 4;
            block++;
        }
        gPolyrhythmInfo.unk104[i] = 0;
    }
}


#include "asm/engines/polyrhythm/asm_080360a8.s"

#include "asm/engines/polyrhythm/asm_080360f8.s"

#include "asm/engines/polyrhythm/asm_080361c0.s"

#include "asm/engines/polyrhythm/asm_08036250.s"

#include "asm/engines/polyrhythm/asm_080362e4.s"

#include "asm/engines/polyrhythm/asm_0803638c.s"

#include "asm/engines/polyrhythm/asm_08036428.s"


// Get Lane X
s32 func_0803646c(u32 lane) {
    return D_089e5c00[lane];
}


// Get Lane Y
s32 func_0803647c(u32 lane) {
    return D_089e5c04[lane];
}


//
s32 func_0803648c(u32 lane, s32 blockID) {
    struct PolyrhythmBlock *block;
    if (blockID < 0) {
        return D_089e5c08[1];
    }
    if (blockID > 15) {
        return 0;
    }

    block = &gPolyrhythmInfo.lanes[lane][blockID];
    return D_089e5c08[block->unk0_b3];
}


// Get Layer
s32 func_080364d4(u32 lane, s32 blockID) {
    u32 z = 0x4400;

    if (blockID >= 0) {
        if (lane == 0) {
            z += 0x400;
        }
        z += 4;
        z += (blockID * 4);
    }
    return z;
}


#include "asm/engines/polyrhythm/asm_080364f4.s"


// Init. Rods
void func_0803656c(void) {
    struct PolyrhythmRod *rod;
    u32 i;

    rod = gPolyrhythmInfo.rods;
    for (i = 0; i < 8; i++) {
        rod->active = FALSE;
        rod->sprite = func_0804d160(D_03005380, D_088f6114, 0, 32, 96, 0, 1, 0, 0x8000);
        rod++;
    }
}


// Get Rod Next Y Offset
s32 func_080365c8(struct PolyrhythmRod *rod, s32 h) {
    s32 block1, block2;
    s32 c, d;

    h += 8;
    block1 = (h - 2) >> 4;
    block2 = (h + 2) >> 4;
    c = func_0803648c(rod->lane, block1);
    d = func_0803648c(rod->lane, block2);

    return (d < c) ? c : d;
}


#include "asm/engines/polyrhythm/asm_080365f8.s"


// Get Rod Next Horizontal
s32 func_08036604(struct PolyrhythmRod *rod) {
    return (rod->runningTime * 384 / rod->maxDuration) - 0x80;
}


// Get Rod Next Layer
s32 func_0803661c(struct PolyrhythmRod *rod, s32 h) {
    s32 block = (h + 6) >> 4;
    return func_080364d4(rod->lane, block) - 2;
}


// Update Rod (State 0)
void func_08036630(struct PolyrhythmRod *rod) {
    s32 prevYOffset; // r4
    s32 prevHorizontal; // r5
    u32 prevZ; // r7
    s32 x, y;
    u32 z;

    prevYOffset = rod->yOffset;
    prevHorizontal = rod->horizontal;
    prevZ = func_0804ddb0(D_03005380, rod->sprite, 6);

    rod->horizontal = (rod->stopped) ? prevHorizontal : func_08036604(rod);
    rod->yOffset = func_080365c8(rod, rod->horizontal);
    z = func_0803661c(rod, rod->horizontal);

    if (rod->yOffset < prevYOffset) {
        rod->yOffset = prevYOffset;
        rod->unk28 = INT_TO_FIXED(prevYOffset);
        rod->unk2C = 0;
        rod->unk0_b4 = 2;
    } else if (rod->yOffset > prevYOffset) {
        rod->horizontal = prevHorizontal;
        rod->yOffset = prevYOffset;
        z = prevZ;
        if (!rod->stopped) {
            func_08002634(&s_poly_shototu_seqData);
        }
        rod->stopped = TRUE;
        func_0804dae0(D_03005380, rod->sprite, 0, 0, 0);
    }

    rod->x = rod->horizontal;
    rod->y = (-rod->horizontal / 2) + (-rod->yOffset);
    x = func_0803646c(rod->lane) + rod->x;
    y = func_0803647c(rod->lane) + rod->y;
    func_0804d55c(D_03005380, rod->sprite, x, y, z);
    func_0804d770(D_03005380, rod->sprite, TRUE);
    rod->runningTime++;
    if (rod->runningTime > (rod->maxDuration - func_0800c3a4(0x18))) {
        rod->active = FALSE;
    }
}


#include "asm/engines/polyrhythm/asm_08036758.s"

#include "asm/engines/polyrhythm/asm_08036848.s"


// Stub
void func_08036988(void) {
}


// Update Rods
void func_0803698c(void) {
    struct PolyrhythmRod *rod;
    u32 i;
    s32 x, y;
    u32 z;

    rod = gPolyrhythmInfo.rods;

    for (i = 0; i < 8; rod++, i++) {
        if (!rod->active) continue;
        switch (rod->unk0_b4) {
            case 0:
                func_08036630(rod);
                break;
            case 1:
                func_08036758(rod);
                break;
            case 2:
                func_08036848(rod);
                break;
        }
        if (rod->stopped) {
            rod->timeUntilExplosion--;
            if (rod->timeUntilExplosion == 0) {
                x = func_0804ddb0(D_03005380, rod->sprite, 4);
                y = func_0804ddb0(D_03005380, rod->sprite, 5);
                z = func_0804ddb0(D_03005380, rod->sprite, 6);
                func_0804d160(D_03005380, D_088f62bc, 0, x, y, z, 1, 0, 3);
                func_0804d770(D_03005380, rod->sprite, FALSE);
                rod->active = FALSE;
                func_08017928(func_08017918(), 2, 0);
                func_08002634(&s_f_poly_blast_seqData);
            }
        }
    }
}


// Spawn Rod
void func_08036aa4(u32 lane) {
    struct PolyrhythmRod *rod;
    u32 i;

    rod = gPolyrhythmInfo.rods;
    for (i = 0; i < 8; i++) {
        if (!rod->active) break;
        rod++;
    }
    if (i >= 8) return;

    rod->active = TRUE;
    rod->stopped = FALSE;
    rod->horizontal = 0;
    rod->yOffset = 0x10;
    rod->runningTime = 0;
    rod->maxDuration = func_0800c3a4(0x120);
    rod->lane = lane;
    rod->unk0_b4 = 0;
    rod->timeUntilExplosion = func_0800c3a4(0x18);
    func_0804dae0(D_03005380, rod->sprite, 1, 0, 0);
    func_0804dcb8(D_03005380, rod->sprite, 0x200);
}


// Engine Event 0x03 (Spawn Rod)
void func_08036b3c(u32 lane) {
    func_08036aa4(lane);
}


#include "asm/engines/polyrhythm/asm_08036b48.s"

#include "asm/engines/polyrhythm/asm_08036b94.s"

#include "asm/engines/polyrhythm/asm_08036be0.s"
