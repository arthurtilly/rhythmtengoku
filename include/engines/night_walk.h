#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct NightWalkInfo {
    u8 version;
    u32 stoppedScrolling:1;
    u32 nextBridgeType:3;
    u32 unk4;
    struct NightWalkData {
        u8 unk0[10]; // SoundPlayer IDs??
        const struct NightWalkBox *boxData;
        struct NightWalkWhat {
            u16 unk0;
            u16 unk2;
            s16 unk4;
            u16 unk6;
        } unk10[100];
        u16 unk330;
        u32 unk334;
        u16 unk338;
        u16 unk33A;
        u32 unk33C;
        u16 unk340;
        u16 unk342;
        u16 unk344;
        u32 unk348;
        u32 unk34C;
    } unk8;
    struct PlayYan { // 358
        u32 state:4;
        u32 isAscending:1;
        u32 null0_b5:27;
        s16 sprite;
        s32 jumpTime;
        s32 jumpDuration;
        s16 yOrigin;
        s32 yDistance;
        s32 yVelocity;
        u8 balloonCount;
        s16 balloonSprites[30];
        u16 zapTime; // 3B2
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
    u8 unk555;
    u16 nextCueDelayTime;
    u16 unk558;
};

struct NightWalkCue {
    u32 null0_b0:5;
    u32 type:4;
    u32 endOfBridge:1;
    u32 wasReached:1;
    u32 playYanFellHere:1;
    u32 starWandIsAvailable:1;
    u32 null0_b13:19;
    s16 boxSprite;
    s16 runningTime;
    s16 duration;
    s16 unkA;
    s16 unkC;
    u8 hasFish;
    s16 fishSprite;
};

struct NightWalkBox {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u32 null4;
    const struct SequenceData *sfx;
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


// OAM Animations:
extern const struct Animation D_088c9a98[]; // [D_088c9a98] Play-Yan Jump
extern const struct Animation D_088c9ab8[]; // [D_088c9ab8] Play-Yan Walk
extern const struct Animation D_088c9b08[]; // [D_088c9b08] Electric Fish Idle
extern const struct Animation D_088c9b98[]; // [D_088c9b98] Play-Yan Small Hop
extern const struct Animation D_088c9d10[]; // [D_088c9d10] Note Box & Platform
extern const struct Animation D_088c9d58[]; // [D_088c9d58] Play-Yan Fall
extern const struct Animation D_088c9d88[]; // [D_088c9d88] Balloon
extern const struct Animation D_088c9dc0[]; // [D_088c9dc0] Balloon Pop
extern const struct Animation D_088c9dd0[]; // [D_088c9dd0] Box & Platform Disappear
extern const struct Animation D_088c9de0[]; // [D_088c9de0] Box Disappear
extern const struct Animation D_088c9ec8[]; // [D_088c9ec8] Very Small Star
extern const struct Animation D_088c9f90[]; // [D_088c9f90] Play-Yan Star Wand
extern const struct Animation D_088ca0d8[]; // [D_088ca0d8] Star Wand Box
extern const struct Animation D_088ca120[]; // [D_088ca120] NG Star Wand Box
extern const struct Animation D_088ca140[]; // [D_088ca140] Electric Fish Zap
extern const struct Animation D_088ca158[]; // [D_088ca158] Play-Yan Violent Electrocution


// Palettes:


// Sound Effects:
extern const struct SequenceData s_4beat_jiban_seqData;
extern const struct SequenceData s_f_drumtech_damage_seqData;
extern const struct SequenceData s_f_drumtech_miss_seqData;
extern const struct SequenceData s_f_drumtech_fall_seqData;


// Engine Data:


// Engine Definition Data:
extern const struct Animation *const D_089e2ed4[]; // Stars
extern const struct NightWalkBox D_089e2f00[];
extern const struct NightWalkWhat D_089e33dc[];
extern const struct NightWalkWhat *const D_089e33ec[];
extern const struct NightWalkWhat D_089e342c[];
extern const struct NightWalkWhat *const D_089e3444[];
extern const struct NightWalkWhat *const D_089e3478[];
extern const struct NightWalkWhat *const D_089e3410[];
extern const struct NightWalkWhat *const D_089e349c[];
extern const struct NightWalkWhat *const D_089e3528[];
extern const struct NightWalkWhat D_089e3538[];
extern const struct NightWalkWhat *const D_089e35a8[];
extern const struct NightWalkWhat *const D_089e3610[];
extern const struct Animation *const D_089e3620[]; // Bridge
extern const struct Animation *const D_089e3634[]; // Gap
extern const struct Animation *const D_089e3648[][2]; // Hit/Barely Anim
extern const struct NightWalkWhat D_089e37e4[];


// Functions:
extern void func_08029f0c(void); // Init. Play-Yan
extern void func_08029f68(s32 jumpOverGap, s32 timingOffset); // Play-Yan Jump
extern void func_08029fe8(struct PlayYan *playYan); // Update Play-Yan (State 1)
extern void func_0802a154(s16 x, s16 y); // Play-Yan Hold On
extern void func_0802a224(void); // Play-Yan Fall
extern void func_0802a26c(struct PlayYan *playYan); // Update Play-Yan (State 3)
extern void func_0802a2a4(void); // Play-Yan Grab Star Wand
extern void func_0802a300(struct PlayYan *playYan); // Update Play-Yan (State 4)
extern void func_0802a32c(struct PlayYan *playYan); // Update Play-Yan (State 5)
extern void func_0802a38c(u32 balloonCount); // Engine Event 0x01 (Give Play-Yan Balloons)
extern void func_0802a48c(void); // Engine Event 0x02 (Pop Balloon)
extern void func_0802a500(void); // Update Play-Yan
// extern ? func_0802a564(?); // Init. Stars
extern s32 func_0802a674(void); // Update Stars
// extern ? func_0802a730(?);
// extern ? func_0802a78c(?);
// extern ? func_0802a840(?);
// extern void func_0802a85c(?); // Engine Event 0x09 (?) [called several times per load; arg = { 1..3 }]
extern void func_0802a868(void); // Reduce Star Progress
extern void func_0802a8f0(u32 total); // Reduce Stars Progress
// extern ? func_0802a90c(?);
extern void func_0802a954(void); // Update Stars (if [...])
extern void func_0802a970(void); // Init. unk3B8
extern void func_0802a994(void); // Init. D_03001568->unk10
extern void func_0802a9b4(struct NightWalkData *data); // Init. D_03001568
// extern ? func_0802aa4c(?);
// extern ? func_0802aa84(?);
extern void func_0802aac0(const struct NightWalkWhat *what, s32 timingOffset, s32 unused);
// extern ? func_0802ab34(?); // Update Something
// extern ? func_0802ab44(?);
// extern void func_0802ab5c(u32 args); // Engine Event 0x00 (balloon pop?) [called several times per load; args = (0x26 | (1 << 0x10))]
// extern ? func_0802ab7c(?);
// extern ? func_0802ac44(?);
// extern ? func_0802ac50(?);
// extern ? func_0802ac8c(?);
// extern ? func_0802ad20(?);
// extern ? func_0802ad2c(?);
// extern ? func_0802ad38(?);
// extern ? func_0802ade0(?);
// extern ? func_0802af68(?);
// extern ? func_0802af7c(?);
// extern ? func_0802afb0(?);
extern void func_0802b03c(u32 arg); // Set D_03001568->unk330
// extern ? func_0802b050(?);
// extern ? func_0802b064(?);
// extern ? func_0802b098(?); // Graphics Init. 2
// extern ? func_0802b0a8(?); // Graphics Init. 1
// extern ? func_0802b0d8(?); // Graphics Init. 0
extern void func_0802b104(u32 ver); // Game Engine Init.
extern void func_0802b1fc(void); // Engine Event 0x0A (STUB)
extern void func_0802b200(const struct BeatScript *script); // Engine Event 0x03 (Set Fall Script)
extern void func_0802b214(u32 type); // Engine Event 0x04 (Set Next Bridge Type)
extern void func_0802b230(u32 criteria); // Engine Event 0x05 (Set Current Marking Criteria)
extern void func_0802b244(u32 arg); // Engine Event 0x07 (Set unk555) [remixes only]
extern void func_0802b258(u32 arg); // Engine Event 0x08 (Set unk558) [remixes only]
extern void func_0802b274(void); // Game Engine Update
extern void func_0802b288(void); // Game Engine Close
extern s32 func_0802b28c(struct NightWalkCue *info); // Calculate Cue X Position
extern void func_0802b2b4(u32 ticks); // Engine Event 0x06 (Set Next Cue Delay Time) [remixes only]
extern void func_0802b2c8(struct Cue *cue, struct NightWalkCue *info, u32 type); // Cue - Spawn
extern u32 func_0802b49c(struct Cue *cue, struct NightWalkCue *info, u32 runningTime, u32 duration); // Cue - Update
extern void func_0802b648(struct Cue *cue, struct NightWalkCue *info); // Cue - Despawn
extern void func_0802b6fc(struct NightWalkCue *info); // Check Input for Electric Fish
extern void func_0802b730(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released); // Cue - Hit
extern void func_0802b9dc(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released); // Cue - Barely
extern void func_0802bafc(struct Cue *cue, struct NightWalkCue *info); // Cue - Miss
extern void func_0802bb98(u32 pressed, u32 released); // Input Event
extern void func_0802bbf4(u32 arg); // Common Event 0 (Beat Animation) (STUB)
extern void func_0802bbf8(const char *text); // Common Event 1 (Display Text) (STUB)
