#pragma once

#include "global.h"
#include "engines.h"


struct BonOdoriText {
    s16 unk0;
    s16 sprite;
    u32 unk4;
    s16 unk8;
    u16 unkA;
};

struct BonOdoriInfo {
    u8 version;
    struct TextObject1 *unk4;
    struct BonOdoriText unk8[4];
    u8 unk38;
    u16 unk3A;
    s16 unk3C;
    s16 yaguraSprite;
    u16 yaguraFrownTimer;
    u8 yaguraNoticedMistake;
    s16 donpanSprites[4];
    u16 donpanAnimTimers[4];
    u8 donpanEmoteTimer;
    u8 donpanEmoteAnim;
    const u16 *bgPalDark;
    const u16 *objPalDark;
    u16 bgPalDarkBuf[32][16];
    u16 objPalDarkBuf[32][16];
    u16 mistimedClaps;
    u8 currentClapAnim;
    u16 playerClapTimer;
};

struct BonOdoriCue {
    u8 type;
};


// Engine Macros/Enums:
enum BonOdoriAnimationsEnum {
    BON_ODORI_ANIM_DONPAN1_BEAT,
    BON_ODORI_ANIM_DONPAN2_BEAT,
    BON_ODORI_ANIM_DONPAN3_BEAT,
    BON_ODORI_ANIM_PLAYER_BEAT,
    BON_ODORI_ANIM_DONPAN1_CLAP_SIDE,
    BON_ODORI_ANIM_DONPAN2_CLAP_SIDE,
    BON_ODORI_ANIM_DONPAN3_CLAP_SIDE,
    BON_ODORI_ANIM_PLAYER_CLAP_SIDE,
    BON_ODORI_ANIM_DONPAN1_CLAP_FRONT,
    BON_ODORI_ANIM_DONPAN2_CLAP_FRONT,
    BON_ODORI_ANIM_DONPAN3_CLAP_FRONT,
    BON_ODORI_ANIM_PLAYER_CLAP_FRONT,
    BON_ODORI_ANIM_DONPAN1_BOW,
    BON_ODORI_ANIM_DONPAN2_BOW,
    BON_ODORI_ANIM_DONPAN3_BOW,
    BON_ODORI_ANIM_PLAYER_BOW,
    BON_ODORI_ANIM_DONPAN1_GLARE,
    BON_ODORI_ANIM_DONPAN2_GLARE,
    BON_ODORI_ANIM_DONPAN3_GLARE,
    BON_ODORI_ANIM_DONPAN1_HAPPY,
    BON_ODORI_ANIM_DONPAN2_HAPPY,
    BON_ODORI_ANIM_DONPAN3_HAPPY,
    BON_ODORI_ANIM_PLAYER_HAPPY,
    BON_ODORI_ANIM_DONPAN1_VERY_HAPPY,
    BON_ODORI_ANIM_DONPAN2_VERY_HAPPY,
    BON_ODORI_ANIM_DONPAN3_VERY_HAPPY,
    BON_ODORI_ANIM_PLAYER_VERY_HAPPY,
    BON_ODORI_ANIM_DONPAN1_SPIN,
    BON_ODORI_ANIM_DONPAN2_SPIN,
    BON_ODORI_ANIM_DONPAN3_SPIN,
    BON_ODORI_ANIM_PLAYER_SPIN,
    BON_ODORI_ANIM_YAGURA_BEAT,
    BON_ODORI_ANIM_YAGURA_SPEAK,
    BON_ODORI_ANIM_YAGURA_FROWN,
};

enum BonOdoriDonpanAnimationsEnum {
    DONPAN_ANIM_BEAT,
    DONPAN_ANIM_CLAP_FRONT,
    DONPAN_ANIM_CLAP_SIDE,
    DONPAN_ANIM_BOW,
    DONPAN_ANIM_GLARE,
    DONPAN_ANIM_HAPPY,
    DONPAN_ANIM_VERY_HAPPY,
    DONPAN_ANIM_SPIN
};

// OAM Animations:

// Palettes:

// Sound Effects:
extern const struct SequenceData s_tebyoushi_pati_seqData;
extern const struct SequenceData s_HC_seqData;

// Engine Data:

// Engine Definition Data:
extern const struct Animation *const *const D_089dec38[34]; // Pointers to animation arrays, with each one consisting of two animations.
extern const u8 *const bon_odori_donpan_anim_id_table[];   // Contains Donpan animation indexes. (Subarrays are the same animation but for different donpans)
extern const u16 bon_odori_anim_durations[8];  // Seemingly numbers of ticks for animations.
extern const struct CompressedGraphics *const bon_odori_buffered_textures[]; // Buffered Textures List
extern const struct GraphicsTable *const D_089deec4[]; // Graphics Table
extern const u16 *const D_089deecc[];  // Another index of pointers to palettes (more like sub-palettes).
extern const u16 *const D_089deed4[];  // Index of pointers to palettes.

// Functions:
extern const struct Animation *bon_odori_get_anim(u32);  // [func_080206a0] Get OBJ Animation
extern void func_080206c0(void); // [func_080206c0] Init. Donpans
extern const struct Animation *bon_odori_get_donpan_anim(u32, u32); // [func_0802075c] Get Donpan Animation
extern void func_08020778(u32, u32); // [func_08020778] Set Donpan Animation
extern void func_080207d0(u32);     // [func_080207d0] ENGINE Func_0B - Set Animation (CPU Donpans)
extern void func_080207ec(u32);     // [func_080207ec] ENGINE Func_0C - Set Animation (Player)
extern void func_080207f8(u32);     // [func_080207f8] ENGINE Func_0D - Set Animation (All Donpans)
extern void func_0802080c(u32);     // [func_0802080c] ENGINE Func_0E - Set CPU Donpan Animation Timer
extern void func_08020834(void);    // [func_08020834] Decrement Donpan Animation Timer
extern void func_0802085c(void);    // [func_0802085c] GFX_INIT Func_02
extern void func_08020880(void);    // [func_08020880] GFX_INIT Func_01
extern void func_080208c0(void);    // [func_080208c0] GFX_INIT Func_00
extern void func_080208ec(u32);     // [func_080208ec] MAIN - Init
extern void func_08020a48(void);    // [func_08020a48] ENGINE Func_11 - STUB
extern void func_08020a4c(const char *, s32, u32);
extern void func_08020be4(u8);      // [func_08020be4] ENGINE Func_00 - ?
extern void func_08020bf4(const char *);     // [func_08020bf4] ENGINE Func_01 - Show Text (Middle)
extern void func_08020c0c(const char *);     // [func_08020c0c] ENGINE Func_02 - Show Text (Left)
extern void func_08020c24(const char *);     // [func_08020c24] ENGINE Func_03 - Show Text (Right)
extern void func_08020c3c(s32);     // [func_08020c3c] ENGINE Func_04 - ?
extern void func_08020c4c(u32);
extern void func_08020c8c(u32);     // [func_08020c8c] ENGINE Func_05 - Highlight Text
extern void func_08020d20(u32);     // [func_08020d20] ENGINE Func_06 - Lighten Screen (Gradual)
extern void func_08020da0(u32);     // [func_08020da0] ENGINE Func_07 - Darken Screen (Gradual)
extern void func_08020e1c(void);    // [func_08020e1c] ENGINE Func_08 - ?
extern void func_08020e50(void);    // [func_08020e50] ENGINE Func_09 - Lighten Screen (Instant)
extern void func_08020e90(void);    // [func_08020e90] ENGINE Func_0A - Darken Screen (Instant)
extern void func_08020ed4(void);    // [func_08020ed4] ENGINE Func_0F - Test Player Inputs
extern void func_08020ee8(void);    // [func_08020ee8] ENGINE Func_10 - React to Player Inputs
extern void func_08020f48(void);    // [func_08020f48] MAIN - Update
extern void func_08020f8c(void);    // [func_08020f8c] MAIN - Close
extern void func_08020f98(u32, struct BonOdoriCue *, u32);  // [func_08020f98] CUE - Spawn
extern u8   func_08020fb0(u32, struct BonOdoriCue *, u32);  // [func_08020fb0] CUE - Update
extern void func_08020fcc(u32, struct BonOdoriCue *);       // [func_08020fcc] CUE - Despawn
extern void func_08020fd0(u32, struct BonOdoriCue *);       // [func_08020fd0] CUE - Hit
extern void func_08020fe8(u32, struct BonOdoriCue *);       // [func_08020fe8] CUE - Barely
extern void func_0802100c(u32, struct BonOdoriCue *);       // [func_0802100c] CUE - Miss
extern void func_08021034(void);    // [func_08021034] MAIN - Input Event
extern void func_08021084(void);    // [func_08021084] COMMON Func_00 - Beat Animation
extern void func_08021188(void);    // [func_08021188] COMMON Func_01 - STUB
extern void func_0802118c(void);    // [func_0802118c] COMMON Func_02 - STUB