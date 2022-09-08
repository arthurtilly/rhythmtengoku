#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"


struct KarateManCue {
    u16 isHit:4;   // Flag:   Object Hit
    u16 miss:1;    // Flag:   Missed
    u16 object:4;  // Value:  Object
    u16 unk2;      // Unused
    s16 objects;   // Entity: Objects
    s16 shadow;    // Entity: Object Shadow
    s8 unk8;       // Value:  unk8 (Object Scale over time?)
    s8 unk9;       // Value:  unk9 (Shadow Scale over time?)
    s32 unkC;      // Value:  Object X Position
    s32 unk10;     // Value:  Object Y Position
    s32 unk14;     // Value:  Object Y Land Position
    u32 unk18;     // Value:  Hit Object X Movement
    u32 unk1C;     // Value:  Hit Object Y Movement
    u32 unk20;     // Value:  unk20
    u32 unk24;     // Value:  Object Gravity
    u16 unk28;     // Value:  Object Distance?
    s16 unk2A;     // Value:  Object Scale
    u8 unk2C;      // Value:  Object Angle
    u8 unk2D;      // Value:  Object Rotation
    s16 unk2E;     // Value:  unk2E
};

struct RapMenCue {
    u32 anim;
};

struct WizardsWaltzCue {
    struct AffineSprite *sprite;
    u16 null4;
    s16 position;
};

struct RhythmTweezersCue {
    u32 unk0_b0:5;
    u32 isLongHair:4;
    u32 finished:1;
    struct AffineSprite *sprite;
    u32 null8;
    u32 nullC;
    u32 null10;
    u32 null14;
    u32 null18;
    u32 null1C;
    u32 null20;
    u32 null24;
    s16 rotation;
    u16 null2A;
    u16 pullTime; // Current pulling time.
    u16 pullTarget; // Target pulling time.
};

struct SneakySpiritsCue {
    u32 null0;
    u32 null4;
    u32 null8;
    u32 nullC;
    u32 null10;
    u32 null14;
    u32 null18;
    u32 null1C;
    u32 null20;
    u16 null24;
    u8 disableTaunt;
};

struct BonOdoriCue {
    u8 type;
};

struct SpaceballCue {
    u8 state;
    struct AffineSprite *sprite;
    u32 endTime;
    s16 rotation;
    s16 rotationSpeed;
    s32 x;
    s32 y;
    s32 z;
    u32 unk1C; // (90 * number of beats)
    u32 xSpeed; // Used for 'Barely' arc only
    u32 ySpeed; // Used for 'Barely' arc only
    u8 missed;
};

struct FireworksCue {
    s16 sprite;     // Sprite
    s32 x;          // X Position
    s32 y;          // Y Position
    s32 velX;       // X Velocity
    s32 velY;       // Y Velocity
    s32 targetX;    // Target X Position
    s32 targetY;    // Target Y Position
    u8  pattern;    // Pattern ID
    u8  state;      // Current State (range varies between cues)
    u8  type;       // Cue Type { 0..2 }
    u8  exploded;   // Has Exploded
};



struct GameCueInfo {
};