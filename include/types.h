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
    u16 unk0;
    u16 unk2;
    u16 unk4[4];
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
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
    u16 unk54[0x100];   // bg palette buffer, 03004b64
    u16 unk254[0x100];  // obj palette buffer, 03004d64
    u32 unk454[0x100];  // oam obj buffer, 03004f64
};

struct struct_080179f4_sub {
    u32 unk0;
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
	u16 unk4C;
	u16 unk4E;
	u8 pad50[4];
	struct struct_030046a4_sub3 unk54;
	union {
	    struct struct_080179f4_sub *type0;
	    struct struct_080179f4_sub1 *type1;
	} *unk64;
	u8 unk68;
};

typedef void (*struct_030046a4_sub_func)(struct struct_080179f4 *,s32 *,s32);

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
};


struct struct_030055d0_sub {
    u8 unk0:4;
    u8 pad01[3];
    s16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u8 pad0E[8];
    u32 unk18;
    u32 unk1C;
    u8 pad20[4];
    u32 unk24;
    u8 pad28[5];
    u8 unk2D;
};


struct KarateManInfoSubstruct {
	u8 unk4:4;
    u8 pad05[3];
    s16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
};

struct KarateManInfo {
    u8 unk0;
	struct KarateManInfoSubstruct unk_substruct;
    s16 unk14;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u32 *unk1C;
    s16 unk20;
    u32 unk24;
    s16 unk28;
    u8 unk2A;
    u8 pad2B[3];
    s16 unk2E;
    u16 unk30;
    u16 unk32;
    u8 unk34;
    u8 unk35;
    u8 unk36;
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


struct WizardsWaltzSparkle {
    struct ScaledEntity *entity; // Entity:  unk0
    u8  state;      // Value:   unk4 {0,1,2}
    u32 unk8;       // Counter: unk8
    u32 unkC;       // Value:   posUnk0C
    u32 unk10;      // Value:   posUnk10
    u32 unk14;      // Value:   posUnk14
    u32 unk18;      // Counter: unk18 {0..15}
    u32 null1C;
};

struct WizardsWaltzInfo {
    u8 version;         // Value:   unk0
    struct ScaledEntity *wizardEntity; // Entity:  unk4
    u8  wizardState;    // Value:   unk8 {0,1}
    u32 unkC;           // Value:   posUnk0C
    u32 unk10;          // Value:   posUnk10
    s32 unk14;          // Value:   posUnk14
    u32 unk18;          // Value:   posUnk18
    u32 null1C;
    u32 null20;
    struct ScaledEntity *shadowEntity; // Entity:  unk24
    u32 null28;
    u32 null2C;
    u32 null30;
    u32 null34;
    u32 null38;
    u32 null3C;
    u32 null40;
    struct WizardsWaltzSparkle sparkle[10]; // Struct: unk44[10]
    struct ScaledEntity *girlEntity; // Entity:  unk184
    u8  girlState;      // Value:   unk188 {0,1,2}
    u32 null18C;
    u32 null190;
    u32 null194;
    u32 null198;
    u32 null19C;
    u32 null1A0;
    s32 cyclePosition;  // Counter: unk1A4
    s32 cycleInterval;  // Value:   unk1A8
    s32 globalScale;    // Value:   unk1AC
    u8  unk1B0;         // Counter: cycleUnk1B0 {0..9}
    u8  flowerCount;    // Counter: unk1B1
    u8  isTutorial;     // Flag:    unk1B2
};


struct RhythmTweezersTweezers {
    struct ScaledEntity *entity; // Entity:  Tweezers
    u8  unk4;   // Flag:    Active
    u8  unk5;   // State:   Holding { 0 = False (Open); 1 = True (Full Hair); 2 = (Half Hair) }
    s16 unk6;   // Value:   0x4ea - ((cyclePosition * 0x5d5) / cycleTarget)
    u32 unk8;   // Counter: Cycle Position
    u32 unkC;   // Value:   Cycle Target
    u8  unk10;  // Flag:    Pulling (assigned but never used)
};

struct RhythmTweezersFallingHair {
    struct ScaledEntity *entity; // Entity:  Falling Hair
    s32 unk4;   // Value:   Vertical Velocity
    u32 unk8;   // Counter: Vertical Position
    s16 unkC;   // Value:   Distance From Tweezers
    u16 unkE;   // Value:   Randomised Rotation Speed ( func_08001980(0x1f) - 0xf )
};

struct RhythmTweezersVegetable {
    s16 entity0;    // Entity:  Current Vegetable Face
    s16 entity2;    // Entity:  Upcoming Vegetable Face
    u8  unk4;       // State:   Current Vegetable Type { 0 = Onion; 1 = Turnip; 2 = Potato }
    u8  unk5;       // State:   Upcoming Vegetable Type { 0 = Onion; 1 = Turnip; 2 = Potato }
    u8  unk6;       // Flag:    Screen Scrolling
    u32 unk8;       // Counter: Screen Scroll Position
    u32 unkC;       // Value:   Screen Scroll Target
    u8  unk10;      // Flag:    Destination Vegetable BG Map { 0 = D_0600f800 (Right); -1 = D_0600f000 (Left) }
};

struct RhythmTweezersInfo {
    u8 unk0;        // Value: Version { 0..2 = Rhythm Tweezers; 3..5 = Rhythm Tweezers 2 }
    struct RhythmTweezersTweezers tweezers;
    u32 unk18;      // Counter: Hair Placement Cycle Position
    u32 unk1C;      // Value:   Hair Placement Cycle Spacing
    u8  unk20;      // Counter: Next Available Falling Hair {0..4}
    struct RhythmTweezersFallingHair fallingHairs[5];
    struct RhythmTweezersVegetable vegetable;
    union {         // Counter: Remaining Hairs
        u16 u16[2];     // Missed/Queued; Barely'd
        u32 u32;        // Combined (NOT Total)
    } unk88;
    s16 unk8C;      // Entity:  Tutorial Text (Unused)
    u16 unk8E;      // Value:   Global Horizontal Position (for vegetable faces and hair)
    s16 unk90;      // Value:   Mask Current Position
    s16 unk92;      // Value:   Mask Vertical Motion
};


struct SneakySpiritsInfo {
    u32 *unk0;          // Pointer: ??? (Related to Tutorial Text)
    u8  version;        // Value:   Version
    u8  rainSlow;       // Flag:    Slow-Motion Rain
    s16 rainDrops[30];      // Entity:  Raindrops
    u16 rainDropNext;       // Counter: Next Raindrop to Update
    s16 rainSplashes[20];   // Entity:  Rain Splashes
    u16 rainSplashNext;     // Counter: Next Rain Splash to Update
    s16 tree;           // Entity:  Tree
    s16 bow;            // Entity:  Bow
    u8  arrowReady;     // Flag:    Bow Has Arrow
    s16 door;           // Entity:  Door
    s16 backWall;       // Entity:  Back Wall
    s16 ghostWalk;      // Entity:  Sneaky Spirit (Moving)
    u16 unk7A;          // Value:   7 (used for determining horizontal position; only assigned in startup)
    s16 ghostMask;      // Entity:  Wall Mask (used to hide the Sneaky Spirit when moving low)
    s16 ghostHit;       // Entity:  Sneaky Spirit (Hit)
    u16 ghostHeight;    // Value:   Sneaky Spirit Height of Next Motion { Default = 0x100 }
    u32 *rainChannel;   // Pointer: IRAM Sound Channel Playing Rain/Wind SFX
    s16 text;           // Entity:  Tutorial Text
    u8  slowMotionHit;  // Flag:    Slow-Motion Effect On Hit
    u8  freezeRain;     // Flag:    Freeze Slow-Motion Rain
    s16 tutorialGhost;  // Entity:  Sneaky Spirit (Tutorial Example)
};


struct PrologueInfo {
    u8  ver;        // Value:  Version
    s16 entity2;    // Entity: Object 0
    s16 entity4;    // Entity: Object 1
    s16 entity6;    // Entity: Object 2
};


struct struct_030055d0 {
    union {
        struct KarateManInfo karateMan;
        struct RapMenInfo rapMen;
        struct WizardsWaltzInfo wizardsWaltz;
        struct RhythmTweezersInfo rhythmTweezers;
        struct SneakySpiritsInfo sneakySpirits;
        struct PrologueInfo prologues;
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