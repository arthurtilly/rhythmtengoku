#include "engines/polyrhythm.h"

#include "src/code_08001360.h"
#include "src/task_pool.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804c870.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gPolyrhythmInfo ((struct PolyrhythmInfo *)D_030055d0)

enum BlockTypesEnum {
    BLOCK_TYPE_PLATFORM,
    BLOCK_TYPE_PISTON_UPSIDE,
    BLOCK_TYPE_PISTON_DOWNSIDE
};

enum BlockStatesEnum {
    BLOCK_STATE_HIDDEN,
    BLOCK_STATE_PLATFORM,
    BLOCK_STATE_OPEN_PISTON
};

/* POLYRHYTHM */


// Graphics Init. 2
void func_08035d1c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// Graphics Init. 1
void func_08035d2c(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), D_089e59fc[gPolyrhythmInfo->version], 0x2000);
    task_run_after(task, func_08035d1c, 0);
}


// Graphics Init. 0
void func_08035d6c(void) {
    s32 task;

    func_0800c604(0);
    task = func_080087b4(get_current_mem_id(), D_089e5968);
    task_run_after(task, func_08035d2c, 0);
}


// Game Engine Init.
void func_08035d98(u32 ver) {
    gPolyrhythmInfo->version = ver;
    func_08035d6c(); // Init. Graphics
    scene_show_obj_layer(); // Init. BG Layers
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 2); // Init. BG1
    gameplay_set_input_buttons(A_BUTTON | DPAD_ALL, 0); // Init. Button Filters
    func_08035f7c(); // Populate World
    func_0803656c(); // Init. Rods
    gPolyrhythmInfo->aButtonArrowSprite = func_0804d160(D_03005380, D_088f62fc, 0, 64, 64, 0x4800, 1, 0, 0x8000);
    gPolyrhythmInfo->dPadArrowSprite = func_0804d160(D_03005380, D_088f631c, 0, 64, 64, 0x4800, 1, 0, 0x8000);
    func_0804d7b4(D_03005380, gPolyrhythmInfo->aButtonArrowSprite, 0x1000000);
    func_0804d7b4(D_03005380, gPolyrhythmInfo->dPadArrowSprite, 0x1000000);
}


// Engine Event 0x05 (STUB)
void func_08035e84(void) {
}


// Game Engine Update
void func_08035e88(void) {
    func_0803698c();
}


// Game Engine Close
void func_08035e94(void) {
}


// Cue - Spawn
void func_08035e98(struct Cue *cue, struct PolyrhythmCue *info, u32 lane) {
    info->lane = lane;
}


// Cue - Update
u32 func_08035eac(struct Cue *cue, struct PolyrhythmCue *info, u32 runningTime, u32 duration) {
    if (runningTime > (duration + beats_to_ticks(0xC))) {
        return TRUE;
    }
    return FALSE;
}


// Cue - Despawn
void func_08035ecc(struct Cue *cue, struct PolyrhythmCue *info) {
}


// Cue - Hit
void func_08035ed0(struct Cue *cue, struct PolyrhythmCue *info, u32 pressed, u32 released) {
    s32 pistonID;

    pistonID = func_0803638c(info->lane);

    if (!func_080364f4(info->lane, pistonID)) {
        func_08018068();
        if (pistonID >= 0) {
            gameplay_add_cue_result(0, 3, 0);
        }
    }
}


// Cue - Barely
void func_08035f08(struct Cue *cue, struct PolyrhythmCue *info, u32 pressed, u32 released) {
    s32 pistonID;

    pistonID = func_0803638c(info->lane);

    if (!func_080364f4(info->lane, pistonID)) {
        func_08018068();
        if (pistonID >= 0) {
            gameplay_add_cue_result(0, 3, 0);
        }
    }
}


// Cue - Miss
void func_08035f40(struct Cue *cue, struct PolyrhythmCue *info) {
    func_08018068();
}


// Input Event
void func_08035f4c(u32 pressed, u32 released) {
    if (pressed & A_BUTTON) {
        func_0803638c(1);
    }
    if (pressed & DPAD_ALL) {
        func_0803638c(0);
    }
}


// Common Event 0 (Beat Animation)
void func_08035f74(void) {
}


// Common Event 1 (Display Text)
void func_08035f78(void) {
}


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

        block = gPolyrhythmInfo->lanes[i];
        for (j = 0; j < 16; j++) {
            block->sprite = func_0804d160(D_03005380, D_088f61fc, 0, x, y, z, 0, 0, 0);
            block->type = BLOCK_TYPE_PLATFORM;
            block->state = BLOCK_STATE_HIDDEN;
            x += 16;
            y -= 8;
            z += 4;
            block++;
        }
        gPolyrhythmInfo->unk104[i] = 0;
    }
}


// Get Next Two Pistons
void func_080360a8(u32 lane, s32 *piston1ID, s32 *piston2ID) {
    struct PolyrhythmBlock *block;
    u32 i;

    *piston2ID = -1;
    *piston1ID = -1;

    for (i = 0; i < 16; i++) {
        block = &gPolyrhythmInfo->lanes[lane][i];

        if ((block->type == BLOCK_TYPE_PISTON_UPSIDE) || (block->type == BLOCK_TYPE_PISTON_DOWNSIDE)) {
            if (block->state == BLOCK_STATE_PLATFORM) {
                if (*piston1ID < 0) {
                    *piston1ID = i;
                } else {
                    *piston2ID = i;
                    break;
                }
            }
        }
    }
}


// Display Arrow Sprite
void func_080360f8(u32 lane, s32 blockID) {
    struct PolyrhythmBlock *block;
    s16 arrowSprite;
    s32 x, y;
    u32 z;

    if (gPolyrhythmInfo->version == 1) {
        return;
    }

    if (gPolyrhythmInfo->version == 2) {
        return;
    }

    if (lane != 0) {
        arrowSprite = gPolyrhythmInfo->aButtonArrowSprite;
    } else {
        arrowSprite = gPolyrhythmInfo->dPadArrowSprite;
    }

    if (blockID >= 0) {
        block = &gPolyrhythmInfo->lanes[lane][blockID];
        x = func_0804ddb0(D_03005380, block->sprite, 4);
        y = func_0804ddb0(D_03005380, block->sprite, 5);
        z = func_080364d4(lane, blockID) - 5;
        func_0804d55c(D_03005380, arrowSprite, x, y, z);
        func_0804d770(D_03005380, arrowSprite, TRUE);
    } else {
        func_0804d770(D_03005380, arrowSprite, FALSE);
    }
}


// (https://decomp.me/scratch/1esDB)
#include "asm/engines/polyrhythm/asm_080361c0.s"

#include "asm/engines/polyrhythm/asm_08036250.s"

#include "asm/engines/polyrhythm/asm_080362e4.s"


// Piston Push
s32 func_0803638c(u32 lane) {
    struct PolyrhythmBlock *piston;
    s32 currentPistonID, nextPistonID;

    func_080360a8(lane, &currentPistonID, &nextPistonID);

    if (currentPistonID < 0) {
        return -1;
    }

    piston = &gPolyrhythmInfo->lanes[lane][currentPistonID];
    piston->state = BLOCK_STATE_OPEN_PISTON;
    func_0804d8f8(D_03005380, piston->sprite, D_089e5c1c[piston->type], 0, 1, 0x7f, 0);
    gPolyrhythmInfo->unk104[lane]++;
    play_sound(D_089e5c34[piston->type]);
    func_080360f8(lane, nextPistonID);
    return currentPistonID;
}


#include "asm/engines/polyrhythm/asm_08036428.s"


// Get Lane X
s32 func_0803646c(u32 lane) {
    return D_089e5c00[lane];
}


// Get Lane Y
s32 func_0803647c(u32 lane) {
    return D_089e5c04[lane];
}


// Get Lane something
s32 func_0803648c(u32 lane, s32 blockID) {
    struct PolyrhythmBlock *block;
    if (blockID < 0) {
        return D_089e5c08[1];
    }
    if (blockID > 15) {
        return 0;
    }

    block = &gPolyrhythmInfo->lanes[lane][blockID];
    return D_089e5c08[block->state];
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

    rod = gPolyrhythmInfo->rods;
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
            play_sound(&s_poly_shototu_seqData);
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
    if (rod->runningTime > (rod->maxDuration - beats_to_ticks(0x18))) {
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

    rod = gPolyrhythmInfo->rods;

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
                gameplay_add_cue_result(gameplay_get_marking_criteria(), 2, 0);
                play_sound(&s_f_poly_blast_seqData);
            }
        }
    }
}


// Spawn Rod
void func_08036aa4(u32 lane) {
    struct PolyrhythmRod *rod;
    u32 i;

    rod = gPolyrhythmInfo->rods;
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
    rod->maxDuration = beats_to_ticks(0x120);
    rod->lane = lane;
    rod->unk0_b4 = 0;
    rod->timeUntilExplosion = beats_to_ticks(0x18);
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
