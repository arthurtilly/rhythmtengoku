#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

#include "games/drum_live/graphics/drum_live_graphics.h"


// VALUES
enum DrumLiveVersionsEnum {
    /* 00 */ ENGINE_VER_DRUM_GIRLS_LIVE,
    /* 01 */ ENGINE_VER_DRUM_BOYS_LIVE,
    /* 02 */ ENGINE_VER_DRUM_SAMURAI_BAND_LIVE
};

enum DrumLivePerformersEnum {
    /* 00 */ LIVE_PERFORMER_DRUMMER,
    /* 01 */ LIVE_PERFORMER_BASSIST,
    /* 02 */ LIVE_PERFORMER_GUITARIST
};

enum DrumLiveAnimationsEnum {
    /* 00 */ LIVE_ANIM_DRUMMER_HEAD,
    /* 01 */ LIVE_ANIM_DRUMMER_BODY,
    /* 02 */ LIVE_ANIM_DRUMMER_HEAD_TURN_L,
    /* 03 */ LIVE_ANIM_DRUMMER_HEAD_TURN_R,
    /* 04 */ LIVE_ANIM_DRUMMER_USE_SPLASH,
    /* 05 */ LIVE_ANIM_DRUMMER_USE_SNARE_L,
    /* 06 */ LIVE_ANIM_DRUMMER_USE_CRASH,
    /* 07 */ LIVE_ANIM_DRUMMER_USE_SNARE_R,
    /* 08 */ LIVE_ANIM_DRUMMER_USE_HIHAT,
    /* 09 */ LIVE_ANIM_DRUMMER_USE_TOM,
    /* 10 */ LIVE_ANIM_DRUM_KIT_SPLASH,
    /* 11 */ LIVE_ANIM_DRUM_KIT_CRASH,
    /* 12 */ LIVE_ANIM_DRUM_KIT_BASS_L,
    /* 13 */ LIVE_ANIM_DRUM_KIT_BASS_R,
    /* 14 */ LIVE_ANIM_DRUM_KIT_SNARE,
    /* 15 */ LIVE_ANIM_DRUM_KIT_HIHAT,
    /* 16 */ LIVE_ANIM_DRUM_KIT_TOM,
    /* 17 */ LIVE_ANIM_BASSIST_HEAD,
    /* 18 */ LIVE_ANIM_BASSIST_BODY,
    /* 19 */ LIVE_ANIM_BASSIST_LEGS,
    /* 20 */ LIVE_ANIM_BASSIST_ARM_L,
    /* 21 */ LIVE_ANIM_BASSIST_ARM_R,
    /* 22 */ LIVE_ANIM_BASSIST_CROUCH,
    /* 23 */ LIVE_ANIM_BASSIST_JUMP,
    /* 24 */ LIVE_ANIM_BASSIST_HEAD_TURN_L,
    /* 25 */ LIVE_ANIM_BASSIST_HEAD_TURN_R,
    /* 26 */ LIVE_ANIM_BASSIST_JUMP_STRUM,
    /* 27 */ LIVE_ANIM_GUITARIST_HEAD,
    /* 28 */ LIVE_ANIM_GUITARIST_BODY,
    /* 29 */ LIVE_ANIM_GUITARIST_LEGS,
    /* 30 */ LIVE_ANIM_GUITARIST_ARM_L,
    /* 31 */ LIVE_ANIM_GUITARIST_ARM_R,
    /* 32 */ LIVE_ANIM_GUITARIST_CROUCH,
    /* 33 */ LIVE_ANIM_GUITARIST_JUMP,
    /* 34 */ LIVE_ANIM_GUITARIST_JUMP_STRUM,
    /* 35 */ LIVE_ANIM_GUITARIST_HEAD_TURN_R,
    /* 36 */ LIVE_ANIM_GUITARIST_HEAD_TURN_L,
    /* 37 */ LIVE_ANIM_REC_MODE_ICON,
    /* 38 */ LIVE_ANIM_ADJUST_MODE_ICON,
    /* 39 */ LIVE_ANIM_BUSY_ICON,
    /* 40 */ LIVE_ANIM_MICROPHONE,
    /* 41 */ LIVE_ANIM_LIGHT_FLASH
};

enum DrumLiveGuitaristStatesEnum {
    /* 00 */ LIVE_GUITARIST_STATE_DEFAULT,
    /* 01 */ LIVE_GUITARIST_STATE_CROUCH,
    /* 02 */ LIVE_GUITARIST_STATE_STRUM_JUMP,
    /* 03 */ LIVE_GUITARIST_STATE_JUMP,
    /* 04 */ LIVE_GUITARIST_STATE_HALF_CROUCH
};

#define DRUM_LIVE_TOTAL_INPUT_DEF   6
#define DRUM_LIVE_TOTAL_LIGHTS      4


// TYPES
struct LiveDrummer {
    s16 head;
    s16 body;
    s16 leftArm;
    s16 rightArm;
    s16 armPosY;
    s16 leftBassDrum;
    s16 rightBassDrum;
    s16 snareDrum;
    s16 tomDrum;
    s16 unk12;
    s16 hiHat;
    s16 splashCymbal;
    s16 crashCymbal;
    u32 padding;
};

struct LiveGuitarist {
    s16 head;
    s16 body;
    s16 leftArm;
    s16 rightArm;
    s16 legs;
    u16 unkA;
    u16 unkC;
    u8 currentState;
    u8 nextState;
    u16 timeUntilNextState;
};

struct DrumLiveEngineData {
    // [0x000]
    u8 version;
    struct DrumTechController drumTech;
    // [0x354]
    struct LiveDrummer drummer;
    // [0x374, 0x388]
    struct LiveGuitarist guitarists[2];
    // [0x39C]
    u32 adjustModeTempo;
    u8 adjustModeEnabled;
    s16 adjustModeIcon;
    s16 busyIcon;
    u16 null3A6;
    // [0x3A8]
    u8 bgMapArea[0x1000];
    // [0x13A8]
    struct BgAnimator dynamicBgMap;
    // [0x13D0]
    u16 unk13D0;
    s24_8 excitementFactor;
    s24_8 excitementBaseInc;
    s24_8 excitementBaseDec;
    // [0x13E0]
    u16 coolInputs[DRUM_LIVE_TOTAL_INPUT_DEF];
    u16 lameInputs[DRUM_LIVE_TOTAL_INPUT_DEF];
    // [0x13F8]
    u8 excitementDisabled;
    u8 totalActiveLights;
    s8 nextFlashType;
    u8 flashTypeCooldown[DRUM_LIVE_TOTAL_LIGHTS];
    s16 lightFlashes[DRUM_LIVE_TOTAL_LIGHTS];
    u8 nextLightFlash;
    s24_8 brightnessLevel;
    s24_8 brightnessInc;
    u8 currentLightStyle;
    u8 nextLightStyle;
    u16 timeUntilNextLightStyle;
    u32 nextLightBRG;
    // [0x141C]
    u16 bgPalBuf1[0x40];
    // [0x149C]
    u16 objPalBuf1[0x40];
    // [0x151C]
    u16 bgPalBuf2[0x40];
    // [0x159C]
    u16 objPalBuf2[0x40];
    // [0x161C]
    u16 bgPalBuf3[0x40];
    // [0x169C]
    u16 bgPalBuf4[0x40];
    // [0x171C]
    u16 objPalBuf3[0x40];
    // [0x179C]
    u16 objPalBuf4[0x40];
    // [0x181C]
    u8 boredomEnabled;
    u16 timeSinceLastInput;
};

struct DrumLiveCue {
    u8 index;
    s8 flashType;
    u16 coolInputs;
    u16 lameInputs;
    s8_8 baseInc;
    s8_8 baseDec;
};


// DATA
extern struct Animation **drum_live_anim_table[];
extern Palette *drum_live_obj_palettes[];
extern Palette *drum_live_bg_palettes[];
extern u16 drum_live_color_masks[];
extern u8 drum_live_brg_targets[];
extern BgMapAnim *drum_live_crowd_bg_maps[];
extern struct DrumTechKit *drum_live_kits[];
extern struct CompressedData *drum_live_buffered_textures[];
extern struct GraphicsTable *drum_live_gfx_tables[];
extern struct Vector2 drum_live_performer_sprite_offsets[3][3];
extern u8 drum_live_guitarist_anim_map_head[];
extern u8 drum_live_guitarist_anim_map_body[];
extern u8 drum_live_guitarist_anim_map_legs[];
extern u8 drum_live_guitarist_anim_map_arm_l[];
extern u8 drum_live_guitarist_anim_map_arm_r[];
extern u8 drum_live_guitarist_anim_map_crouch[];
extern u8 drum_live_guitarist_anim_map_jump_strum[];
extern u8 drum_live_guitarist_anim_map_jump[];
extern u8 drum_live_kit_map[];


// FUNCTIONS
extern struct Animation *drum_live_get_anim(u32 anim); // Get Animation
extern void drum_live_init_lighting(void);
extern void drum_live_update_lighting(void);
extern void drum_live_light_flash_callback(void);
extern void drum_live_play_applause(void);
extern void drum_live_flash_big_lights(s32 flashType);
extern void drum_live_set_next_flash_type(s32 flashType); // Engine Event 0x05 (Set Next Flash Type)
extern void drum_live_and_palette(const u16 *src, u16 *dest, u32 totalPal, u32 maskIndex);
extern void drum_live_multiply_palette(const u16 *src, u16 *dest, u32 totalPal, u32 brgTargets, u32 mul);
extern void drum_live_update_rainbow_lights(void);
extern void drum_live_flash_beat_lights(void);
extern void drum_live_set_next_beat_light_style(u32 arg); // Engine Event 0x06 (Set Next Beat Light Style)
extern void drum_live_script_play_applause(void); // Engine Event 0x07 (Play Applause)
extern void drum_live_clear_input_def(void);
extern void drum_live_script_clear_input_def(void); // Engine Event 0x02 (Clear "Cool"/"Lame" Inputs)
extern void drum_live_define_cool_inputs(u32 index, u32 keys);
extern void drum_live_define_lame_inputs(u32 index, u32 keys);
extern void drum_live_script_define_cool_inputs(u32 args); // Engine Event 0x03 (Define "Cool" Inputs)
extern void drum_live_script_define_lame_inputs(u32 args); // Engine Event 0x04 (Define "Lame" Inputs)
extern void drum_live_modify_excitement_old(u32 index, u32 keys);
extern void drum_live_reset_excitement(void);
extern void drum_live_set_disable_excitement(u32 disable); // Engine Event 0x09 (Set Disable Excitement)
extern void drum_live_reset_crowd_and_rank(void);
extern void drum_live_set_crowd_and_rank(u32 arg);
extern void drum_live_kit_play_roll(void);
extern void drum_live_kit_play_bass_l(void);
extern void drum_live_kit_play_bass_r(void);
extern void drum_live_kit_play_stub(void);
extern void drum_live_kit_play_snare_l(void);
extern void drum_live_kit_play_snare_r(void);
extern void drum_live_kit_play_tom_unused(void);
extern void drum_live_kit_play_tom(void);
extern void drum_live_kit_play_hihat(void);
extern void drum_live_kit_play_splash(void);
extern void drum_live_kit_play_crash(void);
extern void drum_live_init_gfx3(void); // Graphics Init. 3
extern void drum_live_init_gfx2(void); // Graphics Init. 2
extern void drum_live_init_gfx1(void); // Graphics Init. 1
extern void drum_live_offset_sprite_pos(s16 sprite, u32 performer);
extern void drum_live_engine_start(u32 version); // Game Engine Start
extern void drum_live_engine_event_stub(void); // Engine Event 0x0A (STUB)
extern void drum_live_set_guitarist_state(u32 id, u32 state);
extern void drum_live_set_guitarist_next_state(u32 args); // Engine Event 0x00 (Set Guitarist Next State)
extern void drum_live_update_guitarists(void);
extern void drum_live_set_adjust_mode_tempo(u32 tempo); // Engine Event 0x01 (Adjust Mode)
extern void drum_live_set_enable_boredom(u32 enable); // Engine Event 0x08 (Enable Boredom Timer)
extern void drum_live_update_boredom(void);
extern void drum_live_update_band_monkeys(void);
extern void drum_live_engine_update(void); // Game Engine Update
extern void drum_live_set_result_rank(u32 rank);
extern u32  drum_live_get_result_rank(void);
extern void drum_live_engine_stop(void); // Game Engine Stop
extern void drum_live_modify_excitement(struct DrumLiveCue *info, u8_8 coolMultiplier, u8_8 lameMultiplier);
extern void drum_live_cue_spawn(struct Cue *, struct DrumLiveCue *, u32 index); // Cue - Spawn
extern u32  drum_live_cue_update(struct Cue *, struct DrumLiveCue *, u32 runningTime, u32 duration); // Cue - Update
extern void drum_live_cue_despawn(struct Cue *, struct DrumLiveCue *); // Cue - Despawn
extern void drum_live_update_adjust_mode(void);
extern void drum_live_cue_hit(struct Cue *, struct DrumLiveCue *, u32 pressed, u32 released); // Cue - Hit
extern void drum_live_cue_barely(struct Cue *, struct DrumLiveCue *, u32 pressed, u32 released); // Cue - Barely
extern void drum_live_cue_miss(struct Cue *, struct DrumLiveCue *); // Cue - Miss
extern void drum_live_input_event(u32 pressed, u32 released); // Input Event
extern void drum_live_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void drum_live_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void drum_live_common_init_tutorial(struct Scene *skipDest); // Common Event 2 (Init. Tutorial)
