#pragma once

#include "global.h"
#include "engines.h"

#include "games/bunny_hop/graphics/bunny_hop_graphics.h"

// Engine Types:
struct BunnyHopEngineData {
    u8 pad[0x31c];
};

struct BunnyHopCue {
    /* add fields here */
};


// Engine Data:
extern const char D_0805a8ac[];


// Engine Definition Data:
extern struct CompressedData *bunny_hop_buffered_textures[];
extern struct GraphicsTable *bunny_hop_gfx_tables[];
extern struct SongHeader *bunny_hop_bgm_harmony_parts[];
extern struct SongHeader *bunny_hop_bgm_drum_fills[];
extern Palette *bunny_hop_palettes[];
extern struct Animation *bunny_hop_platform_anim[];


// Functions:
extern void bunny_hop_init_gfx3(void); // Graphics Init. 3
extern void bunny_hop_init_gfx2(void); // Graphics Init. 2
extern void bunny_hop_init_gfx1(void); // Graphics Init. 1
extern void bunny_hop_engine_start(u32 version); // Game Engine Start
extern void bunny_hop_engine_event_stub(void); // Engine Event 00 (STUB)
extern void func_08038248(); // Engine Event 03 (?)
// extern ? func_080382ac(?);
extern void func_080382b0(); // Engine Event 04 (?)
extern void func_080382f4(); // Engine Event 05 (?)
extern void func_08038314(); // Engine Event 06 (?)
extern void func_0803833c(); // Engine Event 07 (?)
extern void bunny_hop_engine_update(void); // Game Engine Update
// extern ? func_08038384(?);
extern void func_080383f0(); // Engine Event 09 (?)
extern void bunny_hop_engine_stop(void); // Game Engine Stop
extern void bunny_hop_cue_spawn(struct Cue *, struct BunnyHopCue *, u32 param); // Cue - Spawn
extern u32  bunny_hop_cue_update(struct Cue *, struct BunnyHopCue *, u32 runningTime, u32 duration); // Cue - Update
extern void bunny_hop_cue_despawn(struct Cue *, struct BunnyHopCue *); // Cue - Despawn
// extern ? func_0803843c(?);
// extern ? func_080384b8(?);
// extern ? func_08038598(?);
extern void bunny_hop_cue_hit(struct Cue *, struct BunnyHopCue *, u32 pressed, u32 released); // Cue - Hit
extern void bunny_hop_cue_barely(struct Cue *, struct BunnyHopCue *, u32 pressed, u32 released); // Cue - Barely
extern void bunny_hop_cue_miss(struct Cue *, struct BunnyHopCue *); // Cue - Miss
extern void bunny_hop_input_event(u32 pressed, u32 released); // Input Event
extern void bunny_hop_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void bunny_hop_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void bunny_hop_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
// extern ? func_080388d8(?);
extern void func_0803899c(); // Engine Event 01 (?)
// extern ? func_08038a84(?);
// extern ? func_08038b98(?);
// extern ? func_08038ce0(?);
// extern ? func_08038d18(?);
// extern ? func_08038d54(?);
// extern ? func_08038ef8(?);
// extern ? func_08038f2c(?);
// extern ? func_08038fbc(?);
// extern ? func_08039128(?);
// extern ? func_08039164(?);
extern void func_0803934c(); // Engine Event 02 (?)
// extern ? func_08039388(?);
// extern ? func_08039404(?);
// extern ? func_08039440(?);
// extern ? func_080394a4(?);
extern void func_080395dc(); // Engine Event 08 (?)
// extern ? func_0803960c(?);
// extern ? func_08039698(?);
// extern ? func_08039738(?);
// extern ? func_0803978c(?);
// extern ? func_080397f8(?);
