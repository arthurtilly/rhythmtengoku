#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

#include "games/drum_live/graphics/drum_live_graphics.h"

// Engine Types:
struct DrumLiveInfo {
    /* add fields here */
};

struct DrumLiveCue {
    /* add fields here */
};


// Engine Macros/Enums:
enum DrumLiveVersionsEnum {
    ENGINE_VER_DRUM_GIRLS_LIVE,
    ENGINE_VER_DRUM_BOYS_LIVE,
    ENGINE_VER_DRUM_SAMURAI_BAND_LIVE
};

enum DrumLiveAnimationsEnum {
    LIVE_ANIM_DRUMMER_HEAD,
    LIVE_ANIM_DRUMMER_BODY,
    LIVE_ANIM_DRUMMER_HEAD_TURN_L,
    LIVE_ANIM_DRUMMER_HEAD_TURN_R,
    LIVE_ANIM_DRUMMER_USE_SPLASH,
    LIVE_ANIM_DRUMMER_USE_SNARE_L,
    LIVE_ANIM_DRUMMER_USE_CRASH,
    LIVE_ANIM_DRUMMER_USE_SNARE_R,
    LIVE_ANIM_DRUMMER_USE_HIHAT,
    LIVE_ANIM_DRUMMER_USE_TOM,
    LIVE_ANIM_DRUM_KIT_SPLASH,
    LIVE_ANIM_DRUM_KIT_CRASH,
    LIVE_ANIM_DRUM_KIT_BASS_L,
    LIVE_ANIM_DRUM_KIT_BASS_R,
    LIVE_ANIM_DRUM_KIT_SNARE,
    LIVE_ANIM_DRUM_KIT_HIHAT,
    LIVE_ANIM_DRUM_KIT_TOM,
    LIVE_ANIM_BASSIST_HEAD,
    LIVE_ANIM_BASSIST_BODY,
    LIVE_ANIM_BASSIST_LEGS,
    LIVE_ANIM_BASSIST_ARM_L,
    LIVE_ANIM_BASSIST_ARM_R,
    LIVE_ANIM_BASSIST_CROUCH,
    LIVE_ANIM_BASSIST_JUMP,
    LIVE_ANIM_BASSIST_HEAD_TURN_L,
    LIVE_ANIM_BASSIST_HEAD_TURN_R,
    LIVE_ANIM_BASSIST_JUMP_STRUM,
    LIVE_ANIM_GUITARIST_HEAD,
    LIVE_ANIM_GUITARIST_BODY,
    LIVE_ANIM_GUITARIST_LEGS,
    LIVE_ANIM_GUITARIST_ARM_L,
    LIVE_ANIM_GUITARIST_ARM_R,
    LIVE_ANIM_GUITARIST_CROUCH,
    LIVE_ANIM_GUITARIST_JUMP,
    LIVE_ANIM_GUITARIST_JUMP_STRUM,
    LIVE_ANIM_GUITARIST_HEAD_TURN_R,
    LIVE_ANIM_GUITARIST_HEAD_TURN_L,
    LIVE_ANIM_REC_MODE_ICON,
    LIVE_ANIM_ADJUST_MODE_ICON,
    LIVE_ANIM_BUSY_ICON,
    LIVE_ANIM_MICROPHONE,
    LIVE_ANIM_LIGHT_FLASH
};


// Engine Definition Data:
extern struct Animation **drum_live_anim_table[];
extern Palette *drum_live_obj_palettes[];
extern Palette *drum_live_bg_palettes[];
extern u16 D_089e06b0[];
extern u8 D_089e06c0[];
extern u16 *D_089e0758[];
extern struct DrumTechKit *drum_live_kits[];
extern struct CompressedGraphics *drum_live_buffered_textures[];
extern struct GraphicsTable *drum_live_gfx_tables[];
extern struct Vector2 D_089e0ab0[];
extern u8 drum_live_guitarist_anim_map_head[];
extern u8 drum_live_guitarist_anim_map_body[];
extern u8 drum_live_guitarist_anim_map_legs[];
extern u8 drum_live_guitarist_anim_map_arm_l[];
extern u8 drum_live_guitarist_anim_map_arm_r[];
extern u8 drum_live_guitarist_anim_map_crouch[];
extern u8 drum_live_guitarist_anim_map_jump_strum[];
extern u8 drum_live_guitarist_anim_map_jump[];
extern u8 drum_live_kit_map[];


// Functions:
extern struct Animation *drum_live_get_anim(u32 anim); // Get Animation
// extern ? func_08025248(?);
// extern ? func_08025460(?);
// extern ? func_08025538(?);
// extern ? func_0802555c(?);
// extern ? func_080255f8(?);
extern void func_08025748(); // DRUM LIVE - Engine Event 0x05 (?)
// extern ? func_0802575c(?);
// extern ? func_080257b8(?);
// extern ? func_08025848(?);
// extern ? func_080258c0(?);
extern void func_08025a2c(); // DRUM LIVE - Engine Event 0x06 (?)
extern void func_08025a58(); // DRUM LIVE - Engine Event 0x07 (?)
// extern ? func_08025a64(?);
extern void func_08025a98(); // DRUM LIVE - Engine Event 0x02 (?)
// extern ? func_08025aa4(?);
// extern ? func_08025abc(?);
extern void func_08025ad4(); // DRUM LIVE - Engine Event 0x03 (?)
extern void func_08025ae8(); // DRUM LIVE - Engine Event 0x04 (?)
// extern ? func_08025afc(?);
// extern ? func_08025b88(?);
extern void func_08025bcc(); // DRUM LIVE - Engine Event 0x09 (?)
// extern ? func_08025be0(?);
// extern ? func_08025bec(?);
extern void func_08025c48(); // Drum LIVE Kit Event - D-Pad Up (Drum Roll)
extern void func_08025c4c(); // Drum LIVE Kit Event - D-Pad Down
extern void func_08025c8c(); // Drum LIVE Kit Event - B Button
// extern ? func_08025ccc(?);
extern void func_08025cd0(); // Drum LIVE Kit Event - D-Pad Left
extern void func_08025d34(); // Drum LIVE Kit Event - A Button
extern void func_08025d98(); // Drum LIVE Kit Event - ?
extern void func_08025d9c(); // Drum LIVE Kit Event - D-Pad Right
extern void func_08025e00(); // Drum LIVE Kit Event - D-Pad Up (Hi-Hat)
extern void func_08025e74(); // Drum LIVE Kit Event - L Button
extern void func_08025ed8(); // Drum LIVE Kit Event - R Button
extern void drum_live_init_gfx3(void); // Graphics Init. 3
extern void drum_live_init_gfx2(void); // Graphics Init. 2
extern void drum_live_init_gfx1(void); // Graphics Init. 1
// extern ? func_08025fbc(?);
extern void drum_live_engine_start(u32 version); // DRUM LIVE - Game Engine Start
extern void drum_live_engine_event_stub(void); // DRUM LIVE - Engine Event 0x0A (STUB)
// extern ? func_08026640(?);
extern void func_080268cc(); // DRUM LIVE - Engine Event 0x00 (?)
// extern ? func_08026930(?);
extern void func_08026968(); // DRUM LIVE - Engine Event 0x01 (?)
extern void func_080269e8(); // DRUM LIVE - Engine Event 0x08 (?)
// extern ? func_08026a0c(?);
// extern ? func_08026a50(?);
extern void drum_live_engine_update(void); // DRUM LIVE - Game Engine Update
// extern ? func_08026b0c(?);
// extern ? func_08026b18(?);
extern void drum_live_engine_stop(void); // DRUM LIVE - Game Engine Stop
// extern ? func_08026b3c(?);
extern void drum_live_cue_spawn(struct Cue *, struct DrumLiveCue *, u32 param); // DRUM LIVE - Cue Spawn
extern u32  drum_live_cue_update(struct Cue *, struct DrumLiveCue *, u32 runningTime, u32 duration); // DRUM LIVE - Cue Update
extern void drum_live_cue_despawn(struct Cue *, struct DrumLiveCue *); // DRUM LIVE - Cue Despawn
// extern ? func_08026c3c(?);
extern void drum_live_cue_hit(struct Cue *, struct DrumLiveCue *, u32 pressed, u32 released); // DRUM LIVE - Cue Hit
extern void drum_live_cue_barely(struct Cue *, struct DrumLiveCue *, u32 pressed, u32 released); // DRUM LIVE - Cue Barely
extern void drum_live_cue_miss(struct Cue *, struct DrumLiveCue *); // DRUM LIVE - Cue Miss
extern void drum_live_input_event(u32 pressed, u32 released); // DRUM LIVE - Input Event
extern void drum_live_common_beat_animation(void); // DRUM LIVE - Common Event 0 (Beat Animation)
extern void drum_live_common_display_text(void); // DRUM LIVE - Common Event 1 (Display Text, Unimplemented)
extern void drum_live_common_init_tutorial(struct Scene *); // DRUM LIVE - Common Event 2 (Init. Tutorial)
