#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct TramPaulineInfo {
    /* add fields here */
};

struct TramPaulineCue {
    /* add fields here */
};


// Engine Macros/Enums:
enum TramPaulineVersionsEnum {
    ENGINE_VER_TRAM_PAULINE_TUTORIAL,
    ENGINE_VER_TRAM_PAULINE,
    ENGINE_VER_TRAM_PAULINE_REMIX3,
    ENGINE_VER_TRAM_PAULINE_NO_CURTAIN
};


// OAM Animations:


// Palettes:


// Sound Effects:
extern const struct SequenceData s_hanabi_pon_seqData;
extern const struct SequenceData s_witch_cake_seqData;
extern const struct SequenceData s_witch_donats_seqData;


// Engine Data:
extern const char D_0805a910[];
extern const u32 D_0805a914[];
extern const u32 D_0805a91c[];


// Engine Definition Data:
extern const struct CompressedGraphics *const tram_pauline_buffered_textures[];
extern const struct GraphicsTable *const tram_pauline_gfx_tables[];
extern const struct Animation *const tram_pauline_anim_table[][4][6];


// Functions:
extern void tram_pauline_init_gfx3(void); // Graphics Init. 3
extern void tram_pauline_init_gfx2(void); // Graphics Init. 2
extern void tram_pauline_init_gfx1(void); // Graphics Init. 1
extern void tram_pauline_engine_start(u32 version); // Game Engine Start
extern void func_08040064(); // Engine Event 0x00 (?)
extern void func_080400d0(); // Engine Event 0x01 (?)
// extern ? func_0804016c(?);
// extern ? func_08040314(?);
extern void func_08040434(); // Engine Event 0x02 (?)
// extern ? func_080404c4(?);
// extern ? func_08040718(?);
extern void tram_pauline_engine_update(void); // Game Engine Update
extern void tram_pauline_engine_stop(void); // Game Engine Stop
extern void tram_pauline_cue_spawn(struct Cue *, struct TramPaulineCue *, u32 character); // Cue - Spawn
extern u32  tram_pauline_cue_update(struct Cue *, struct TramPaulineCue *, u32 runningTime, u32 duration); // Cue - Update
extern void tram_pauline_cue_despawn(struct Cue *, struct TramPaulineCue *); // Cue - Despawn
extern void tram_pauline_cue_hit(struct Cue *, struct TramPaulineCue *, u32 pressed, u32 released); // Cue - Hit
extern void tram_pauline_cue_barely(struct Cue *, struct TramPaulineCue *, u32 pressed, u32 released); // Cue - Barely
extern void tram_pauline_cue_miss(struct Cue *, struct TramPaulineCue *); // Cue - Miss
extern void tram_pauline_input_event(u32 pressed, u32 released); // Input Event
extern void tram_pauline_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void tram_pauline_common_display_text(const char *); // Common Event 1 (Display Text)
extern void tram_pauline_common_init_tutorial(const struct Scene *); // Common Event 2 (Init. Tutorial)
