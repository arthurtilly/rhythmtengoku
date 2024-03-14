#include "engines/polyrhythm.h"

#include "src/code_08001360.h"
#include "src/task_pool.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gPolyrhythm ((struct PolyrhythmEngineData *)gCurrentEngineData)

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


// Graphics Init. 3
void polyrhythm_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// Graphics Init. 2
void polyrhythm_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), polyrhythm_gfx_tables[gPolyrhythm->version], 0x2000);
    run_func_after_task(task, polyrhythm_init_gfx3, 0);
}


// Graphics Init. 1
void polyrhythm_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), polyrhythm_buffered_textures);
    run_func_after_task(task, polyrhythm_init_gfx2, 0);
}


// Game Engine Start
void polyrhythm_engine_start(u32 version) {
    gPolyrhythm->version = version;
    polyrhythm_init_gfx1(); // Init. Graphics
    scene_show_obj_layer(); // Init. BG Layers
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 2); // Init. BG1

    gameplay_set_input_buttons(A_BUTTON | DPAD_ALL, 0); // Init. Button Filters
    polyrhythm_populate_world(); // Populate World
    polyrhythm_init_rods(); // Init. Rods
    gPolyrhythm->aButtonArrowSprite = sprite_create(gSpriteHandler, anim_polyrhythm_arrow_a, 0, 64, 64, 0x4800, 1, 0, 0x8000);
    gPolyrhythm->dPadArrowSprite = sprite_create(gSpriteHandler, anim_polyrhythm_arrow_dpad, 0, 64, 64, 0x4800, 1, 0, 0x8000);
    sprite_attr_set(gSpriteHandler, gPolyrhythm->aButtonArrowSprite, 0x1000000);
    sprite_attr_set(gSpriteHandler, gPolyrhythm->dPadArrowSprite, 0x1000000);
}


// Engine Event 05 (STUB)
void polyrhythm_engine_event_stub(void) {
}


// Game Engine Update
void polyrhythm_engine_update(void) {
    polyrhythm_update_rods();
}


// Game Engine Stop
void polyrhythm_engine_stop(void) {
}


// Cue - Spawn
void polyrhythm_cue_spawn(struct Cue *cue, struct PolyrhythmCue *info, u32 lane) {
    info->lane = lane;
}


// Cue - Update
u32 polyrhythm_cue_update(struct Cue *cue, struct PolyrhythmCue *info, u32 runningTime, u32 duration) {
    if (runningTime > (duration + ticks_to_frames(0x0C))) {
        return TRUE;
    }
    return FALSE;
}


// Cue - Despawn
void polyrhythm_cue_despawn(struct Cue *cue, struct PolyrhythmCue *info) {
}


// Cue - Hit
void polyrhythm_cue_hit(struct Cue *cue, struct PolyrhythmCue *info, u32 pressed, u32 released) {
    s32 pistonID;

    pistonID = polyrhythm_push_piston(info->lane);

    if (!func_080364f4(info->lane, pistonID)) {
        gameplay_ignore_this_cue_result();
        if (pistonID >= 0) {
            gameplay_add_cue_result(0, 3, 0);
        }
    }
}


// Cue - Barely
void polyrhythm_cue_barely(struct Cue *cue, struct PolyrhythmCue *info, u32 pressed, u32 released) {
    s32 pistonID;

    pistonID = polyrhythm_push_piston(info->lane);

    if (!func_080364f4(info->lane, pistonID)) {
        gameplay_ignore_this_cue_result();
        if (pistonID >= 0) {
            gameplay_add_cue_result(0, 3, 0);
        }
    }
}


// Cue - Miss
void polyrhythm_cue_miss(struct Cue *cue, struct PolyrhythmCue *info) {
    gameplay_ignore_this_cue_result();
}


// Input Event
void polyrhythm_input_event(u32 pressed, u32 released) {
    if (pressed & A_BUTTON) {
        polyrhythm_push_piston(POLYRHYTHM_LANE_DOWNSIDE);
    }
    if (pressed & DPAD_ALL) {
        polyrhythm_push_piston(POLYRHYTHM_LANE_UPSIDE);
    }
}


// Common Event 0 (Beat Animation)
void polyrhythm_common_beat_animation(void) {
}


// Common Event 1 (Display Text)
void polyrhythm_common_display_text(void) {
}


// Populate World
void polyrhythm_populate_world(void) {
    struct PolyrhythmBlock *block;
    u32 i, j;
    s16 x, y;
    u16 z;

    sprite_create(gSpriteHandler, anim_polyrhythm_world_start, 0, 32, 112, 0x4400, 0, 0, 0);

    for (i = 0; i < POLYRHYTHM_LINE_AMOUNT; i++) {
        x = polyrhythm_lane_start_x[i];
        y = polyrhythm_lane_start_y[i];
        z = ((1 - i) * 0x400) + 0x4404;

        sprite_create(gSpriteHandler, anim_polyrhythm_signs, 1 - i, 122, 111, z - 1, 0, 0, 0);

        block = gPolyrhythm->lanes[i];
        for (j = 0; j < POLYRHYTHM_BLOCK_AMOUNT; j++) {
            block->sprite = sprite_create(gSpriteHandler, anim_polyrhythm_block, 0, x, y, z, 0, 0, 0);
            block->type = BLOCK_TYPE_PLATFORM;
            block->state = BLOCK_STATE_HIDDEN;
            x += 16;
            y -= 8;
            z += 4;
            block++;
        }
        gPolyrhythm->unk104[i] = 0;
    }
}


// Get Next Two Pistons
void polyrhythm_get_pistons(u32 lane, s32 *piston1ID, s32 *piston2ID) {
    struct PolyrhythmBlock *block;
    u32 i;

    *piston2ID = -1;
    *piston1ID = -1;

    for (i = 0; i < POLYRHYTHM_BLOCK_AMOUNT; i++) {
        block = &gPolyrhythm->lanes[lane][i];

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
void polyrhythm_display_arrow(u32 lane, s32 blockID) {
    struct PolyrhythmBlock *block;
    s16 arrowSprite;
    s32 x, y;
    u32 z;

    if (gPolyrhythm->version == POLYRHYTHM_VER_REMIX) {
        return;
    }

    if (gPolyrhythm->version == POLYRHYTHM_VER_2) {
        return;
    }

    if (lane != POLYRHYTHM_LANE_UPSIDE) {
        arrowSprite = gPolyrhythm->aButtonArrowSprite;
    } else {
        arrowSprite = gPolyrhythm->dPadArrowSprite;
    }

    if (blockID >= 0) {
        block = &gPolyrhythm->lanes[lane][blockID];
        x = sprite_get_data(gSpriteHandler, block->sprite, 4);
        y = sprite_get_data(gSpriteHandler, block->sprite, 5);
        z = polyrhythm_get_block_z(lane, blockID) - 5;
        sprite_set_x_y_z(gSpriteHandler, arrowSprite, x, y, z);
        sprite_set_visible(gSpriteHandler, arrowSprite, TRUE);
    } else {
        sprite_set_visible(gSpriteHandler, arrowSprite, FALSE);
    }
}


// (https://decomp.me/scratch/1esDB)
#include "asm/engines/polyrhythm/asm_080361c0.s"

#include "asm/engines/polyrhythm/asm_08036250.s"

#include "asm/engines/polyrhythm/asm_080362e4.s"


// Piston Push
s32 polyrhythm_push_piston(u32 lane) {
    struct PolyrhythmBlock *piston;
    s32 currentPistonID, nextPistonID;

    polyrhythm_get_pistons(lane, &currentPistonID, &nextPistonID);

    if (currentPistonID < 0) {
        return -1;
    }

    piston = &gPolyrhythm->lanes[lane][currentPistonID];
    piston->state = BLOCK_STATE_OPEN_PISTON;
    sprite_set_anim(gSpriteHandler, piston->sprite, polyrhythm_block_open_anim[piston->type], 0, 1, 0x7f, 0);
    gPolyrhythm->unk104[lane]++;
    play_sound(polyrhythm_block_open_sfx[piston->type]);
    polyrhythm_display_arrow(lane, nextPistonID);
    return currentPistonID;
}


#include "asm/engines/polyrhythm/asm_08036428.s"


// Get Lane X
s32 polyrhythm_get_lane_start_x(u32 lane) {
    return polyrhythm_lane_start_x[lane];
}


// Get Lane Y
s32 polyrhythm_get_lane_start_y(u32 lane) {
    return polyrhythm_lane_start_y[lane];
}


// Get Block Height
s32 polyrhythm_get_block_height(u32 lane, s32 blockID) {
    struct PolyrhythmBlock *block;
    if (blockID < 0) {
        return polyrhythm_block_heights[BLOCK_STATE_PLATFORM];
    }
    if (blockID > (POLYRHYTHM_BLOCK_AMOUNT - 1)) {
        return 0;
    }

    block = &gPolyrhythm->lanes[lane][blockID];
    return polyrhythm_block_heights[block->state];
}


// Get Layer
s32 polyrhythm_get_block_z(u32 lane, s32 blockID) {
    u32 z = 0x4400;

    if (blockID >= 0) {
        if (lane == POLYRHYTHM_LANE_UPSIDE) {
            z += 0x400;
        }
        z += 4;
        z += (blockID * 4);
    }
    return z;
}


#include "asm/engines/polyrhythm/asm_080364f4.s"


// Init. Rods
void polyrhythm_init_rods(void) {
    struct PolyrhythmRod *rod = gPolyrhythm->rods;
    u32 i;

    for (i = 0; i < POLYRHYTHM_ROD_AMOUNT; i++) {
        rod->active = FALSE;
        rod->sprite = sprite_create(gSpriteHandler, anim_polyrhythm_rod, 0, 32, 96, 0, 1, 0, 0x8000);
        rod++;
    }
}


// Get Rod Next Y Offset
s32 func_080365c8(struct PolyrhythmRod *rod, s32 h) {
    s32 block1, block2;
    s32 h1, h2;

    h += 8;
    block1 = (h - 2) >> 4;
    block2 = (h + 2) >> 4;
    h1 = polyrhythm_get_block_height(rod->lane, block1);
    h2 = polyrhythm_get_block_height(rod->lane, block2);

    return (h2 < h1) ? h1 : h2;
}


#include "asm/engines/polyrhythm/asm_080365f8.s"


// Get Rod Next Horizontal
s32 func_08036604(struct PolyrhythmRod *rod) {
    return (rod->runningTime * 384 / rod->maxDuration) - 0x80;
}


// Get Rod Next Layer
s32 func_0803661c(struct PolyrhythmRod *rod, s32 h) {
    s32 block = (h + 6) >> 4;

    return polyrhythm_get_block_z(rod->lane, block) - 2;
}


// Update Rod (State 0)
void func_08036630(struct PolyrhythmRod *rod) {
    s32 prevYOffset;
    s32 prevHorizontal;
    u32 prevZ;
    s32 x, y;
    u32 z;

    prevYOffset = rod->yOffset;
    prevHorizontal = rod->horizontal;
    prevZ = sprite_get_data(gSpriteHandler, rod->sprite, 6);

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
        sprite_set_playback(gSpriteHandler, rod->sprite, 0, 0, 0);
    }

    rod->x = rod->horizontal;
    rod->y = (-rod->horizontal / 2) + (-rod->yOffset);
    x = polyrhythm_get_lane_start_x(rod->lane) + rod->x;
    y = polyrhythm_get_lane_start_y(rod->lane) + rod->y;
    sprite_set_x_y_z(gSpriteHandler, rod->sprite, x, y, z);
    sprite_set_visible(gSpriteHandler, rod->sprite, TRUE);
    rod->runningTime++;
    if (rod->runningTime > (rod->maxDuration - ticks_to_frames(0x18))) {
        rod->active = FALSE;
    }
}


#include "asm/engines/polyrhythm/asm_08036758.s"

#include "asm/engines/polyrhythm/asm_08036848.s"


// Stub
void func_08036988(void) {
}


// Update Rods
void polyrhythm_update_rods(void) {
    struct PolyrhythmRod *rod;
    u32 i;
    s32 x, y;
    u32 z;

    for (rod = gPolyrhythm->rods, i = 0; i < POLYRHYTHM_ROD_AMOUNT; rod++, i++) {
        if (rod->active) {
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
                    x = sprite_get_data(gSpriteHandler, rod->sprite, 4);
                    y = sprite_get_data(gSpriteHandler, rod->sprite, 5);
                    z = sprite_get_data(gSpriteHandler, rod->sprite, 6);
                    sprite_create(gSpriteHandler, anim_polyrhythm_rod_explode, 0, x, y, z, 1, 0, 3);
                    sprite_set_visible(gSpriteHandler, rod->sprite, FALSE);
                    rod->active = FALSE;
                    gameplay_add_cue_result(gameplay_get_marking_criteria(), 2, 0);
                    play_sound(&s_f_poly_blast_seqData);
                }
            }
        }
    }
}


// Spawn Rod
void polyrhythm_spawn_rod(u32 lane) {
    struct PolyrhythmRod *rod = gPolyrhythm->rods;
    u32 i;

    for (i = 0; i < POLYRHYTHM_ROD_AMOUNT; i++) {
        if (!rod->active) {
            break;
        }
        rod++;
    }

    if (i >= POLYRHYTHM_ROD_AMOUNT) {
        return;
    }

    rod->active = TRUE;
    rod->stopped = FALSE;
    rod->horizontal = 0;
    rod->yOffset = 16;
    rod->runningTime = 0;
    rod->maxDuration = ticks_to_frames(0x120);
    rod->lane = lane;
    rod->unk0_b4 = 0;
    rod->timeUntilExplosion = ticks_to_frames(0x18);
    sprite_set_playback(gSpriteHandler, rod->sprite, 1, 0, 0);
    sprite_set_anim_speed(gSpriteHandler, rod->sprite, INT_TO_FIXED(2.0));
}


// Engine Event 03 (Spawn Rod)
void polyrhythm_event_spawn_rod(u32 lane) {
    polyrhythm_spawn_rod(lane);
}


#include "asm/engines/polyrhythm/asm_08036b48.s"

#include "asm/engines/polyrhythm/asm_08036b94.s"

#include "asm/engines/polyrhythm/asm_08036be0.s"
