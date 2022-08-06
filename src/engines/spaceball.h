#pragma once

#include "global.h"
#include "sound.h"

// Engine Macros/Enums:
enum SpaceballCueStatesEnum {
    SPACEBALL_CUE_STATE_LAUNCH,
    SPACEBALL_CUE_STATE_HIT,
    SPACEBALL_CUE_STATE_BARELY
};

// OAM Animations:
extern u32 D_088a1a70; // Animation: "batter_green"
extern u32 D_088a1ad0; // Animation: "pitcher_shoot
extern u32 D_088a1b70; // Animation: "miss_poof"
extern u32 D_088a1b90; // Animation: "bg_star"
extern u32 D_088a1ba0; // Animation: "umpire_show"
extern u32 D_088a1bd0; // Animation: "umpire_sway"

// Palettes:

// Sound Effects:
extern const struct SequenceData s_f_batter_ball_land_seqData;

// Engine Data:

// Engine Definition Data:
extern u32  D_089de93c;    // GFX-related Null
extern u32  D_089de940[];  // GFX Init Struct
extern u32 *D_089de988[3]; // Batter Animations (Close)
extern u32 *D_089de994[3]; // Batter Animations (Far)
extern u32 *D_089de9a0[3]; // Spaceball Animations

// Functions:
extern void func_0801fc44(u32);     // [func_0801fc44] Initialise/Reset BG Star Position
extern void func_0801fcb0(void);    // [func_0801fcb0] Update BG Star Positions (X, Y)
extern void func_0801fd1c(void);    // [func_0801fd1c] Update BG Star Positions (Z)
extern void func_0801fd70(struct AffineSprite *, s32, s32, s32);                // [func_0801fd70] Update Entity Position
extern void func_0801fdc4(struct AffineSprite *, s32, s32, s32, u32 *, u32 *);  // [func_0801fdc4] Update Batter Position
extern void func_0801fe6c(void);    // [func_0801fe6c] Update Entities, Stars & Camera
extern void func_0801ff60(void);    // [func_0801ff60] GFX_INIT Func_02
extern void func_0801ff70(void);    // [func_0801ff70] GFX_INIT Func_01
extern void func_0801ffa0(void);    // [func_0801ffa0] GFX_INIT Func_00
extern void func_0801ffcc(u32);     // [func_0801ffcc] MAIN - Init
extern void func_080201a0(void);    // [func_080201a0] ENGINE Func_06 - STUB
extern void func_080201a4(void);    // [func_080201a4] ENGINE Func_00 - Pitcher Prepare
extern void func_080201cc(struct SpaceballBatter *); // [func_080201cc] Update Batter Swing
extern void func_08020200(void);    // [func_08020200] ENGINE Func_01 - Loop Exit Condition (Tutorial)
extern void func_08020238(u32);     // [func_08020238] ENGINE Func_02 - Set Camera Zoom
extern void func_0802026c(u32);     // [func_0802026c] ENGINE Func_03 - Set Batter Variant
extern void func_08020290(u32);     // [func_08020290] ENGINE Func_05 - Set Next Spaceball Sprite
extern void func_080202a4(u32);     // [func_080202a4] ENGINE Func_04 - Set Umpire Animation
extern void func_080202f0(void);    // [func_080202f0] MAIN - Update
extern void func_08020308(void);    // [func_08020308] MAIN - Close (STUB)
extern void func_0802030c(u32, struct SpaceballCue *, u32, u32); // [func_0802030c] CUE - Spawn
extern u32  func_080203fc(u32, struct SpaceballCue *, u32, u32); // [func_080203fc] Update Spaceball (Launch)
extern u32  func_080204b8(u32, struct SpaceballCue *, u32, u32); // [func_080204b8] Update Spaceball (Hit)
extern u32  func_08020500(u32, struct SpaceballCue *, u32, u32); // [func_08020500] Update Spaceball (Barely)
extern u32  func_08020564(u32, struct SpaceballCue *, u32, u32); // [func_08020564] CUE - Update
extern void func_080205a0(u32, struct SpaceballCue *, u32, u32); // [func_080205a0] CUE - Despawn
extern void func_080205ac(u32, struct SpaceballCue *, u32, u32); // [func_080205ac] CUE - Hit
extern void func_080205e8(u32, struct SpaceballCue *, u32, u32); // [func_080205e8] CUE - Barely
extern void func_08020644(u32, struct SpaceballCue *, u32, u32); // [func_08020644] CUE - Miss
extern void func_08020660(void);    // [func_08020660] MAIN - Input Event
extern void func_08020698(void);    // [func_08020698] COMMON Func_00 - STUB
extern void func_0802069c(void);    // [func_0802069c] COMMON Func_01 - STUB
