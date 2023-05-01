#pragma once

#include "global.h"
#include "engines.h"

#include "games/showtime/graphics/showtime_graphics.h"

struct ShowtimeEngineData {
    struct BitmapFontOBJ *unk0;
    u16 unk4;
    u8 version;
    struct ShowtimeEngineData_sub {
        s16 sprite;
        u32 unk4;
        s32 unk8;
    } unk8[2];
    u32 pad20;
    struct ShowtimeEngineData_sub1 {
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
    struct ShowtimeEngineData_sub2 {
        s16 sprite;
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

struct ShowtimeCue {
    u32 unk0;
    u32 unk4;
};


// Engine Macros/Enums:
enum ShowtimeVersionsEnum {
    SHOWTIME_VER_0,
    SHOWTIME_VER_REMIX_3
};


// Engine Data:
extern const char D_0805a3cc[];


// Engine Definition Data:
extern struct CompressedGraphics *showtime_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable *showtime_gfx_tables[]; // Graphics Table Index
extern struct Animation *showtime_penguin_beat_anim[];
extern struct Animation *showtime_penguin_jump_prepare_anim[];
extern struct Animation *showtime_penguin_jump_anim[];
extern struct Animation *showtime_penguin_slide_anim[];
extern u32 D_089e3b14[][5];


// Functions:
extern void showtime_init_gfx3(void); // Graphics Init. 3
extern void showtime_init_gfx2(void); // Graphics Init. 2
extern void showtime_init_gfx1(void); // Graphics Init. 1
extern void showtime_engine_start(u32 version); // Game Engine Start
extern void showtime_engine_event_stub(void); // Engine Event 1 (STUB)
extern void showtime_engine_update(void); // Game Engine Update
extern void func_0802be10(); // Engine Event 0 (?)
extern void showtime_engine_stop(void); // Game Engine Stop
extern void showtime_cue_spawn_gray(struct Cue *, struct ShowtimeCue *, u32);
extern u32  showtime_cue_update_gray(struct Cue *, struct ShowtimeCue *, u32 runningTime, u32 duration);
extern void showtime_cue_despawn_gray(struct Cue *, struct ShowtimeCue *);
extern void showtime_cue_spawn_black(struct Cue *, struct ShowtimeCue *, u32);
extern u32  showtime_cue_update_black(struct Cue *, struct ShowtimeCue *, u32 runningTime, u32 duration);
extern void showtime_cue_despawn_black(struct Cue *, struct ShowtimeCue *);
extern void showtime_cue_spawn_white_fast(struct Cue *, struct ShowtimeCue *, u32);
extern u32  showtime_cue_update_white_fast(struct Cue *, struct ShowtimeCue *, u32 runningTime, u32 duration);
extern void showtime_cue_despawn_white_fast(struct Cue *, struct ShowtimeCue *);
extern void showtime_cue_spawn_white_fast_swing(struct Cue *, struct ShowtimeCue *, u32);
extern u32  showtime_cue_update_white_fast_swing(struct Cue *, struct ShowtimeCue *, u32 runningTime, u32 duration);
extern void showtime_cue_despawn_white_fast_swing(struct Cue *, struct ShowtimeCue *);
extern void showtime_cue_spawn_white(struct Cue *, struct ShowtimeCue *, u32);
extern u32  showtime_cue_update_white(struct Cue *, struct ShowtimeCue *, u32 runningTime, u32 duration);
extern void showtime_cue_despawn_white(struct Cue *, struct ShowtimeCue *);
extern void showtime_cue_hit(struct Cue *, struct ShowtimeCue *, u32 pressed, u32 released); // Cue - Hit
extern void showtime_cue_barely(struct Cue *, struct ShowtimeCue *, u32 pressed, u32 released); // Cue - Barely
extern void showtime_cue_miss(struct Cue *, struct ShowtimeCue *); // Cue - Miss
extern void showtime_input_event(u32 pressed, u32 released); // Input Event
extern void showtime_common_beat_animation(); // Common Event 0 (Beat Animation)
extern void showtime_common_display_text(); // Common Event 1 (Display Text)
extern void showtime_common_init_tutorial(); // Common Event 2 (Init. Tutorial)
extern void func_0802c1f0(u32, s16, u32);
extern void func_0802c23c(void);
extern void func_0802c334(void);
// extern ? func_0802c36c(?);
extern u32 func_0802c3d0(u32);
// extern ? func_0802c40c(?);
// extern ? func_0802c4b0(?);
// extern ? func_0802c4c0(?);
// extern ? func_0802c4f4(?);
// extern ? func_0802c528(?);
// extern ? func_0802c55c(?);
// extern ? func_0802c5c8(?);
// extern ? func_0802ce70(?);
// extern ? func_0802cf8c(?);
extern void func_0802cfa4(u32);
// extern ? func_0802cfc8(?);
// extern ? func_0802cfe0(?);
extern u32 func_0802d068(u32);
extern u32 func_0802d080(u32 arg0);
extern void func_0802d0b8(void);
extern void func_0802d0dc(u32, s16);
// extern ? func_0802d104(?);
// extern ? func_0802d250(?);
// extern ? func_0802d2bc(?);
extern void func_0802d38c(void);
// extern ? func_0802d394(?);
extern void func_0802d43c(void);
// extern ? func_0802d81c(?);
extern void func_0802d8bc(u32);
// extern ? func_0802d918(?);
// extern ? func_0802d96c(?);
// extern ? func_0802d9fc(?);
// extern ? func_0802da84(?);
// extern ? func_0802db08(?);
// extern ? func_0802dc54(?);
