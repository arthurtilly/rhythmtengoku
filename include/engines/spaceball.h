#pragma once

#include "global.h"
#include "engines.h"


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


// Engine Macros/Enums:
enum SpaceballCueStatesEnum {
    SPACEBALL_CUE_STATE_LAUNCH,
    SPACEBALL_CUE_STATE_HIT,
    SPACEBALL_CUE_STATE_BARELY
};

// OAM Animations:
extern const struct Animation spaceball_anim00[]; // Animation: "batter_green"
extern const struct Animation spaceball_anim01[]; // Animation: "?"
extern const struct Animation spaceball_anim02[]; // Animation: "pitcher_shoot"
extern const struct Animation spaceball_anim03[]; // Animation: "?"
extern const struct Animation spaceball_anim04[]; // Animation: "?"
extern const struct Animation spaceball_anim05[]; // Animation: "?"
extern const struct Animation spaceball_anim06[]; // Animation: "?"
extern const struct Animation spaceball_anim07[]; // Animation: "?"
extern const struct Animation spaceball_anim08[]; // Animation: "?"
extern const struct Animation spaceball_anim09[]; // Animation: "?"
extern const struct Animation spaceball_anim10[]; // Animation: "miss_poof"
extern const struct Animation spaceball_anim11[]; // Animation: "bg_star"
extern const struct Animation spaceball_anim12[]; // Animation: "umpire_show"
extern const struct Animation spaceball_anim13[]; // Animation: "umpire_sway"
extern const struct Animation spaceball_anim14[]; // Animation: "?"
extern const struct Animation spaceball_anim15[]; // Animation: "?"
extern const struct Animation spaceball_anim16[]; // Animation: "?"
extern const struct Animation spaceball_anim17[]; // Animation: "?"
extern const struct Animation spaceball_anim18[]; // Animation: "?"
extern const struct Animation spaceball_anim19[]; // Animation: "?"
extern const struct Animation spaceball_anim20[]; // Animation: "?"
extern const struct Animation spaceball_anim21[]; // Animation: "?"

// Palettes:

// Sound Effects:
extern const struct SequenceData s_f_batter_ball_land_seqData;

// Engine Data:

// Engine Definition Data:
extern const struct CompressedGraphics *const spaceball_buffered_textures[]; // Buffered Textures List
extern const struct GraphicsTable spaceball_gfx_table[]; // Graphics Table
extern const struct Animation *const spaceball_anim_table_batter_close[3]; // Batter Animations (Close)
extern const struct Animation *const spaceball_anim_table_batter_far[3]; // Batter Animations (Far)
extern const struct Animation *const spaceball_anim_table_ball[3]; // Spaceball Animations

// Functions:
extern void func_0801fc44(u32);     // [func_0801fc44] Initialise/Reset BG Star Position
extern void func_0801fcb0(void);    // [func_0801fcb0] Update BG Star Positions (X, Y)
extern void func_0801fd1c(void);    // [func_0801fd1c] Update BG Star Positions (Z)
extern void func_0801fd70(struct AffineSprite *, s32, s32, s32);                // [func_0801fd70] Update Entity Position
extern void func_0801fdc4(struct AffineSprite *, s32, s32, s32, const struct Animation *, const struct Animation *);  // [func_0801fdc4] Update Batter Position
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
extern void func_08020660(u32, u32);    // [func_08020660] MAIN - Input Event
extern void func_08020698(void);    // [func_08020698] COMMON Func_00 - STUB
extern void func_0802069c(void);    // [func_0802069c] COMMON Func_01 - STUB
