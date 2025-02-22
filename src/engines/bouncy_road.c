#include "engines/bouncy_road.h"
#include "src/affine_sprite.h"

// For readability.
#define gBouncyRoad ((struct BouncyRoadEngineData *)gCurrentEngineData)

enum BouncyBallState {
    /* 00 */ BOUNCY_BALL_STATE_DEFAULT,
    /* 01 */ BOUNCY_BALL_STATE_BOUNCING,
    /* 02 */ BOUNCY_BALL_STATE_FALLING,
};


/* BOUNCY ROAD */


// Initialise Balls
void bouncy_road_init_balls(void) {
    struct BouncyBall *ball;
    u32 i;

    for (i = 0; i < TOTAL_BOUNCY_BALLS; i++) {
        ball = &gBouncyRoad->balls[i];
        ball->sprite = create_affine_sprite(anim_bouncy_road_ball, 0, 0, 0, 0, 0x100, 0, 0, 0, 0x8000, 0);
        ball->active = FALSE;
    }

    gBouncyRoad->nextBallId = 0;
    gBouncyRoad->nextBallPlaysGoalSFX = 0;
}


// Engine Event 0x00 (Deploy Ball)
void bouncy_road_deploy_ball(u32 ticksPerBounce) {
    struct BouncyBall *ball;
    u32 pathLength;
    u32 i;

    for (i = 0; i < TOTAL_BOUNCY_BALLS; i++) {
        ball = &gBouncyRoad->balls[i];
        if (!ball->active) {
            break;
        }
    }
    if (i >= TOTAL_BOUNCY_BALLS) {
        return;
    }

    ball->active = TRUE;
    ball->missed = FALSE;
    pathLength = bouncy_road_get_path_length();
    ball->bounceTicks = ticksPerBounce;
    ball->bounceFrames = ticks_to_frames(ticksPerBounce);
    ball->nextNode = 0;
    ball->bounceClock = 0;
    ball->runningFrames = 0;
    ball->totalFrames = ticks_to_frames((pathLength - 1) * ticksPerBounce);
    ball->id = gBouncyRoad->nextBallId++;
    ball->state = BOUNCY_BALL_STATE_DEFAULT;
    ball->playGoalSfx = gBouncyRoad->nextBallPlaysGoalSFX;
    gBouncyRoad->nextBallPlaysGoalSFX = FALSE;
    ball->markingCriteria = gameplay_get_marking_criteria();
    affine_sprite_set_base_palette(ball->sprite, gBouncyRoad->nextBallPalette);
}


// Bounce Ball
void bouncy_road_bounce_ball_sync(u32 id, s32 offsetFrames) {
    struct BouncyBall *ball;
    u32 i;

    for (i = 0; i < TOTAL_BOUNCY_BALLS; i++) {
        ball = &gBouncyRoad->balls[i];
        if (ball->active && (ball->id == id)) {
            ball->state = BOUNCY_BALL_STATE_BOUNCING;
            ball->arcCurrentFrame = 0;
            ball->arcTotalFrames = ticks_to_frames(ball->bounceTicks) + offsetFrames;
            return;
        }
    }
}


// Engine Event 0x01 (Bounce Ball)
void bouncy_road_bounce_ball(u32 id) {
    bouncy_road_bounce_ball_sync(id, 0);
}


// Bounce Ball (Miss)
void bouncy_road_fumble_ball(u32 id) {
    struct BouncyBall *ball;
    u32 i;

    for (i = 0; i < TOTAL_BOUNCY_BALLS; i++) {
        ball = &gBouncyRoad->balls[i];
        if (ball->active && (ball->id == id)) {
            ball->state = BOUNCY_BALL_STATE_FALLING;
            ball->arcCurrentFrame = 0;
            ball->arcTotalFrames = ticks_to_frames(ball->bounceTicks);
            return;
        }
    }
}


// Get Ball Object by ID
struct BouncyBall *bouncy_road_get_ball(s32 id) {
    u32 i;

    if (id < 0) {
        return NULL;
    }

    for (i = 0; i < TOTAL_BOUNCY_BALLS; i++) {
        if (gBouncyRoad->balls[i].id == id) {
            return &gBouncyRoad->balls[i];
        }
    }

    return NULL;
}


// Play Bounce Sound
void bouncy_road_play_bounce_sfx(u32 distance) {
    u32 dist, volume;

    dist = clamp_int32(distance, 0, (BOUNCY_PATH_NODE_A + 1));
    volume = clamp_int32((INT_TO_FIXED(1.0) - (dist * 14)), 0, INT_TO_FIXED(1.0));

    if (gBouncyRoad->bounceSfxCooldown == 0) {
        play_sound_w_pitch_volume(&s_change_ball_seqData, volume, 0);
        gBouncyRoad->bounceSfxCooldown = 3;
    }
}


// Engine Event 0x03 (Play Distant Bounce SFX)
void bouncy_road_play_bounce_sfx_far(void) {
    bouncy_road_play_bounce_sfx(100);
}


// Stop Bounce Sound (allowing an alternative sound to play instead)
void bouncy_road_play_bounce_sfx_none(void) {
    stop_sound(&s_change_ball_seqData);
    gBouncyRoad->bounceSfxCooldown = 3;
}


// Update Ball Bounce, Returning Height
s32 bouncy_road_update_ball_bounce(struct BouncyBall *ball) {
    s32 maxHeight, midpoint, point;

    ball->arcCurrentFrame++;
    if (ball->arcCurrentFrame >= ball->arcTotalFrames) {
        ball->state = BOUNCY_BALL_STATE_DEFAULT;
        return 0;
    }

    midpoint = ball->arcTotalFrames / 2;
    point = ball->arcCurrentFrame - midpoint;
    maxHeight = (50 * ball->bounceTicks) / 24;
    maxHeight = FIXED_POINT_MUL(gBouncyRoad->bounceHeightScale, maxHeight);
    return ((maxHeight * point * point) / (midpoint * midpoint)) - maxHeight;
}


// Update Ball Fall, Returning Height
s32 bouncy_road_update_ball_fall(struct BouncyBall *ball) {
    s32 maxHeight, midpoint, point;

    ball->arcCurrentFrame++;
    if (ball->arcCurrentFrame >= ball->arcTotalFrames) {
        ball->active = FALSE;
        affine_sprite_set_visible(ball->sprite, FALSE);
        return 0;
    }

    midpoint = ball->arcTotalFrames / 2;
    point = (ball->arcCurrentFrame * 2) - midpoint;
    maxHeight = (25 * ball->bounceTicks) / 24;
    return ((maxHeight * point * point) / (midpoint * midpoint)) - maxHeight;
}


// Update Ball
void bouncy_road_update_ball(struct BouncyBall *ball) {
    u32 markingCriteria;
    s32 startAngle, endAngle;
    s32 angle, height, x, y, z, scale;

    ball->runningFrames++;
    if (ball->runningFrames >= ball->totalFrames) {
        affine_sprite_set_visible(ball->sprite, FALSE);
        ball->active = FALSE;

        if (ball->state != BOUNCY_BALL_STATE_FALLING) {
            affine_sprite_set_anim_cel(gBouncyRoad->pathNodes[BOUNCY_PATH_NODE_LAST], 0);
            if (ball->playGoalSfx) {
                bouncy_road_play_bounce_sfx_none();
                play_sound(&s_change_goal_seqData);
            } else {
                bouncy_road_play_bounce_sfx(BOUNCY_PATH_NODE_A - ball->nextNode);
            }
        }

        return;
    }

    // In this moment, 'nextNode' is the node being bounced off here.
    ball->bounceClock -= func_0800c398();
    if (ball->bounceClock < 0) {
        ball->bounceClock += INT_TO_FIXED(ball->bounceTicks);
        if ((ball->nextNode == (BOUNCY_PATH_NODE_A - 1)) || (ball->nextNode == (BOUNCY_PATH_NODE_DPAD - 1))) {
            ball->hitByPlayer[ball->nextNode - (BOUNCY_PATH_NODE_A - 1)] = FALSE;
            markingCriteria = gameplay_get_marking_criteria();
            gameplay_set_marking_criteria(ball->markingCriteria);
            gBouncyRoad->nextCueBallId = ball->id;
            gameplay_spawn_cue(0);
            gameplay_set_marking_criteria(markingCriteria);
        }

        if ((ball->nextNode != BOUNCY_PATH_NODE_A) && (ball->nextNode != BOUNCY_PATH_NODE_DPAD)) {
            bouncy_road_bounce_ball(ball->id);
            if (ball->nextNode < BOUNCY_PATH_LENGTH) {
                affine_sprite_set_anim_cel(gBouncyRoad->pathNodes[ball->nextNode], 0);
            }
            bouncy_road_play_bounce_sfx(BOUNCY_PATH_NODE_A - ball->nextNode);
        } else if (!ball->hitByPlayer[ball->nextNode - BOUNCY_PATH_NODE_A]) {
            bouncy_road_fumble_ball(ball->id);
        }

        ball->nextNode++;
    }

    bouncy_road_get_path_angle_range(&startAngle, &endAngle);
    angle = math_lerp(startAngle, endAngle, ball->runningFrames, ball->totalFrames);
    switch (ball->state) {
        case BOUNCY_BALL_STATE_BOUNCING:
            height = bouncy_road_update_ball_bounce(ball);
            break;
        case BOUNCY_BALL_STATE_FALLING:
            height = bouncy_road_update_ball_fall(ball);
            break;
        default:
            height = 0;
            break;
    }

    if (ball->active) {
        bouncy_road_project_to_screen_xyzs(angle, height, &x, &y, &z, &scale);
        affine_sprite_set_x_y_z(ball->sprite, x, y, z);
        affine_sprite_set_scale(ball->sprite, scale);
        affine_sprite_set_visible(ball->sprite, TRUE);
    }
}


// Update Balls
void bouncy_road_update_balls(void) {
    u32 i;

    for (i = 0; i < TOTAL_BOUNCY_BALLS; i++) {
        struct BouncyBall *ball = &gBouncyRoad->balls[i];

        if (ball->active) {
            bouncy_road_update_ball(ball);
        }
    }
}


// Engine Event 0x02 (Enable Goal SFX for Next Ball)
void bouncy_road_enable_goal_sfx_for_next_ball(void) {
    gBouncyRoad->nextBallPlaysGoalSFX = TRUE;
}


// Engine Event 0x04 (Set Ball Palette)
void bouncy_road_set_ball_palette(u32 palette) {
    gBouncyRoad->nextBallPalette = palette;
}


// Engine Event 0x05 (Set Global Bounce Height Scale)
void bouncy_road_set_bounce_height_scale(s32 heightScale) {
    gBouncyRoad->bounceHeightScale = heightScale;
}


// Project Path Position to Screen
void bouncy_road_project_to_screen_xyzs(s24_8 angle, s32 yOfs, s32 *xReq, s32 *yReq, s32 *zReq, s24_8 *scaleReq) {
    s24_8 zoom;
    s32 x, y;

    x = FIXED_POINT_MUL(BOUNCY_WORLD_WIDTH, coss(angle));
    y = BOUNCY_WORLD_HEIGHT + yOfs;
    zoom = sins(angle) + INT_TO_FIXED(2.0);

    *xReq = FIXED_POINT_DIV(x, zoom) + BOUNCY_PATH_SCREEN_X;
    *yReq = FIXED_POINT_DIV(y, zoom) + BOUNCY_PATH_SCREEN_Y;
    *zReq = zoom;
    *scaleReq = FIXED_POINT_DIV(INT_TO_FIXED(1.0), zoom);
}


// Initialise Path
void bouncy_road_init_path_nodes(void) {
    struct Animation *anim;
    s32 angle, x, y, z, scale, i;

    for (i = 0; i < BOUNCY_PATH_LENGTH; i++) {
        angle = BOUNCY_WORLD_ANGLE_START + ((BOUNCY_WORLD_ANGLE_END - BOUNCY_WORLD_ANGLE_START) * i / BOUNCY_PATH_NODE_LAST);
        bouncy_road_project_to_screen_xyzs(angle, 2, &x, &y, &z, &scale);
        anim = anim_bouncy_road_path;
        if (i == BOUNCY_PATH_NODE_A) {
            anim = anim_bouncy_road_player_a;
        }
        if (i == BOUNCY_PATH_NODE_DPAD) {
            anim = anim_bouncy_road_player_dpad;
        }

        gBouncyRoad->pathNodes[i] = create_affine_sprite(anim, 0x7F, x, y, z + 4, scale, 0, 1, 0x7F, 0, FALSE);
    }
}


// Get Path Start & End Angles
void bouncy_road_get_path_angle_range(s24_8 *startReq, s24_8 *endReq) {
    *startReq = BOUNCY_WORLD_ANGLE_START;
    *endReq = BOUNCY_WORLD_ANGLE_END;
}


// Get Total Path Nodes
u32 bouncy_road_get_path_length(void) {
    return BOUNCY_PATH_LENGTH;
}


// Graphics Init. 3
void bouncy_road_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
    func_080041d0(0x110, 0x100, 0);
}

// Graphics Init. 2
void bouncy_road_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), bouncy_road_gfx_tables[gBouncyRoad->version], 0x2000);
    run_func_after_task(task, bouncy_road_init_gfx3, 0);
}

// Graphics Init. 1
void bouncy_road_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), bouncy_road_buffered_textures);
    run_func_after_task(task, bouncy_road_init_gfx2, 0);
}

// Game Engine Start
void bouncy_road_engine_start(u32 version) {
    struct TextPrinter *textBox;

    gBouncyRoad->version = version;
    bouncy_road_init_gfx1();
    scene_show_obj_layer();

    if (gBouncyRoad->version == BOUNCY_ROAD_VER_REMIX_5) {
        scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BG_PRIORITY_HIGH);
        scene_set_bg_layer_display(BG_LAYER_2, FALSE, 0, 0, 0, 30, BG_PRIORITY_LOW);
        scene_set_bg_layer_display(BG_LAYER_3, FALSE, 0, 0, 0, 31, BG_PRIORITY_HIGH);
        D_03004b10.BLDMOD = (
            BLDMOD_BG1_SRC | BLDMOD_BLEND_MODE(BLEND_MODE_ALPHA)
            | BLDMOD_BG0_TGT | BLDMOD_BG1_TGT | BLDMOD_BG2_TGT | BLDMOD_BG3_TGT
            | BLDMOD_SPRITES_TGT | BLDMOD_BACKDROP_TGT
        );
        D_03004b10.COLEV = 0 | (0x10 << 8);
    }

    bouncy_road_init_path_nodes();
    bouncy_road_init_balls();

    textBox = text_printer_create_new(get_current_mem_id(), 1, 240, 30);
    text_printer_set_x_y(textBox, 0, 8);
    text_printer_set_layer(textBox, 0x800);
    text_printer_center_by_content(textBox, FALSE);
    text_printer_set_palette(textBox, 4);
    text_printer_set_colors(textBox, 0);
    gameplay_set_text_printer(textBox);

    gBouncyRoad->bounceSfxCooldown = 0;
    gBouncyRoad->nextBallPalette = 0;
    gBouncyRoad->bounceHeightScale = INT_TO_FIXED(1.0);
    gameplay_set_input_buttons(DPAD_ALL | A_BUTTON, 0);
}


// Engine Event 0x06 (STUB)
void bouncy_road_engine_event_stub(void) {
}


// Game Engine Update
void bouncy_road_engine_update(void) {
    bouncy_road_update_balls();

    if (gBouncyRoad->bounceSfxCooldown > 0) {
        gBouncyRoad->bounceSfxCooldown--;
    }

    if (D_03004afc & A_BUTTON) {
        affine_sprite_set_anim_cel(gBouncyRoad->pathNodes[BOUNCY_PATH_NODE_A], 0);
    }

    if (D_03004afc & DPAD_ANY) {
        affine_sprite_set_anim_cel(gBouncyRoad->pathNodes[BOUNCY_PATH_NODE_DPAD], 0);
    }
}


// Game Engine Stop
void bouncy_road_engine_stop(void) {
    D_03004b10.BLDMOD = 0;
}


// Cue - Spawn
void bouncy_road_cue_spawn(struct Cue *cue, struct BouncyRoadCue *info, u32 unused) {
    struct BouncyBall *ball = bouncy_road_get_ball(gBouncyRoad->nextCueBallId);
    u32 input;

    info->ballId = gBouncyRoad->nextCueBallId;
    gameplay_set_cue_duration(cue, ticks_to_frames(ball->bounceTicks));
    info->playerNode = ball->nextNode - (BOUNCY_PATH_NODE_A - 1);
    input = A_BUTTON;
    if (info->playerNode == 1) {
        input = DPAD_ANY;
    }
    gameplay_set_cue_input_buttons(cue, input);
    info->hit = FALSE;
}


// Cue - Update
u32 bouncy_road_cue_update(struct Cue *cue, struct BouncyRoadCue *info, u32 runningTime, u32 duration) {
    struct BouncyBall *ball = bouncy_road_get_ball(info->ballId);

    if (runningTime > duration + (duration * 12 / 16)) {
        if (ball->active && !info->hit) {
            play_sound(&s_f_even_splash_seqData);
        }
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void bouncy_road_cue_despawn(struct Cue *cue, struct BouncyRoadCue *info) {
}


// Early Cue Callback
void bouncy_road_early_cue_callback(u32 ballId) {
    bouncy_road_bounce_ball_sync(ballId, 0);
}

// Cue - Hit
void bouncy_road_cue_hit(struct Cue *cue, struct BouncyRoadCue *info, u32 pressed, u32 released) {
    struct BouncyBall *ball = bouncy_road_get_ball(info->ballId);
    s32 timingOffset = gameplay_get_last_hit_offset();
    u32 missed = ball->missed;

    if (!ball->active || missed) {
        gameplay_ignore_this_cue_result();
        bouncy_road_input_event(pressed, 0);
        return;
    }

    ball->hitByPlayer[info->playerNode] = TRUE;
    if (timingOffset < 0) {
        schedule_function_call((u16)get_current_mem_id(), bouncy_road_early_cue_callback, info->ballId, -timingOffset);
    } else {
        bouncy_road_bounce_ball_sync(info->ballId, -timingOffset);
    }
    bouncy_road_play_bounce_sfx_none();

    if (pressed & A_BUTTON) {
        play_sound(&s_change_hit_a_seqData);
    } else {
        play_sound(&s_change_hit_b_seqData);
    }

    info->hit = TRUE;
}


// Cue - Barely
void bouncy_road_cue_barely(struct Cue *cue, struct BouncyRoadCue *info, u32 pressed, u32 released) {
    bouncy_road_cue_hit(cue, info, pressed, released);
}


// Cue - Miss
void bouncy_road_cue_miss(struct Cue *cue, struct BouncyRoadCue *info) {
    struct BouncyBall *ball = bouncy_road_get_ball(info->ballId);

    beatscript_enable_loops();
    if (!ball->missed) {
        bouncy_road_play_bounce_sfx(0);
    }
    ball->missed = TRUE;
}


// Input Event
void bouncy_road_input_event(u32 pressed, u32 released) {
    if (pressed & A_BUTTON) {
        play_sound(&s_change_a_seqData);
    }

    if (pressed & DPAD_ANY) {
        play_sound(&s_change_b_seqData);
    }
}


// Common Event 0 (Beat Animation, Unimplemented)
void bouncy_road_common_beat_animation(void) {
}


// Common Event 1 (Display Text, Unimplemented)
void bouncy_road_common_display_text(void) {
}
