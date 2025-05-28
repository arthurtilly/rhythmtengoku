#pragma once

#include "global.h"
#include "engines.h"

#include "games/bouncy_road/graphics/bouncy_road_graphics.h"

// Engine Macros/Enums:
enum BouncyRoadVersionsEnum {
    BOUNCY_ROAD_VER_0,
    BOUNCY_ROAD_VER_REMIX_5,
    BOUNCY_ROAD_VER_2
};

#define TOTAL_BOUNCY_BALLS          10
#define BOUNCY_PATH_LENGTH          15
#define BOUNCY_PATH_NODE_LAST       (BOUNCY_PATH_LENGTH - 1)
#define BOUNCY_PATH_NODE_DPAD       (BOUNCY_PATH_LENGTH - 2)
#define BOUNCY_PATH_NODE_A          (BOUNCY_PATH_LENGTH - 3)
#define BOUNCY_WORLD_ANGLE_START    (INT_TO_FIXED(2.1))
#define BOUNCY_WORLD_ANGLE_END      (INT_TO_FIXED(-2.04))
#define BOUNCY_WORLD_WIDTH          356
#define BOUNCY_WORLD_HEIGHT         140
#define BOUNCY_PATH_SCREEN_X        8
#define BOUNCY_PATH_SCREEN_Y        -40


// Engine Types:
struct BouncyRoadEngineData {
    u8 version;
    struct AffineSprite *pathNodes[BOUNCY_PATH_LENGTH];
    struct BouncyBall {
        struct AffineSprite *sprite;
        u32 active:1;
        u32 state:4;
        u32 playGoalSfx:1;
        u32 missed:1;
        u32 unused:25;
        u16 id;
        u16 bounceTicks;
        u16 bounceFrames;
        u8 nextNode;
        s24_8 bounceClock;
        u32 runningFrames;
        u32 totalFrames;
        u32 arcCurrentFrame;
        u32 arcTotalFrames;
        u8 hitByPlayer[2];
        u8 markingCriteria;
    } balls[TOTAL_BOUNCY_BALLS];
    u16 nextBallId;
    u8 nextBallPlaysGoalSFX;
    u8 bounceSfxCooldown;
    u16 nextCueBallId;
    u8 nextBallPalette;
    u16 bounceHeightScale;
};

struct BouncyRoadCue {
    u16 ballId;
    u8 playerNode;
    u8 hit;
};


// Engine Definition Data:
extern struct Animation *bouncy_road_player_bouncer_anim[];
extern struct CompressedData *bouncy_road_buffered_textures[];
extern struct GraphicsTable *bouncy_road_gfx_tables[];


// Functions:
extern void bouncy_road_init_balls(void);
extern void bouncy_road_deploy_ball(u32 interval);      // Engine Event 00 (Deploy Ball)
extern void bouncy_road_bounce_ball_sync(u32 id, s32 offsetFrames);
extern void bouncy_road_bounce_ball(u32 id);            // Engine Event 01 (Bounce Ball)
extern void bouncy_road_fumble_ball(u32 id);
extern struct BouncyBall *bouncy_road_get_ball(s32 id);
extern void bouncy_road_play_bounce_sfx(u32 distance);
extern void bouncy_road_play_bounce_sfx_far(void);      // Engine Event 03 (Play Distant Bounce SFX)
extern void bouncy_road_play_bounce_sfx_none(void);
extern s32 bouncy_road_update_ball_bounce(struct BouncyBall *ball);
extern s32 bouncy_road_update_ball_fall(struct BouncyBall *ball);
extern void bouncy_road_update_ball(struct BouncyBall *ball);
extern void bouncy_road_update_balls(void);
extern void bouncy_road_enable_goal_sfx_for_next_ball(void);        // Engine Event 02 (Enable Goal SFX For This Ball)
extern void bouncy_road_set_ball_palette(u32 palette);              // Engine Event 04 (Set Ball Palette)
extern void bouncy_road_set_bounce_height_scale(s32 heightScale);   // Engine Event 05 (Set Global Bounce Height Scale)
extern void bouncy_road_project_to_screen_xyzs(s24_8 angle, s32 yOfs, s32 *xReq, s32 *yReq, s32 *zReq, s24_8 *scaleReq);
extern void bouncy_road_init_path_nodes(void);
extern void bouncy_road_get_path_angle_range(s24_8 *startReq, s24_8 *endReq);
extern u32 bouncy_road_get_path_length(void);
extern void bouncy_road_init_gfx3(void);                // Graphics Init. 3
extern void bouncy_road_init_gfx2(void);                // Graphics Init. 2
extern void bouncy_road_init_gfx1(void);                // Graphics Init. 1
extern void bouncy_road_engine_start(u32 version);      // Game Engine Start
extern void bouncy_road_engine_event_stub(void);        // Engine Event 06 (STUB)
extern void bouncy_road_engine_update(void);            // Game Engine Update
extern void bouncy_road_engine_stop(void);              // Game Engine Stop
extern void bouncy_road_cue_spawn(struct Cue *, struct BouncyRoadCue *, u32 unused);                 // Cue - Spawn
extern u32  bouncy_road_cue_update(struct Cue *, struct BouncyRoadCue *, u32 runningTime, u32 duration); // Cue - Barely
extern void bouncy_road_cue_despawn(struct Cue *, struct BouncyRoadCue *);                           // Cue - Despawn
extern void bouncy_road_early_cue_callback(u32 ballId);
extern void bouncy_road_cue_hit(struct Cue *, struct BouncyRoadCue *, u32 pressed, u32 released);    // Cue - Hit
extern void bouncy_road_cue_barely(struct Cue *, struct BouncyRoadCue *, u32 pressed, u32 released); // Cue - Barely
extern void bouncy_road_cue_miss(struct Cue *, struct BouncyRoadCue *);                              // Cue - Miss
extern void bouncy_road_input_event(u32 pressed, u32 released);                                      // Input Event
extern void bouncy_road_common_beat_animation(void);    // Common Event 0 (Beat Animation, Unimplemented)
extern void bouncy_road_common_display_text(void);      // Common Event 1 (Display Text, Unimplemented)
