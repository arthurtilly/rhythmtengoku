#pragma once

#include "global.h"
#include "engines.h"
#include "src/main.h"

#include "games/karate_man/graphics/karate_man_graphics.h"

// Engine Macros/Enums:
#define KARATE_PALETTE_NORMAL 0
#define KARATE_PALETTE_SERIOUS 1

enum KarateVersionsEnum {
    KARATE_VER_0,
    KARATE_VER_FACES,
    KARATE_VER_SERIOUS,
    KARATE_VER_PURPLE
};

enum KarateJoeFacesEnum {
    KARATE_JOE_EMOTE_0,
    KARATE_JOE_EMOTE_1,
    KARATE_JOE_EMOTE_2
};

enum KarateObjectsEnum {
    KARATE_OBJECT_POT,
    KARATE_OBJECT_ROCK,
    KARATE_OBJECT_SOCCER_BALL,
    KARATE_OBJECT_BOMB,
    KARATE_OBJECT_LIGHT_BULB,
};

enum KarateCuesEnum {
    KARATE_CUE_POT,
    KARATE_CUE_SOCCER_BALL,
    KARATE_CUE_POT_STRICT,
    KARATE_CUE_03_NULL,
    KARATE_CUE_ROCK,
    KARATE_CUE_BOMB,
    KARATE_CUE_06_NULL,
    KARATE_CUE_07_NULL,
    KARATE_CUE_LIGHT_BULB,
    KARATE_CUE_09_NULL,
    KARATE_CUE_0A_NULL,
    KARATE_CUE_0B_NULL,
};


// Engine Types:
struct KarateManEngineData {
    u8 version;     // 0 = Karate Man; 1 = Karate Man (BG Faces); 2 = Karate Man ("Serious Mode"); 3 = Karate Man 2
	struct KarateJoe {
    	u16 isNotBeat:4; // Value:  Beat Animation Flag (TRUE when not in Beat Animation)
        u16 unk2;        // Unused
        s16 sprite;      // Sprite:  Joe
        u16 barely;      // Counter: Barely Animation
        u16 miss;        // Counter: Miss Animation
        u16 smirk;       // Counter: Smirk Animation
        u16 happy;       // Counter: Happy Animation
    } joe;
    s16 flowSprite;    // Sprite:  Flow Bar
    u8 flowLevel;      // Value:   Flow
    u8 flowEnabled; // Value:   Flow Bar Flag
    u8 bg;          // Value:   BG Byte
    const u8 *bgPalIndex; // Pointer: BG Palette Index Table
    s16 cueTextSprite;    // Sprite:  Cue Text
    struct TextPrinter *textPrinter;      // Pointer:   Text Printer
    s16 textButtonSprite;    // Sprite: Tutorial Button
    u8 awaitingInput; // Value:  Tutorial Button Flag
    s16 tutorialSkip;      // Sprite:  Tutorial Skip
    s16 tutorialText;      // Sprite:  Tutorial Text
    u16 tutorialCounter;   // Value:   Tutorial Objects Counter
    u16 bgFace;     // Counter: BG Face Time on BG
    u8 seriousModeStarted; // Value:   "Serious Mode" Flag
    u8 seriousModeStopped; // Value:   "Serious Mode" End Flag
    u8 useTheFace; // Value:   Expression
};

struct KarateManCue {
    u16 isHit:4;   // Flag:   Object Hit
    u16 miss:1;    // Flag:   Missed
    u16 type:4;  // Value:  Object
    u16 unk2;      // Unused
    s16 sprite;    // Sprite: Objects
    s16 shadow;    // Sprite: Object Shadow
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
    s8 unk2C;      // Value:  Object Angle
    u8 unk2D;      // Value:  Object Rotation
    s16 unk2E;     // Value:  unk2E
};


// Engine Definition Data:
extern struct CompressedData *karate_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable *karate_gfx_tables[]; // Graphics Table
extern struct CompressedData *karate_bg_face_textures[]; // BG Face Graphics
extern u8 karate_flow_palette_low[];    // BG Palette Index (Low Flow)
extern u8 karate_flow_palette_high[];    // BG Palette Index (High Flow)


// Functions:
extern void karate_init_gfx3(void);    // [func_08021190] GFX_INIT Func_02
extern void karate_init_gfx2(void);
extern void karate_init_gfx1(void);
extern void karate_engine_start(u32);     // [func_08021210] MAIN - Init
extern void karate_set_bg_face(u32, u32);
extern void karate_reset_bg_face(u32);
extern void karate_update_bg_face(void);
extern void karate_start_serious_mode_next_hit(void);
extern void karate_stop_serious_mode_next_hit(void);
extern void karate_tutorial_display_text(char *);
extern void karate_tutorial_wait_for_input(void);
extern void karate_common_init_tutorial(struct Scene *);
extern void karate_tutorial_loop_start(u32);
extern void karate_tutorial_loop_end(void);
extern void karate_use_the_face(u8);
extern void karate_engine_update(void);
extern void karate_engine_stop(void);
extern void karate_cue_increment_z_for_existing_objects(struct Cue *);
extern void karate_cue_spawn(struct Cue *, struct KarateManCue *, u32); // CUE - Spawn
extern void karate_cue_update_object(struct KarateManCue *);
extern void karate_cue_update_punched_object(struct KarateManCue *);
extern void karate_cue_update_launched_object(struct KarateManCue *);
extern u32  karate_cue_update(struct Cue *, struct KarateManCue *, u32, u32); // CUE - Update
extern void karate_cue_despawn(struct Cue *, struct KarateManCue *); // CUE - Despawn
extern void karate_start_serious_mode(void);
extern void karate_stop_serious_mode(void);
extern void karate_cue_hit(struct Cue *, struct KarateManCue *); // CUE - Hit
extern void karate_cue_barely(struct Cue *, struct KarateManCue *); // CUE - Barely
extern void karate_cue_miss(struct Cue *, struct KarateManCue *); // CUE - Miss
extern void karate_joe_init(struct KarateJoe *);
extern void karate_joe_delete(struct KarateJoe *);
extern void karate_joe_update(struct KarateJoe *);
extern void karate_input_event(u32, u32);
extern void karate_common_beat_animation(void);
extern void karate_common_display_text(u32);
extern void karate_init_flow(void);
extern void karate_reset_flow(void);
extern void karate_increment_flow(void);
extern void karate_decrement_flow(void);
extern void karate_update_bg_palette(void);
extern void karate_enable_flow(u32);
