#pragma once

#include "global.h"
#include "sound.h"

// Engine Macros/Enums:
enum RhythmTweezersHeldHairsEnum {
    TWEEZERS_HELD_HAIR_NONE,
    TWEEZERS_HELD_HAIR_FULL,
    TWEEZERS_HELD_HAIR_BARELY
};
enum RhythmTweezersVegetableTypesEnum {
    VEGETABLE_TYPE_ONION,
    VEGETABLE_TYPE_TURNIP,
    VEGETABLE_TYPE_POTATO
};
#define RT_VEGETABLE_BG_MAP_L *(u32 *)(VRAMBase + 0xF000) // VRAM BG Map for vegetable textures (left).
#define RT_VEGETABLE_BG_MAP_R *(u32 *)(VRAMBase + 0xF800) // VRAM BG Map for vegetable textures (right).

// OAM Animations:
extern u32 D_088e8768[];    // Animation: hair_appear_short
extern u32 D_088e87a8[];    // Animation: "tweezer_pluck"
extern u32 D_088e8848[];    // Animation: "tweezer_pluck_barely"
extern u32 D_088e8898[];    // Animation: "tweezer_pluck_miss"
extern u32 D_088e88e0[];    // Animation: "hair_fall"
extern u32 D_088e88f8[];    // Animation: "hair_stubble"
extern u32 D_088e8910[];    // Animation: "tutorial_text" (unused)
extern u32 D_088e89a8[];    // Animation: hair_appear_long
extern u32 D_088e8a50[];    // Animation: "hair_long_pull"

// Palettes:

// Sound Effects:
extern const struct SequenceData s_f_hair_next_seqData;         // SFX: Cash Register
extern const struct SequenceData s_f_hair_nuki_long_seqData;    // SFX: ???
extern const struct SequenceData s_f_hair_tuneru_seqData;       // SFX: ???
extern const struct SequenceData s_hanabi_pon_seqData;          // SFX: Hair Appear (Short)
extern const struct SequenceData s_f_hair_appear_long_seqData;  // SFX: Hair Appear (Long)

// Engine Data:

// Engine Definition Data:
extern u32 *D_089e3d98[]; // Array of animation pointers for vegetable faces
extern u32 *D_089e3da4[]; // Array of BG Map pointers for vegetable textures
extern u32 D_089e3db0;    // GFX-related Null
extern u32 *D_089e3ff4[]; // GFX Struct Index

// Functions:
extern void func_0802e750(void);        // [func_0802e750] Initialise Vegetable Face
extern void func_0802e828(u32);         // [func_0802e828] ENGINE Func_02 - Scroll to New Vegetable
extern void func_0802e89c(void);        // [func_0802e89c] ENGINE Func_04 - Play Cash Register SFX
extern void func_0802e8ac(void);        // [func_0802e8ac] Update Vegetable (Scrolling)
extern void func_0802e96c(u32);         // [func_0802e96c] ENGINE Func_03 - Define New Vegetable Type
extern void func_0802e97c_stub(void);   // [func_0802e97c] ENGINE Func_06 - Unknown (STUB)
extern void func_0802e980(void);        // [func_0802e980] Update Vegetable
extern void func_0802e99c(void);        // [func_0802e99c] Initialise Falling Hairs
extern void func_0802ea20(void);        // [func_0802ea20] Update Falling Hairs
extern void func_0802ea74(u32);         // [func_0802ea74] Create Falling Hair
extern void func_0802eaf8(void);        // [func_0802eaf8] Initialise Tweezers
extern void func_0802eb7c(void);        // [func_0802eb7c] ENGINE Func_00 - Spawn Tweezers
extern void func_0802eba0(void);        // [func_0802eba0] Update Tweezers (Position)
extern void func_0802ebdc(void);        // [func_0802ebdc] Update Tweezers (Vertical Screen Scroll)
extern void func_0802ebf8(void);        // [func_0802ebf8] Update Tweezers
extern void func_0802ec50(void);        // [func_0802ec50] GFX_INIT Func_02
extern void func_0802ec60(void);        // [func_0802ec60] GFX_INIT Func_01
extern void func_0802eca0(void);        // [func_0802eca0] GFX_INIT Func_00
extern void func_0802eccc(u8);          // [func_0802eccc] MAIN - Init
extern void func_0802edc4_stub(void);   // [func_0802edc4] ENGINE Func_09 - STUB
extern void func_0802edc8(void);        // [func_0802edc8] Update Mask
extern void func_0802ee00(void);        // [func_0802ee00] ENGINE Func_07 - Show Mask
extern void func_0802ee10(void);        // [func_0802ee10] ENGINE Func_08 - Hide Mask
extern void func_0802ee24(void);        // [func_0802ee24] MAIN - Update
extern void func_0802ee40_stub(void);   // [func_0802ee40] MAIN - Close (STUB)
extern void func_0802ee44(void);        // [func_0802ee44] ENGINE Func_01 - Reset Hair Placement Cycle
extern void func_0802ee6c(void);        // [func_0802ee6c] Update Hair Placement Cycle
extern void func_0802ee7c(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802ee7c] CUE - Spawn
extern u32  func_0802ef54(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802ef54] CUE - Update (Short Hair)
extern u32  func_0802ef68(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802ef68] CUE - Update (Long Hair)
extern void func_0802f164(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802f164] CUE - Despawn
extern void func_0802f170(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802f170] CUE - Hit (Short Hair)
extern void func_0802f21c(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802f21c] CUE - Hit/Barely (Long Hair)
extern void func_0802f2a0(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802f2a0] CUE - Barely (Short Hair)
extern void func_0802f330(u32, struct RhythmTweezersCue *, u32, u32);   // [func_0802f330] CUE - Miss
extern void func_0802f33c(void);        // [func_0802f33c] MAIN - Input Event
extern void func_0802f378_stub(void);   // [func_0802f378] COMMON Func_00 - STUB
extern void func_0802f37c_stub(void);   // [func_0802f37c] COMMON Func_01 - STUB
extern void func_0802f380(void);        // [func_0802f380] ENGINE Func_05 - Unknown (Unused)
