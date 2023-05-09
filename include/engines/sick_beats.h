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
    struct SickBeatsYellowMicrobe {
        s16 sprite;
        u8 state;
        u8 isHurt;
        u16 eventTimer;
    } yellowMicrobe;
    struct SickBeatsForks {
        s16 launcher;
        struct AffineSprite *spriteUp, *spriteDown, *spriteLeft, *spriteRight;
        u16 counterUp, counterDown, counterLeft, counterRight;
    } forks;
    struct SickBeatsVirus {
        u8 exists[0x100]; // Whether a virus exists
        s8 state;
        s8 current;
        u16 spawnedCounter;
        u8 hitsRequired1;
        u8 virusCuePalette;
        u8 hitsRequired;
        u8 virusPalette;
        struct SickBeatsVirusData {
            struct SickBeatsPath *path;
            u8 hitsRequired;
            u8 palette;
            s16 virusID;
            s32 rest;
        } virusData[16];
    } virus;
    s8 doctorCurrentState;
    s8 doctorNextState;
    u8 unk1F2;
    u16 doctorBeatCounter;
    s16 doctorSprite;
    s16 radioSprite;
    struct Beatscript *gameOverBeatscript;
    u16 gameOverCounter;
    u8 microbeWasHurt; // Whether the microbe was hurt (at least once)
    struct SickBeatsScoreCounter {
        u16 counterSprite;
        s16 digitSprite[4];
        u16 value;
    } scoreCounters[2];
    u8 unk21C;
    s16 particleSprites[20];
    u16 particleCounters[20];
    u8 particleCurrent;
    u8 particlePitch;
    u8 particleCels; // Amount of cels in a particle anim
};

struct SickBeatsCue {
    u32 unk0_b0:4;
    u32 isVirusHitOnce:1; // Whether the virus has been hit, at least once
    u32 unk0_b5:1;
    u32 virusState:5;
    u32 unk0_b12:19; 
    u8 currentVirus;
    struct AffineSprite *virusSprite;
    u32 padC[(0x2c-0xc)/4];
    u8 unk2C;
    u8 unk2D;
    u8 hitAmount;
    u8 virusPalette;
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

enum SickBeatsScoreCounterEnum {
    SICK_BEATS_SCORE_CURRENT,
    SICK_BEATS_SCORE_HIGH
};

enum SickBeatsDoctorStatesEnum {
    SICK_BEATS_DOCTOR_STATE_BEAT,
    SICK_BEATS_DOCTOR_STATE_HITONE, 
    SICK_BEATS_DOCTOR_STATE_HITCONSECUTIVE,
    SICK_BEATS_DOCTOR_STATE_FAIL,
    SICK_BEATS_DOCTOR_STATE_INVALID = -1
};

enum SickBeatsMicrobeStatesEnum {
    SICK_BEATS_MICROBE_STATE_BEAT, 
    SICK_BEATS_MICROBE_STATE_HURT,
    SICK_BEATS_MICROBE_STATE_VANISH,
    SICK_BEATS_MICROBE_STATE_VIRUS,
    SICK_BEATS_MICROBE_STATE_RETURN
};

enum SickBeatsVirusStatesEnum {
    SICK_BEATS_VIRUS_STATE_ENTER_TUBE,
    SICK_BEATS_VIRUS_STATE_UP_APPEAR,
    SICK_BEATS_VIRUS_STATE_UP_DASH_VULN,
    SICK_BEATS_VIRUS_STATE_UP_DASH_INVULN,
    SICK_BEATS_VIRUS_STATE_LEFT_APPEAR,
    SICK_BEATS_VIRUS_STATE_LEFT_DASH_VULN,
    SICK_BEATS_VIRUS_STATE_LEFT_DASH_INVULN,
    SICK_BEATS_VIRUS_STATE_DOWN_APPEAR,
    SICK_BEATS_VIRUS_STATE_DOWN_DASH_VULN,
    SICK_BEATS_VIRUS_STATE_DOWN_DASH_INVULN,
    SICK_BEATS_VIRUS_STATE_RIGHT_APPEAR,
    SICK_BEATS_VIRUS_STATE_RIGHT_DASH_VULN, 
    SICK_BEATS_VIRUS_STATE_RIGHT_DASH_INVULN,
    SICK_BEATS_VIRUS_STATE_ATTACK_MICROBE,
    SICK_BEATS_VIRUS_STATE_INVALID = -1

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
extern void func_08043634(struct Beatscript *); // Engine Event 0x04 (Set Game Over Beatscript)
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
