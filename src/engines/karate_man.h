#pragma once

#include "global.h"
#include "sound.h"

// Engine Macros/Enums:

// OAM Animations:
extern u32 D_088acc2c[]; // Animation: "joe_stand"
extern u32 D_088acc3c[]; // Animation: "objects"
extern u32 D_088acc6c[]; // Animation: "objects_shadow"
extern u32 D_088acc94[]; // Animation: "joe_punch_high"
extern u32 D_088accdc[]; // Animation: "joe_beat"
extern u32 D_088accfc[]; // Animation: "hit_effect"
extern u32 D_088acd1c[]; // Animation: "flow_bar"
extern u32 D_088acd54[]; // Animation: "joe_punch_low"
extern u32 D_088acd94[]; // Animation: "joe_beat_barely"
extern u32 D_088acdb4[]; // Animation: "joe_miss"
extern u32 D_088acdd4[]; // Animation: "joe_beat_smirk"
extern u32 D_088acdf4[]; // Animation: "joe_beat_happy"
extern u32 D_088ace14[]; // Animation: "joe_punch_hard"
extern u32 D_088acf04[]; // Animation: "cue_text"
extern u32 D_088acf2c[]; // Animation: "tutorial_button"
extern u32 D_088acf44[]; // Animation: "tutorial_skip"
extern u32 D_088acf54[]; // Animation: "tutorial_text"
extern u32 D_088acf7c[]; // Animation: "joe_punch_high_face" (Remix 8 face)
extern u32 D_088acfc4[]; // Animation: "joe_punch_low_face" (Remix 8 face)

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
extern u32 *D_089df064[];   // GFX-related
extern u32 *D_089df1ac[];   // GFX Struct Index
extern u32 D_089df1bc[];    // BG Face Graphics
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
extern void func_080214a0(u32);
extern void func_080214d4(u32);
extern void func_08021524(void);
extern void func_08021544(u8);
extern void func_08021554(void);
extern void func_080215cc(void);
extern void func_0802160c(struct struct_080179f4 *);
extern void func_08021644(struct struct_080179f4 *, struct KarateManCue *, u32);
extern void func_08021740(struct KarateManCue *);
extern void func_080217ec(struct KarateManCue *);
extern void func_08021818(struct KarateManCue *);
extern u32  func_08021888(u32, struct KarateManCue *, u32, u32);
extern void func_08021974(u32, struct KarateManCue *);
extern void func_080219a8(void);
extern void func_08021a0c(void);
extern void func_08021a60(struct struct_080179f4 *, struct KarateManCue *);
extern void func_08021d38(struct struct_080179f4 *, struct KarateManCue *);
extern void func_08021dcc(void);
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