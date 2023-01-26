#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct SneakySpiritsInfo {
    struct TextObject1 *unk0;  // Pointer: Font? (Related to Tutorial Text)
    u8  version;        // Value:   Version
    u8  rainSlow;       // Flag:    Slow-Motion Rain
    s16 rainDrops[30];      // Sprite:  Raindrops
    u16 rainDropNext;       // Counter: Next Raindrop to Update
    s16 rainSplashes[20];   // Sprite:  Rain Splashes
    u16 rainSplashNext;     // Counter: Next Rain Splash to Update
    s16 tree;           // Sprite:  Tree
    s16 bow;            // Sprite:  Bow
    u8  arrowReady;     // Flag:    Bow Has Arrow
    s16 door;           // Sprite:  Door
    s16 backWall;       // Sprite:  Back Wall
    s16 ghostWalk;      // Sprite:  Sneaky Spirit (Moving)
    u16 maxSteps;       // Const:   7 (total number of horizontal positions the ghost can appear)
    s16 ghostMask;      // Sprite:  Wall Mask (used to hide the Sneaky Spirit when moving low)
    s16 ghostHit;       // Sprite:  Sneaky Spirit (Hit)
    u16 ghostHeight;    // Value:   Sneaky Spirit Height of Next Motion { Default = 0x100 }
    struct SoundPlayer *rainChannel; // Pointer: Audio Channel Playing Wind/Rain SFX
    s16 text;           // Sprite:  Tutorial Text
    u8  slowMotionHit;  // Flag:    Slow-Motion Effect On Hit
    u8  freezeRain;     // Flag:    Freeze Slow-Motion Rain
    s16 tutorialGhost;  // Sprite:  Sneaky Spirit (Tutorial Example)
};

struct SneakySpiritsCue {
    u32 unused0;
    u32 unused4;
    u32 unused8;
    u32 unusedC;
    u32 unused10;
    u32 unused14;
    u32 unused18;
    u32 unused1C;
    u32 unused20;
    u16 unused24;
    u8 disableTaunt;
};


// Engine Macros/Enums:
enum SneakySpiritsVersionsEnum {
    SNEAKY_SPIRITS_VERSION_1,
    SNEAKY_SPIRITS_VERSION_REMIX,
    SNEAKY_SPIRITS_VERSION_2
};


// OAM Animations:
extern const struct Animation anim_sneaky_spirits_bow[]; // Animation: "bow_draw"
extern const struct Animation anim_sneaky_spirit_hit[]; // Animation: "ghost_hit"
extern const struct Animation anim_sneaky_spirits_back_wall[]; // Animation: "door_back_wall"
extern const struct Animation anim_sneaky_spirits_door[]; // Animation: "door_open"
extern const struct Animation anim_sneaky_spirit_taunt[]; // Animation: "ghost_miss_taunt"
extern const struct Animation anim_sneaky_spirits_arrow_miss[]; // Animation: "arrow_miss"
extern const struct Animation anim_sneaky_spirit_scared_early[]; // Animation: "ghost_barely_scared"
extern const struct Animation anim_sneaky_spirits_tree[]; // Animation: "tree"
extern const struct Animation anim_sneaky_spirit_walk[]; // Animation: "ghost_walk"
extern const struct Animation anim_sneaky_spirit_dash[]; // Animation: "ghost_miss_dash"
extern const struct Animation anim_sneaky_spirits_rain[]; // Animation: "rain_fall"
extern const struct Animation anim_sneaky_spirits_splash[]; // Animation: "rain_splash"
extern const struct Animation anim_sneaky_spirits_rain_slow[]; // Animation: "rain_fall_slow"
extern const struct Animation anim_sneaky_spirits_bow_shoot[]; // Animation: "bow_shoot"
extern const struct Animation anim_sneaky_spirits_wall_mask[]; // Animation: "ghost_mask" (might be masking)
extern const struct Animation anim_sneaky_spirit_scared_late[]; // Animation: "ghost_barely_run"
extern const struct Animation anim_sneaky_spirit_hit_effect[]; // Animation: "arrow_hit"
extern const struct Animation anim_sneaky_spirit_tutorial[]; // Animation: "ghost_dash_tutorial"


// Palettes:


// Sound Effects:
extern const struct SequenceData s_ghost_rain_seqData;           // Sound: Wind/Rain
extern const struct SequenceData s_ghost_gosha_seqData;          // Sound: Arrow Missed
extern const struct SequenceData s_ghost_walk_seqData;           // Sound: Ghost Moving
extern const struct SequenceData s_f_aim_just_hit_seqData;       // Sound: Ghost Hit
extern const struct SequenceData s_f_aim_just_hit_voice_seqData; // Sound: Ghost Hit Voice
extern const struct SequenceData s_ghost_miss_hit_seqData;       // Sound: Ghost Barely
extern const struct SequenceData s_ghost_dash_seqData;           // Sound: Ghost Miss
extern const struct SequenceData s_ghost_warai_seqData;          // Sound: Ghost Miss Voice


// Engine Data:
extern char D_08059f90[];   // Empty Default Text


// Engine Definition Data:
extern const struct CompressedGraphics *const sneaky_spirits_buffered_textures[]; // Buffered Textures List
extern const struct GraphicsTable *const sneaky_spirits_gfx_tables[]; // Graphics Table


// Functions:
extern void sneaky_spirits_show_ghost(u32); // Engine Event 00 (Show Ghost)
extern void sneaky_spirits_init_rain(void); // Initialise Rain
extern void sneaky_spirits_update_fast_rain(void); // Update Rain
extern void sneaky_spirits_update_rain(void); // Update Rain If Not In Slow-Motion
extern void sneaky_spirits_set_rain_speed(u32); // Set Rain Speed
extern void sneaky_spirits_event_set_rain_speed(u32); // Engine Event 06 (Set Rain Speed)
extern void sneaky_spirits_freeze_slow_rain(u32); // Engine Event 07 (Freeze Slow-Motion Rain)
extern void sneaky_spirits_init_gfx3(void); // Graphics Init. 3
extern void sneaky_spirits_init_gfx2(void); // Graphics Init. 2
extern void sneaky_spirits_init_gfx1(void); // Graphics Init. 1
extern void sneaky_spirits_engine_start(u32 version); // Game Engine Start
extern void sneaky_spirits_engine_event_stub(void); // Engine Event 0A (Stub)
extern void sneaky_spirits_set_ghost_height(u32); // Engine Event 01 (Set Next Vertical Position)
extern void sneaky_spirits_spawn_bow(void); // Engine Event 02 (Spawn Bow)
extern void sneaky_spirits_draw_bow(void); // Engine Event 03 (Draw Bow)
extern void sneaky_spirits_enable_wind_sfx(u32); // Engine Event 04 (Play Wind/Rain SFX)
extern void sneaky_spirits_update_wind_sfx(void); // Cross-Fade Music and Wind/Rain SFX
extern void sneaky_spirits_display_text(char *); // Engine Event 05 (Display Text)
extern void sneaky_spirits_display_tutorial_ghost(u32); // Engine Event 08 (Display Tutorial Sneaky Spirit)
extern void sneaky_spirits_animate_tutorial_ghost(u32); // Engine Event 09 (Animate Tutorial Sneaky Spirit)
extern void sneaky_spirits_engine_update(void); // Game Engine Update
extern void sneaky_spirits_engine_stop(void); // Game Engine Close
extern void sneaky_spirits_cue_spawn(struct Cue *, struct SneakySpiritsCue *, u32 disableTaunt); // Cue - Spawn
extern u32  sneaky_spirits_cue_update(struct Cue *, struct SneakySpiritsCue *, u32 runningTime, u32 duration); // Cue - Update
extern void sneaky_spirits_cue_despawn(struct Cue *, struct SneakySpiritsCue *); // Cue - Despawn
extern void sneaky_spirits_stop_slow_motion(void); // Revert Slow-Motion Effects
extern void sneaky_spirits_cue_hit(struct Cue *, struct SneakySpiritsCue *, u32 pressed, u32 released); // Cue - Hit
extern void sneaky_spirits_cue_barely(struct Cue *, struct SneakySpiritsCue *, u32 pressed, u32 released); // Cue - Barely
extern void sneaky_spirits_cue_miss(struct Cue *, struct SneakySpiritsCue *); // Cue - Miss
extern void sneaky_spirits_input_event(u32 pressed, u32 released); // Input Event
extern void sneaky_spirits_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void sneaky_spirits_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
