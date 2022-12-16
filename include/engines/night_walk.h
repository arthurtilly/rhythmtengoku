#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct DrumTechInstrument {
    s8 soundPlayerID;
    u8 duration;
    u16 volume;
    s16 pitch;
    const struct SequenceData *sound;
};

struct DrumTechNote {
    u16 drumID;
    u16 volume;
    s16 pitch;
    u16 deltaTime;
};

struct DrumTechController {
    u8 soundTimers[10]; // Timers for SoundPlayers
    const struct DrumTechInstrument *drumBank;
    struct DrumTechNote drumSequence[100];
    u16 volume;
    void (*unk334)(s32);
    u16 unk338;
    u16 unk33A;
    u32 unk33C;
    u16 unk340;
    u16 unk342;
    u16 unk344;
    u32 unk348;
    u32 unk34C;
};

struct NightWalkInfo {
    u8 version;
    u32 stoppedScrolling:1;
    u32 nextBridgeType:3;
    u32 unused4;
    struct DrumTechController drumTech;
    struct PlayYan {
        u32 state:4;
        u32 isAscending:1;
        u32 unused0:27;
        s16 sprite;
        s32 jumpTime;
        s32 jumpDuration;
        s16 yOrigin;
        s32 yDistance;
        s32 yVelocity;
        u8 balloonCount;
        s16 balloonSprites[30];
        u16 zapTime;
        s16 fishSprite;
    } playYan;
    struct NightWalkUnk3B8 {
        u32 unk0_b0:1;
        u32 unk0_b1:31;
        s16 unk4;
        s16 unk6;
        u16 unk8;
    } unk3B8;
    struct NightWalkStar {
        s16 sprite;
        u16 size;
        s32 x;
        s32 y;
    } stars[32];
    s16 starsVOffset;
    u32 nextStar;
    u32 currentStarSize;
    const struct BeatScript *endScript;
    u8 markingCriteria;
    u8 inSwing;
    u16 cueDelayTime;
    u16 drumVolume;
};

struct NightWalkCue {
    u32 unused0:5;
    u32 type:4;
    u32 endOfBridge:1;
    u32 hasOpened:1;
    u32 playYanFellHere:1;
    u32 starWandIsAvailable:1;
    u32 unused1:19;
    s16 boxSprite;
    s16 runningTime;
    s16 duration;
    s16 delayBeats;
    s16 delayTime;
    u8 hasFish;
    s16 fishSprite;
};


// Engine Macros/Enums:
enum NightWalkVersionsEnum {
    NIGHT_WALK_VER_0,
    NIGHT_WALK_VER_1 // Unused
};

enum NightWalkCuesEnum {
    NIGHT_WALK_CUE_HEART,
    NIGHT_WALK_CUE_LOLLIPOP,
    NIGHT_WALK_CUE_UMBRELLA,
    NIGHT_WALK_CUE_HEART_2,
    NIGHT_WALK_CUE_STAR_WAND
};

#define END_OF_DRUM_TECH_SEQUENCE { 0xFF, 0, 0, 0 }


// OAM Animations:
extern const struct Animation anim_play_yan_jump[]; // [D_088c9a98] Play-Yan Jump
extern const struct Animation anim_play_yan_walk[]; // [D_088c9ab8] Play-Yan Walk
extern const struct Animation anim_night_walk_fish[]; // [D_088c9b08] Electric Fish Idle
extern const struct Animation anim_play_yan_short_hop[]; // [D_088c9b98] Play-Yan Small Hop
extern const struct Animation anim_night_walk_note_bridge[]; // [D_088c9d10] Note Box & Platform
extern const struct Animation anim_play_yan_fall[]; // [D_088c9d58] Play-Yan Fall
extern const struct Animation anim_night_walk_balloon[]; // [D_088c9d88] Balloon
extern const struct Animation anim_night_walk_balloon_pop[]; // [D_088c9dc0] Balloon Pop
extern const struct Animation anim_night_walk_bridge_disappear[]; // [D_088c9dd0] Box & Platform Disappear
extern const struct Animation anim_night_walk_box_disappear[]; // [D_088c9de0] Box Disappear
extern const struct Animation anim_night_walk_star_tiny[]; // [D_088c9ec8] Very Small Star
extern const struct Animation anim_night_walk_star_disappear[]; // [D_088c9f58] End Flash
extern const struct Animation anim_play_yan_star_wand[]; // [D_088c9f90] Play-Yan Star Wand
extern const struct Animation anim_night_walk_wand_box[]; // [D_088ca0d8] Star Wand Box
extern const struct Animation anim_night_walk_ng_wand_box[]; // [D_088ca120] NG Star Wand Box
extern const struct Animation anim_night_walk_fish_zap[]; // [D_088ca140] Electric Fish Zap
extern const struct Animation anim_play_yan_violent_electrocution[]; // [D_088ca158] Play-Yan Violent Electrocution


// Palettes:


// Sound Effects:
extern const struct SequenceData s_4beat_jiban_seqData;
extern const struct SequenceData s_f_drumtech_damage_seqData;
extern const struct SequenceData s_f_drumtech_miss_seqData;
extern const struct SequenceData s_f_drumtech_fall_seqData;


// Engine Data:


// Engine Definition Data:
extern const struct Animation *const night_walk_star_anim[]; // Stars
extern const struct Animation *const night_walk_star_expand_anim[]; // Star Flashes
extern const struct DrumTechInstrument drumtech_drum_bank[];
extern const struct CompressedGraphics *const night_walk_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable night_walk_gfx_table[]; // Graphics Table
extern const struct DrumTechNote drum_seq_night_walk_kick_barely[];
extern const struct DrumTechNote *const night_walk_drum_seq_kick[];
extern const struct DrumTechNote drum_seq_night_walk_snare_barely[];
extern const struct DrumTechNote *const night_walk_drum_seq_snare[];
extern const struct DrumTechNote *const night_walk_drum_seq_snare_swing[];
extern const struct DrumTechNote *const night_walk_drum_seq_kick_swing[];
extern const struct DrumTechNote *const night_walk_drum_seq_cymbal[];
extern const struct DrumTechNote *const night_walk_drum_seq_roll[];
extern const struct DrumTechNote drum_seq_night_walk_default[];
extern const struct DrumTechNote *const night_walk_drum_seq_offbeat[];
extern const struct DrumTechNote *const night_walk_drum_seq_offbeat_swing[];
extern const struct Animation *const night_walk_bridge_anim[]; // Bridge Hit Anim
extern const struct Animation *const night_walk_box_anim[]; // Box Hit Anim
extern const struct Animation *const night_walk_barely_anim[][2]; // Barely Anim
extern const struct DrumTechNote drum_seq_night_walk_short_hop[];


// Functions:
extern void night_walk_init_play_yan(void); // Init. Play-Yan
extern void night_walk_play_yan_jump(s32 jumpOverGap, s32 timingOffset); // Play-Yan Jump
extern void night_walk_play_yan_update_jump(struct PlayYan *playYan); // Update Play-Yan (State 1)
extern void night_walk_play_yan_hold_on(s16 x, s16 y); // Play-Yan Hold On
extern void night_walk_play_yan_fall(void); // Play-Yan Fall
extern void night_walk_play_yan_update_fall(struct PlayYan *playYan); // Update Play-Yan (State 3)
extern void night_walk_play_yan_get_wand(void); // Play-Yan Grab Star Wand
extern void night_walk_play_yan_update_wand(struct PlayYan *playYan); // Update Play-Yan (State 4)
extern void night_walk_play_yan_update_zap_fall(struct PlayYan *playYan); // Update Play-Yan (State 5)
extern void night_walk_init_balloons(u32 balloonCount); // Engine Event 0x01 (Give Play-Yan Balloons)
extern void night_walk_pop_balloon(void); // Engine Event 0x02 (Pop Balloon)
extern void night_walk_update_play_yan(void); // Update Play-Yan

// extern ? night_walk_init_stars(?); // Init. Stars
extern s32 night_walk_scroll_stars(void); // Update Stars
extern void night_walk_finish_star_expansion(s32 arg0, s16 sprite, const struct Animation *anim); // End of Star Size-Up
extern void night_walk_expand_star(void); // Increase Star Progress
extern void night_walk_expand_stars(u32 total); // Increase Stars Progress
extern void night_walk_event_expand_stars(u32 total); // Engine Event 0x09 (Increase Stars Progress) [total = { 1..3 }]
extern void night_walk_shrink_star(void); // Decrease Star Progress
extern void night_walk_shrink_stars(u32 total); // Decrease Stars Progress
extern void night_walk_clear_all_stars(void); // Clear Stars
extern void night_walk_update_stars(void); // Update Stars (if [...])
extern void func_0802a970(void); // Init. unk3B8

extern void func_0802a994(void); // Init. DrumTech Sequence
extern void func_0802a9b4(struct DrumTechController *data); // Init. DrumTech
extern void func_0802aa4c(void); // Update DrumTech Sound Timers
extern void func_0802aa84(void); // Update DrumTech Sequence
extern void func_0802aac0(const struct DrumTechNote *noteSeq, s32 timingOffset, s32 unused); // Import DrumTech Sequence
extern void func_0802ab34(void); // Update DrumTech
extern void func_0802ab44(s32 args, u32 *drumID, u32 *volume, s32 *pitch); // Parse Arguments for Engine Event 0x00 (Cowbell)
extern void func_0802ab5c(s32 args); // Engine Event 0x00 (Cowbell)
// extern ? func_0802ab7c(?); // (https://decomp.me/scratch/0YYov)
extern void func_0802ac44(const struct DrumTechInstrument *drumBank); // Set DrumTech Bank
// extern ? func_0802ac50(?);
// extern ? func_0802ac8c(?);
// extern ? func_0802ad20(?);
// extern ? func_0802ad2c(?);
// extern ? func_0802ad38(?);
// extern ? func_0802ade0(?);
// extern ? func_0802af68(?);
// extern ? func_0802af7c(?);
// extern ? func_0802afb0(?);
extern void func_0802b03c(u32 volume); // Set DrumTech Volume
// extern ? func_0802b050(?); // Set ?
extern void func_0802b064(void); // Stop DrumTech

extern void night_walk_init_gfx3(void); // Graphics Init. 2
extern void night_walk_init_gfx2(void); // Graphics Init. 1
extern void night_walk_init_gfx1(void); // Graphics Init. 0
extern void night_walk_engine_init(u32 ver); // Game Engine Init.
extern void night_walk_engine_event_stub(void); // Engine Event 0x0A (STUB)
extern void night_walk_set_ending_script(const struct BeatScript *script); // Engine Event 0x03 (Set Ending Script)
extern void night_walk_set_bridge_type(u32 type); // Engine Event 0x04 (Set Next Bridge Type)
extern void night_walk_set_marking_criteria(u32 criteria); // Engine Event 0x05 (Set Current Marking Criteria)
extern void night_walk_set_swing(u32 inSwing); // Engine Event 0x07 (Set Swing)
extern void night_walk_set_drum_volume(u32 volume); // Engine Event 0x08 (Set Drum Volume)
extern void night_walk_engine_update(void); // Game Engine Update
extern void night_walk_engine_stop(void); // Game Engine Close

extern s32 night_walk_cue_get_x(struct NightWalkCue *info); // Calculate Cue X Position
extern void night_walk_set_cue_delay(u32 duration); // Engine Event 0x06 (Set Cue Delay Time)
extern void night_walk_cue_spawn(struct Cue *cue, struct NightWalkCue *info, u32 type); // Cue - Spawn
extern u32 night_walk_cue_update(struct Cue *cue, struct NightWalkCue *info, u32 runningTime, u32 duration); // Cue - Update
extern void night_walk_cue_despawn(struct Cue *cue, struct NightWalkCue *info); // Cue - Despawn
extern void night_walk_cue_check_for_fish(struct NightWalkCue *info); // Check Input for Electric Fish
extern void night_walk_cue_hit(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released); // Cue - Hit
extern void night_walk_cue_barely(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released); // Cue - Barely
extern void night_walk_cue_miss(struct Cue *cue, struct NightWalkCue *info); // Cue - Miss
extern void night_walk_input_event(u32 pressed, u32 released); // Input Event

extern void night_walk_common_beat_animation(u32 arg); // Common Event 0 (Beat Animation) (STUB)
extern void night_walk_common_display_text(const char *text); // Common Event 1 (Display Text) (STUB)
