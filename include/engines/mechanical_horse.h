#pragma once

#include "global.h"
#include "engines.h"

#include "games/mechanical_horse/graphics/mechanical_horse_graphics.h"

// Engine Macros/Enums:
enum HorseLessonsEnum {
    HORSE_LESSON_1_WALK,
    HORSE_LESSON_2_TROT,
    HORSE_LESSON_3_CANTER,
    HORSE_LESSON_4_GALLOP
};

// Engine Types:
struct MechanicalHorseEngineData {
    struct MechanicalHorseSub2 {
        u8 pad0[4];
        s16 unk4;
        u8 unk6;
        u8 unk7;
        u8 unk8;
        s24_8 unkc;
        u8 pad10[0x4];
        u32 unk14;
    } unk0[2]; // horses?
    u32 pad30;
    struct MechanicalHorseHorseGfx {
        s16 sprite;
        u8 pad2;
        u8 cel;
    } horseGfx[2]; // may be the rider instead?
    struct MechanicalHorseSub {
        s16 sprite;
        u8 unk2;
        u8 unk3;
        u8 unk4;
        s24_8 pos_x;
        s24_8 pos_y;
        u32 pos_z;
        s24_8 unk14[2];
    } unk3c[20]; // clip clop text?
    u8 pad[0x60];
    u8 unk2cc;
    u32 unk2d0;
    u32 pad2d4[2];
    struct BitmapFontOBJ* textFont;
    s16 textSprite;
    u8 pad2e2[6];
    u8 unk2e8;
    u8 pad2e9[3];
    u16 musicVolume;
    u16 unk2ee;
    u8 pad2f0[0xe];
    s8 unk2fe; // current bg?
    s8 unk2ff; // next bg?
    u8 unk300;
    u16 unk302;
    u8 unk304;
    u8 pad305;
    s8 unk306;
    u8 pad307[0x5];
    u24_8 unk30c;
};

struct MechanicalHorseCue {
    /* add fields here */
};

struct MechanicalHorseBG {
    Palette *palette;
    const struct GraphicsTable *gfxTable;
};


// Engine Data:
extern const struct GraphicsTable D_0805a924[];
extern const struct GraphicsTable D_0805a948[];
extern const struct GraphicsTable D_0805a96c[];
extern const struct GraphicsTable D_0805a990[];
extern const struct GraphicsTable D_0805a9b4[];
extern const struct GraphicsTable D_0805a9d8[];
extern const char D_0805a9fc[];
extern const s32 D_0805aa00[];
extern const s32 D_0805aa10[];
extern const s32 D_0805aa20[];
extern const s24_8 D_0805aa40[][2];
extern const u32 D_0805aa60[][4];
extern const s32 D_0805aaa0[];
extern const s32 D_0805aab0[][4];


// Engine Definition Data:
extern struct MechanicalHorseBG mechanical_horse_backgrounds[];
extern struct CompressedGraphics *mechanical_horse_buffered_textures[];
extern struct GraphicsTable gfx_table_mechanical_horse[];
extern struct SongHeader *mechanical_horse_player_horse_sfx[];
extern struct SongHeader *mechanical_horse_teacher_horse_sfx[];
extern struct SongHeader *mechanical_horse_lesson_bgm[];
extern struct Animation *mechanical_horse_anim[];
extern struct Animation *mechanical_horse_jockey_anim[];
extern struct Animation *mechanical_horse_lesson_text_anim[][4];


// Functions:
extern void func_08040c2c(void);
extern void func_08040c58(void);
extern void func_08040cfc(void);
// extern ? func_08040d10(?);
// extern ? func_08040d90(?);
// extern ? func_08040dd8(?);
extern void func_08040e80(void);
// extern ? func_08040eb0(?);
extern void mechanical_horse_init_gfx3(void); // Graphics Init. 3
extern void mechanical_horse_init_gfx2(void); // Graphics Init. 2
extern void mechanical_horse_init_gfx1(void); // Graphics Init. 1
extern void mechanical_horse_engine_start(u32 version); // Game Engine Start
extern void func_08041444(); // Engine Event 0x00 (?)
extern void func_080415c0(); // Engine Event 0x01 (?)
extern void func_080416cc(const char* string); // Engine Event 0x02 (?)
extern void func_08041730(u8); // Engine Event 0x03 (?)
extern void func_08041744(); // Engine Event 0x04 (?)
extern void func_080417ac(); // Engine Event 0x05 (?)
// extern ? func_0804188c(?);
extern u8 func_08041940(void);
extern void func_08041970(void);
// extern ? func_08041c98(?);
// extern ? func_08041ddc(?);
// extern ? func_08041f80(?);
// extern ? func_08042020(?);
// extern ? func_080420c0(?);
// extern ? func_0804231c(?);
// extern ? func_08042438(?);
// extern ? func_0804249c(?);
extern void func_080424f0(u16); // Engine Event 0x06 (?)
extern void func_08042504(); // Engine Event 0x07 (?)
// extern ? func_08042548(?);
extern void mechanical_horse_engine_update(void); // Game Engine Update
extern void mechanical_horse_engine_stop(void); // Game Engine Stop
extern void mechanical_horse_cue_spawn(struct Cue *, struct MechanicalHorseCue *, u32 lesson); // Cue - Spawn
extern u32  mechanical_horse_cue_update(struct Cue *, struct MechanicalHorseCue *, u32 runningTime, u32 duration); // Cue - Update
extern void mechanical_horse_cue_despawn(struct Cue *, struct MechanicalHorseCue *); // Cue - Despawn
extern void mechanical_horse_cue_hit(struct Cue *, struct MechanicalHorseCue *, u32 pressed, u32 released); // Cue - Hit
extern void mechanical_horse_cue_barely(struct Cue *, struct MechanicalHorseCue *, u32 pressed, u32 released); // Cue - Barely
extern void mechanical_horse_cue_miss(struct Cue *, struct MechanicalHorseCue *); // Cue - Miss
extern void mechanical_horse_input_event(u32 pressed, u32 released); // Input Event
extern void mechanical_horse_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void mechanical_horse_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
