#pragma once

#include "global.h"
#include "engines.h"

#include "games/sick_beats/graphics/sick_beats_graphics.h"

// Engine Types:

struct SickBeatsPath {
    /* 00 */ u8 command;
    /* 01 */ u8 arg;
    /* 02 */ u16 rest;
};


struct SickBeatsEngineData {
    u8 version;
    u16 unk2;
    struct SickBeatsYellowMicrobe {
        s16 sprite;
        u8 unk2; // microbe state?
        u8 unk3; 
        u16 unk4; // microbe event duration
    } yellowMicrobe;
    struct SickBeatsForks {
        s16 launcher;
        struct AffineSprite *unk4, *unk8, *unkC, *unk10;
        u16 unk14, unk16, unk18, unk1A;
    } forks;
    struct SickBeatsVirus {
        u8 unk28[0x100]; // whether a virus exists or not (boolean) 
        s8 unk128; // cue / virus action
        s8 unk129; // current virus
        u16 unk12A; // virus counter?
        u8 unk12C; // amount of hits too?
        u8 unk12D; // virus palette
        u8 unk12E; // amount of hits
        u8 unk12F;
        struct SickBeatsVirusData {
            struct SickBeatsPath *unk0; // path
            u8 unk4; // amount of hits
            u8 unk5; // virus palette
            s16 unk6; // virus id?
            s32 unk8; // rest value
        } unk130[16];
    } virus;
    s8 unk1F0; // doctor state?
    s8 unk1F1;
    u8 unk1F2;
    u16 unk1F4;
    s16 unk1F6; // doctor sprite
    s16 unk1F8; // radio sprite
    s16 unk1FA;
    struct Beatscript *unk1FC;
    u16 unk200;
    u8 unk202;
    struct SickBeatsScoreCounter {
        u16 unk0; // counter sprite
        s16 unk2[4]; // digit sprite
        u16 unkA; // value?
    } unk204[2];
    u8 unk21C;
    s16 unk21E[20]; // particle sprites
    u16 unk246[20];
    u8 unk26E;
    u8 unk26F;
    u8 unk270; // amount of cels in a particle anim
};

struct SickBeatsCue {
    u32 unk0_b0:4;
    u32 unk0_b4:1;
    u32 unk0_b5:1;
    u32 unk0_b6:5; // cue / virus action 
    u32 unk0_b12:19; 
    u8 unk4; // current virus
    struct AffineSprite *unk8; // virus affine sprite
    u32 padC[(0x2c-0xc)/4];
    u8 unk2C;
    u8 unk2D;
    u8 unk2E; // amount of hits?
    u8 unk2F; // virus palette
};

struct VirusAction {
    struct Animation *anim;
    s16 x;
    s16 y;
    s8 playbackArg1;
    s8 playbackArg2;
    u16 playbackArg3;
    u32 unkC;
    s16 rotation;
};


// Engine Macros/Enums:
enum SickBeatsVersionsEnum {
    ENGINE_VER_SICK_BEATS,
    ENGINE_VER_SICK_BEATS_ENDLESS
};


// Engine Definition Data:
extern s16 sick_beats_particle_sfx_pitch[];
extern struct Animation *sick_beats_microbe_event_anim[];
extern u16 sick_beats_microbe_event_durations[];
extern struct CompressedGraphics *sick_beats_buffered_textures[];
extern struct GraphicsTable gfx_table_sick_beats[];
extern struct VirusAction sick_beats_virus_actions[];
extern u8 D_089e92f0[];
extern struct Animation *sick_beats_doctor_anim[];


// Functions:
extern void func_08042864(void); // Init Particles
extern void func_08042934(void); // Update Particles
extern void func_0804299c(void);
extern void func_0804299c(void);
// extern ? func_080429e8(?);
extern void func_08042b30(u32);
extern void func_08042b58(void); // Engine Event 0x06 (?)
extern void func_08042b88(void); // Init Counters
extern void func_08042c84(u32); // Draw Score
extern void func_08042cec(u32, u32); // Update Score
extern void func_08042d4c(u32); // Add Score
extern void func_08042d74(void); // Init Virus
extern void func_08042de8(struct SickBeatsVirusData *);
extern void func_08042e80(void);
extern void func_08042ea8(u32); // Engine Event 0x00 (Set Virus/Virus Action)
extern void func_08042ecc(struct SickBeatsPath *); // Engine Event 0x01 (Spawn Virus)
extern void func_08042f44(u32); // Engine Event 0x02 (Set Hits Required)
extern void func_08042f58(u32); // Engine Event 0x03 (Set Virus Palette)
extern void func_08042f6c(void); // Init Forks
extern void func_08043064(void); // Update Forks
extern void func_08043124(u32);
extern void func_0804317c(void); // Init Yellow Microbe
extern void func_080431c4(void); // Update Yellow Microbe
extern void func_080432d0(u32, u32, u8 *);
extern void func_080432d8(u32);
extern void sick_beats_init_gfx3(void); // Graphics Init. 3
extern void sick_beats_init_gfx2(void); // Graphics Init. 2
extern void sick_beats_init_gfx1(void); // Graphics Init. 1
extern void sick_beats_engine_start(u32 version); // Game Engine Start
extern void sick_beats_engine_event_stub(void); // Engine Event 0x07 (STUB)
extern void func_08043534(void);
extern void sick_beats_engine_update(void); // Game Engine Update
extern void func_080435e8(s32);
extern void func_08043634(struct Beatscript *); // Engine Event 0x04 (?)
extern void func_08043648(void); // Engine Event 0x05 (Endless Game Over?)
extern void sick_beats_engine_stop(void); // Game Engine Stop
extern struct SickBeatsVirusData *func_080436a8(u32);
extern void sick_beats_cue_spawn(struct Cue *, struct SickBeatsCue *, u32 unused); // Cue - Spawn
extern u32  sick_beats_cue_update(struct Cue *, struct SickBeatsCue *, u32 runningTime, u32 duration); // Cue - Update
extern void sick_beats_cue_despawn(struct Cue *, struct SickBeatsCue *); // Cue - Despawn
extern void func_08043a2c(u32, u32, struct AffineSprite *);
extern struct AffineSprite *func_08043a38(struct SickBeatsCue *, struct Animation *, struct SequenceData *);
extern void sick_beats_cue_hit(struct Cue *, struct SickBeatsCue *, u32 pressed, u32 released); // Cue - Hit
extern void sick_beats_cue_barely(struct Cue *, struct SickBeatsCue *, u32 pressed, u32 released); // Cue - Barely
extern void sick_beats_cue_miss(struct Cue *, struct SickBeatsCue *); // Cue - Miss
extern void sick_beats_input_event(u32 pressed, u32 released); // Input Event
extern void sick_beats_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void sick_beats_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
