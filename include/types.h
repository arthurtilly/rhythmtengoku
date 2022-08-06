#pragma once

typedef s32 (*struct_030046a4_func)(s32);

struct struct_030046a4_sub { // might be a list
    u8 pad00[0x18];
    struct_030046a4_func *unk18;
};

typedef union {
        u8 asU8[4];
        struct struct_030046a4_sub *asPoint;
    } struct_030046a4_union;
	
struct struct_030046a4_sub3 {
	void *unk0; // ???
    void *unk4; // ???
    void *unk8; // ???
    void *unkC; // ???
};

struct struct_03004b10 {
    u16 DISPCNT;    // LCD Control
    u16 unk2;
    u16 BG0CNT;     // BG0 Control
    u16 BG1CNT;     // BG1 Control
    u16 BG2CNT;     // BG2 Control
    u16 BG3CNT;     // BG3 Control
    s16 BG0HOFS;    // BG0 X-Offset
    s16 BG0VOFS;    // BG0 Y-Offset
    s16 BG1HOFS;    // BG1 X-Offset
    s16 BG1VOFS;    // BG1 Y-Offset
    s16 BG2HOFS;    // BG2 X-Offset
    s16 BG2VOFS;    // BG2 Y-Offset
    s16 BG3HOFS;    // BG3 X-Offset
    s16 BG3VOFS;    // BG3 Y-Offset
    u32 unk1C[4];
    u32 unk2C[4];
    u16 unk3C;
    u16 unk3E;
    u16 unk40;
    u16 unk42;
    u16 unk44;
    u16 unk46;
    u16 unk48;
    u16 unk4A;
    u16 unk4C;
    u16 unk4E;
    u16 unk50;
    u16 unk52;
    u16 bgPalette[16][16];   // BG Palette Buffer, 03004b64, 0x54
    u16 objPalette[16][16];  // OBJ Palette Buffer, 03004d64, 0x254
    u32 unk454[0x100];   // OAM Buffer, 03004f64
};

struct struct_080179f4_sub {
    union {
        u32 u32;
        u8 u8[4];
    } unk0;
    s16 unk4;
    s16 unk6;
    s8 unk8;
    s8 unk9;
    u8 pad0A[2];
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u8 pad28[4];
    u8 unk2C;
    u8 unk2D;
};

struct struct_080179f4_sub1 {
    union {
        u16 u16;
        u8 u8[2];
    } unk0;
    u32 unk4;
    u32 null8;
    u32 nullC;
    u32 null10;
    u32 null14;
    u32 null18;
    u32 null1C;
    u32 null20;
    u16 null24;
    u8  unk26;
    s16 unk28;
    u16 null2A;
    u16 unk2C;
    u16 unk2E;
};

struct struct_080179f4 {
	struct struct_080179f4 *unk0;
	struct struct_080179f4 *unk4;
	s32 unk8; // ???
	u8 pad0C[0x3C];
	s8 unk48;
	u8 pad49[3];
	u16 unk4C; // Cue ticks 
	u16 unk4E;
	u8 pad50[4];
	struct struct_030046a4_sub3 unk54;
	union {
	    struct struct_080179f4_sub *type0;
	    struct struct_080179f4_sub1 *type1;
	} *unk64;
	u8 unk68;
};

typedef void (*struct_030046a4_sub_func)(struct struct_080179f4 *, struct struct_080179f4_sub *, s32);

struct struct_030046a4_sub2 {
    u8 pad00[0x4];
    u16 unk4;
    u8 pad06[0x6];
    u32 unkC;
    struct_030046a4_sub_func unk10;
    s32 unk14;
    u8 pad18[0x14];
    struct struct_030046a4_sub3 unk2C;
};

struct struct_030046a4 {
	u8 pad00[0xA];
    s16 unkA;
	s16 unkC;
	s16 unkE;
	struct_030046a4_union unk10;
	u8 pad14[4];
	struct struct_080179f4 *unk18;
	struct struct_030046a4_sub2 *unk1C[12]; // ???
	struct_030046a4_func *unk4C;
	u8 pad50[8];
	struct struct_080179f4 *unk58;
	u8 unk5C;
	u8 unk5D;
	s32 unk60;
    u8 pad64[4];
    struct struct_030046a4_sub3 unk68;
	u8 pad78;
    s8 unk79;
	u8 unk7A;
	u8 pad7B[0xB];
    u16 unk86;
};


// Null = "Data Not Used YET"
struct struct_030053c0 {
    u32 null0;
    u32 unk4;      // [D_030053c4] ??
    u32 null8;
    u16 unkC;      // [D_030053cc] ??
    u16 nullE;
    u32 null10;
    u32 unk14;     // [D_030053d4] ??
    u32 null18;
    u32 null1C;
    u32 null20[2];
    u32 unk28_1:1;
    u32 unk28_2:4;
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 null38[2];
    u32 null40[4];
    u32 null50[4];
    u32 null60[4];
    u32 null70[4];
    u32 null80[4];
    u32 null90[4];
    u32 nullA0[4];
    u32 nullB0[4];
    u32 nullC0[4];
    u32 nullD0[4];
    u32 nullE0[4];
    u32 nullF0[4];
    u32 null100[4];
    u32 null110[4];
    u32 null120[4];
    u32 null130[4];
    u32 null140[4];
    u32 null150[4];
    u32 null160[4];
    u32 null170[4];
    u32 null180[4];
    u16 unk190;    // [D_03005550] BeatScript: Music Volume
    u16 unk192;    // [D_03005552] BeatScript: Music Channel Selection Volume
    u16 unk194;    // [D_03005554] BeatScript: Music Channel Selection
    u16 unk196;    // [D_03005556] BeatScript: Music Pitch
    u32 pad198[0xA];
    void (*unk1C0)(u32);
    u32 unk1C4;
};


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


// Game engine structs

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


struct WizardsWaltzCue {
    struct AffineSprite *sprite;
    u16 null4;
    s16 position;
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
    u8 unk0;
    u8 pad1;
    u8 unk2;
    u32* unk4;
    struct BonOdoriInfo_sub unk8[4];
    u8 unk38;
    u16 unk3A;
    s16 unk3C;
    s16 unk3E;
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
        u32 *animClose;
        u32 *animFar;
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


struct struct_030055d0 {
    union {
        struct KarateManInfo karateMan;
        struct RapMenInfo rapMen;
        struct WizardsWaltzInfo wizardsWaltz;
        struct RhythmTweezersInfo rhythmTweezers;
        struct SneakySpiritsInfo sneakySpirits;
        struct PrologueInfo prologues;
        struct BonOdoriInfo bonOdori;
        struct SpaceballInfo spaceball;
        struct FireworksInfo fireworks;
    } gameInfo;
};

typedef void (*struct_030055e0_func)(void);
typedef u32 (*struct_030055e0_func_1)(void);

struct struct_030055e0_sub {
    u16 unk0;
    struct_030055e0_func unk4;
    struct_030055e0_func_1 unk8;
    u32 unkC;
};

struct struct_030055e0 {
    u8 unk0;
    u8 unk1_1:1;
    u8 unk1_2:1;
    struct struct_030055e0_sub *unk4;
};


extern struct struct_030046a4 *D_030046a4;
extern struct struct_03004b10 D_03004b10;
extern s32 D_03005380;
extern struct struct_030053c0 D_030053c0;
extern struct struct_030055d0 *D_030055d0;
extern struct struct_030055e0 D_030055e0;
extern s16 gSineTable[];
extern s16 D_08935fcc[];
extern s16 D_089361cc[];
