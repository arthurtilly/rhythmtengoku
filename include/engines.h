#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "cues.h"

/*
    General "Game Engine" header file.
    Should probably contain all of the functions and/or headers that are referenced in the game engine C files,
    along with any other sort of common data.
*/

struct KarateManJoe {
	u16 isNotBeat:4; // Value:  Beat Animation Flag (1 when not in Beat Animation)
    u16 unk2;        // Unused
    s16 joe;         // Entity:  Joe
    u16 barely;      // Counter: Barely Animation
    u16 miss;        // Counter: Miss Animation
    u16 smirk;       // Counter: Smirk Animation
    u16 happy;       // Counter: Happy Animation
};

struct KarateManInfo {
    u8 version;     // 0 = Karate Man; 1 = Karate Man (BG Faces); 2 = Karate Man ("Serious Mode"); 3 = Karate Man 2
	struct KarateManJoe joe;
    s16 flowBar;    // Entity:  Flow Bar
    u8 flow;        // Value:   Flow
    u8 flowBarFlag; // Value:   Flow Bar Flag
    u8 bg;          // Value:   BG Byte
    u8 *bgPalIndex; // Pointer: BG Palette Index Table
    s16 cueText;    // Entity:  Cue Text
    u32 unk24;      // Value:   unk24
    s16 tutorialButton;    // Entity: Tutorial Button
    u8 tutorialButtonFlag; // Value:  Tutorial Button Flag
    s16 tutorialSkip;      // Entity:  Tutorial Skip
    s16 tutorialText;      // Entity:  Tutorial Text
    u16 tutorialObjects;   // Value:   Tutorial Objects Counter
    u16 bgFace;     // Counter: BG Face Time on BG
    u8 serious;     // Value:   "Serious Mode" Flag
    u8 seriousStop; // Value:   "Serious Mode" End Flag
    u8 expression;  // Value:   Expression
};


struct RapMenInfo {
    u8 unk0;
    u32 *unk4;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u8 unk14;
};


struct WizardsWaltzEntity {
    struct AffineSprite *sprite;
    u8  state;
    s32 rotation;
    s32 x;
    s32 y;
    s32 z;
    u32 time;
    u32 null1C;
};

struct WizardsWaltzInfo {
    u8 version;
    struct WizardsWaltzEntity wizard;
    struct WizardsWaltzEntity shadow;
    struct WizardsWaltzEntity sparkle[10];
    struct WizardsWaltzEntity girl;
    s32 cyclePosition;  // Current point in cycle
    s32 cycleInterval;  // Duration of one cycle
    s32 globalScale;    //
    u8  currentSparkle; // Sparkle to operate on
    u8  flowerCount;
    u8  isTutorial;
};


struct RhythmTweezersInfo {
    u8 version; // Value:   Version { 0..2 = Rhythm Tweezers; 3..5 = Rhythm Tweezers 2 }
    struct RhythmTweezersTweezers {
        struct AffineSprite *sprite; // Sprite: Tweezers
        u8  isMoving;   // Flag:    Active
        u8  heldHair;   // State:   Holding { 0 = None; 1 = Full Hair; 2 = Half Hair }
        s16 rotation;   // Value:   0x800 = 360 degrees
        u32 cycleTime;  // Counter: Cycle Position
        u32 cycleTarget;    // Value:   Cycle Target
        u8  isPulling;  // Flag:    Pulling (assigned but never used)
    } tweezers;
    u32 hairCycleTime;  // Counter: Hair Placement Cycle Position
    u32 hairCycleTarget;    // Value:   Hair Placement Cycle Target
    u8  fallingHairsNext;  // Counter: Next Available Falling Hair {0..4}
    struct RhythmTweezersFallingHair {
        struct AffineSprite *sprite; // Sprite: Falling Hair
        s32 fallDistance;   // Counter:   Vertical Position
        u32 fallSpeed;      // Value: Vertical Velocity
        s16 rotation;       // Value:   Rotation
        u16 rotationSpeed;  // Value:   Randomised Rotation Speed ( func_08001980(0x1f) - 0xf )
    } fallingHairs[5];
    struct RhythmTweezersVegetable {
        s16 spriteCurrent;  // Sprite:  Current Vegetable Face
        s16 spriteNext;     // Sprite:  Upcoming Vegetable Face
        u8  typeCurrent;    // State:   Current Vegetable Type { 0 = Onion; 1 = Turnip; 2 = Potato }
        u8  typeNext;       // State:   Upcoming Vegetable Type { 0 = Onion; 1 = Turnip; 2 = Potato }
        u8  isScrolling;    // Flag:    Screen Scrolling
        u32 scrollTime;     // Counter: Screen Scroll Time
        u32 scrollTarget;   // Value:   Screen Scroll Target
        u8  bgMapSide;      // Flag:    Destination Vegetable BG Map { 0 = D_0600f800 (Right); -1 = D_0600f000 (Left) }
    } vegetable;
    struct {
        u16 full; // Queued/Missed
        u16 half; // Barely'd
    } existingHairs;
    s16 tutorialSprite; // Sprite:  Tutorial Text (Unused)
    s16 screenHorizontalPosition; // Value:   Global Horizontal Position (for vegetable faces and hair)
    s16 maskPosition;  // Value:   Mask Vertical Position (-160 = Hidden; 0 = Fully Visible)
    s16 maskVelocity;  // Value:   Mask Vertical Velocity (-8 = Down; 8 = Up)
};


struct SneakySpiritsInfo {
    u32 *unk0;          // Pointer: Font? (Related to Tutorial Text)
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
    u32 *rainChannel;   // Pointer: Audio Channel Playing Wind/Rain SFX
    s16 text;           // Sprite:  Tutorial Text
    u8  slowMotionHit;  // Flag:    Slow-Motion Effect On Hit
    u8  freezeRain;     // Flag:    Freeze Slow-Motion Rain
    s16 tutorialGhost;  // Sprite:  Sneaky Spirit (Tutorial Example)
};


struct PrologueInfo {
    u8  ver;        // Value:  Version
    s16 sprite2;    // Sprite: Object 0
    s16 sprite4;    // Sprite: Object 1
    s16 sprite6;    // Sprite: Object 2
};


struct BonOdoriInfo_sub {
    s16 unk0;
    s16 unk2;
    u32 unk4;
    s16 unk8;
    u16 unkA;
};

struct BonOdoriInfo {
    u8 version;
    u8 pad1;
    u8 unk2;
    u32* unk4;
    struct BonOdoriInfo_sub unk8[4];
    u8 unk38;
    u16 unk3A;
    s16 unk3C;
    s16 yaguraSprite;
    u16 unk40;
    u8 unk42;
    s16 unk44[4];
    u16 unk4C[4];
    u8 unk54;
    u8 unk55;
    u16* bgPalDark;
    u16* objPalDark;
    u16 bgPalDarkBuf[16][16];
    u16 null260[16][16];
    u16 objPalDarkBuf[16][16];
    u16 null660[16][16];
    u16 unk860;
    u8 unk862;
    u16 unk864;
};


struct ShowtimeInfo {
    u32 *unk0;
    u16 unk4;
    u8 unk6;
    struct ShowtimeInfo_sub {
        s16 unk0;
        u32 unk4;
        s32 unk8;
    } unk8[2];
    u32 pad20;
    struct ShowtimeInfo_sub1 {
        u32 unk0;
        u32 pad4;
        u32 unk8;
        u32 unkC;
        u32 pad10[2];
        u32 unk18;
        u32 pad1C;
        u32 unk20;
        u32 pad24;
    } unk24[2];
    u32 pad74[0x3d];
    u32 unk168;
    u32 pad16C[2];
    struct ShowtimeInfo_sub2 {
        s16 unk0;
        s32 unk4;
        s32 unk8;
        u32 unkC;
    } unk174[8];
    u32 pad1F4[0x73];
    u32 unk3C0; // beat related stuff???
    u32 pad3C4;
    u32 unk3C8;
    u32 unk3CC;
    u8 unk3D0;
};


struct SpaceballEntity {
    struct AffineSprite *sprite;
    s32 x;
    s32 y;
    s32 z;
};

struct SpaceballInfo {
    u8 version;
    s32 zoom;   // Value: Camera Position
    struct SpaceballBatter {
        struct AffineSprite *sprite;
        s32 x;
        s32 y;
        s32 z;
        u32 swingTimer;
        const struct Animation *animClose;
        const struct Animation *animFar;
    } batter;
    struct SpaceballEntity pitcher;
    struct SpaceballEntity umpire;
    struct SpaceballEntity poofR;   // Sprite used when a spaceball is missed (right)
    struct SpaceballEntity poofL;   // Sprite used when a spaceball is missed (left)
    u16 currentStar;    // Counter: Number of Existing BG Stars
    s16 starSprite[24];
    struct SpaceballStar {
        s16 x;
        s16 y;
        s16 z;
    } stars[24];
    u8 totalMissed;
    u8 spaceballType;
};


struct FireworksInfo {
    u8  version;    // Version Number
    u32 *unk4;      // Font?
    s16 textSprite; // Tutorial Text (Sprite)
    struct FireworksParticle {
        s16 sprite;     // Sprite
        u8  active;     // Currently in-use.
        s32 x;          // X Position
        s32 y;          // Y Position
        s32 velX;       // X Velocity
        s32 velY;       // Y Velocity
        u8  initAngle;  // Trajectory Angle
        s32 initVel;    // Trajectory Velocity
        u8  colour;     // Colour ID { 0..3 }
    } particles[72];        // Firework Particle Entities
    s16 skipTutorialSprite; // Unused "Start to Skip" Text (Sprite)
    u8  unk90E;             // ??
    u8  patternTableNext;   // Current Position in Fireworks 1 Pattern Table
    u8  patternMode;        // Pattern-Handling Mode { 0..3 }
    u8  patternDefault;     // Pattern ID to use if Pattern Mode is not within { 0..3 }
};



// Game Engine Info
extern union struct_030055d0 {
    struct KarateManInfo karateMan;
    struct RapMenInfo rapMen;
    struct WizardsWaltzInfo wizardsWaltz;
    struct RhythmTweezersInfo rhythmTweezers;
    struct SneakySpiritsInfo sneakySpirits;
    struct PrologueInfo prologues;
    struct BonOdoriInfo bonOdori;
    struct SpaceballInfo spaceball;
    struct FireworksInfo fireworks;
    struct ShowtimeInfo showtime;
} *D_030055d0;

typedef s32 (*EngineFunc)(s32);
typedef void (*RhythmGameInitFunc)(u32);
typedef void (*RhythmGameUpdateFunc)(void);
typedef void (*RhythmGameCloseFunc)(void);

struct GameEngine {
    u32 gameInfoSize; // Size of Respective GameInfo Struct (in bytes)
    RhythmGameInitFunc initFunc;
    RhythmGameUpdateFunc updateFunc;
    RhythmGameCloseFunc closeFunc;
    const struct CueDefinition **cueDefinitions;
    EngineFunc *commonFunctions;
    EngineFunc *engineFunctions;
};
