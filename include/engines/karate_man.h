#pragma once

#include "global.h"
#include "engines.h"
#include "src/main.h"


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


// Engine Macros/Enums:

// OAM Animations:
extern const struct Animation D_088acc2c[]; // Animation: "joe_stand"
extern const struct Animation D_088acc3c[]; // Animation: "objects"
extern const struct Animation D_088acc6c[]; // Animation: "objects_shadow"
extern const struct Animation D_088acc94[]; // Animation: "joe_punch_high"
extern const struct Animation D_088accdc[]; // Animation: "joe_beat"
extern const struct Animation D_088accfc[]; // Animation: "hit_effect"
extern const struct Animation D_088acd1c[]; // Animation: "flow_bar"
extern const struct Animation D_088acd54[]; // Animation: "joe_punch_low"
extern const struct Animation D_088acd94[]; // Animation: "joe_beat_barely"
extern const struct Animation D_088acdb4[]; // Animation: "joe_miss"
extern const struct Animation D_088acdd4[]; // Animation: "joe_beat_smirk"
extern const struct Animation D_088acdf4[]; // Animation: "joe_beat_happy"
extern const struct Animation D_088ace14[]; // Animation: "joe_punch_hard"
extern const struct Animation D_088acf04[]; // Animation: "cue_text"
extern const struct Animation D_088acf2c[]; // Animation: "tutorial_button"
extern const struct Animation D_088acf44[]; // Animation: "tutorial_skip"
extern const struct Animation D_088acf54[]; // Animation: "tutorial_text"
extern const struct Animation D_088acf7c[]; // Animation: "joe_punch_high_face" (Remix 8 face)
extern const struct Animation D_088acfc4[]; // Animation: "joe_punch_low_face" (Remix 8 face)

// Palettes:
extern u16 D_088ad004[8][16]; // Palette

// Sound Effects:
extern const struct SequenceData s_f_boxing_score_reset_seqData;
extern const struct SequenceData s_f_boxing_score_up_seqData;
extern const struct SequenceData s_f_boxing_score_down_seqData;
extern const struct SequenceData s_f_boxing_punch_seqData;
extern const struct SequenceData s_f_boxing_land_seqData;
extern const struct SequenceData s_f_boxing_hard_seqData;
extern const struct SequenceData s_f_boxing_normal_seqData;
extern const struct SequenceData s_f_boxing_kansei_seqData;
extern const struct SequenceData s_f_boxing_v_nua_seqData;

// Engine Data:

// Engine Definition Data:
extern const struct CompressedGraphics *D_089df064[]; // Buffered Textures List
extern const struct GraphicsTable *D_089df1ac[]; // Graphics Table
extern const struct CompressedGraphics *D_089df1bc[]; // BG Face Graphics
extern u8  D_089df37c[];    // BG Palette Index (Low Flow)
extern u8  D_089df37e[];    // BG Palette Index (High Flow)

// Functions:
extern void func_08021190(void);    // [func_08021190] GFX_INIT Func_02
extern void func_080211a4(void);
extern void func_080211e4(void);
extern void func_08021210(u32);     // [func_08021210] MAIN - Init
extern void func_0802139c(u32, u32);
extern void func_080213d4(u32);
extern void func_080213e4(void);
extern void func_08021408(void);
extern void func_08021424(void);
extern void func_08021440(char *);
extern void func_08021458(void);
extern void func_080214a0(const struct Scene *);
extern void func_080214d4(u32);
extern void func_08021524(void);
extern void func_08021544(u8);
extern void func_08021554(void);
extern void func_080215cc(void);
extern void func_0802160c(struct Cue *);
extern void func_08021644(struct Cue *, struct KarateManCue *, u32); // CUE - Spawn
extern void func_08021740(struct KarateManCue *);
extern void func_080217ec(struct KarateManCue *);
extern void func_08021818(struct KarateManCue *);
extern u32  func_08021888(struct Cue *, struct KarateManCue *, u32, u32); // CUE - Update
extern void func_08021974(struct Cue *, struct KarateManCue *); // CUE - Despawn
extern void func_080219a8(void);
extern void func_08021a0c(void);
extern void func_08021a60(struct Cue *, struct KarateManCue *); // CUE - Hit
extern void func_08021d38(struct Cue *, struct KarateManCue *); // CUE - Barely
extern void func_08021dcc(struct Cue *, struct KarateManCue *); // CUE - Miss
extern void func_08021dd8(struct KarateManJoe *);
extern void func_08021e40(struct KarateManJoe *);
extern void func_08021e58(struct KarateManJoe *);
extern void func_08021e88(void);
extern void func_08021f04(void);
extern void func_08022010(u32);
extern void func_08022050(void);
extern void func_080220c4(void);
extern void func_08022114(void);
extern void func_08022170(void);
extern void func_080221cc(void);
extern void func_0802221c(u32);