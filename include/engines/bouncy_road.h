#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct BouncyRoadInfo {
};

struct BouncyRoadCue {
};


// Engine Macros/Enums:
enum BouncyRoadVersionsEnum {
    BOUNCY_ROAD_VER_0,
    BOUNCY_ROAD_VER_REMIX5,
    BOUNCY_ROAD_VER_2
};


// OAM Animations:
extern const struct Animation anim_bouncy_road_player_a[];
extern const struct Animation anim_bouncy_road_player_dpad[];
extern const struct Animation anim_bouncy_road_ball[];
extern const struct Animation anim_bouncy_road_path[];


// Palettes:


// Sound Effects:


// Engine Data:


// Engine Definition Data:
extern const struct Animation *const bouncy_road_player_bouncer_anim[];
extern const struct GraphicsTable *const bouncy_road_gfx_tables[];
extern const struct CompressedGraphics *const bouncy_road_buffered_textures[];


// Functions:
// extern ? func_0802dd08(?);
extern void func_0802dd84(u32 interval); // Engine Event 00 (Deploy Ball)
// extern ? func_0802de60(?);
extern void func_0802deb0(); // Engine Event 01 (Bounce Ball)
// extern ? func_0802debc(?);
// extern ? func_0802df08(?);
// extern ? func_0802df44(?);
extern void func_0802df98(); // Engine Event 03 (Play Distance Bounce SFX)
// extern ? func_0802dfa4(?);
// extern ? func_0802dfc8(?);
// extern ? func_0802e024(?);
// extern ? func_0802e078(?);
// extern ? func_0802e208(?);
extern void func_0802e234(); // Engine Event 02 (Enable Goal SFX For This Ball)
extern void func_0802e248(u32 colour); // Engine Event 04 (Set Ball Palette)
extern void func_0802e25c(); // Engine Event 05 (Set Global Bounce Height)
// extern ? func_0802e270(?);
// extern ? func_0802e2f0(?);
// extern ? func_0802e3a4(?);
// extern ? func_0802e3b8(?);
extern void bouncy_road_init_gfx3(void); // Graphics Init. 3
extern void bouncy_road_init_gfx2(void); // Graphics Init. 2
extern void bouncy_road_init_gfx1(void); // Graphics Init. 1
extern void bouncy_road_engine_start(u32 version); // Game Engine Start
extern void bouncy_road_engine_event_stub(); // Engine Event 06 (STUB)
extern void bouncy_road_engine_update(void); // Game Engine Update
extern void bouncy_road_engine_stop(void); // Game Engine Stop
extern void bouncy_road_cue_spawn(struct Cue *, struct BouncyRoadCue *, u32); // Cue - Spawn
extern u32  bouncy_road_cue_update(struct Cue *, struct BouncyRoadCue *, u32 runningTime, u32 duration); // Cue - Barely
extern void bouncy_road_cue_despawn(struct Cue *, struct BouncyRoadCue *); // Cue - Despawn
// extern ? func_0802e644(?);
extern void bouncy_road_cue_hit(struct Cue *, struct BouncyRoadCue *, u32 pressed, u32 released); // Cue - Hit
extern void bouncy_road_cue_barely(struct Cue *, struct BouncyRoadCue *, u32 pressed, u32 released); // Cue - Barely
extern void bouncy_road_cue_miss(struct Cue *, struct BouncyRoadCue *); // Cue - Miss
extern void bouncy_road_input_event(u32 pressed, u32 released); // Input Event
extern void bouncy_road_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void bouncy_road_common_display_text(void); // Common Event 1 (Display Text)
