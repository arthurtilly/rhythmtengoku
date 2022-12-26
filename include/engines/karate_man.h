#pragma once

#include "global.h"
#include "engines.h"
#include "src/main.h"


// Engine Types:
struct KarateManInfo {
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


// OAM Animations:
extern const struct Animation anim_karate_joe_stand[]; // Animation: "joe_stand"
extern const struct Animation anim_karate_object[]; // Animation: "objects"
extern const struct Animation anim_karate_object_shadow[]; // Animation: "objects_shadow"
extern const struct Animation anim_karate_joe_punch_high[]; // Animation: "joe_punch_high"
extern const struct Animation anim_karate_joe_beat[]; // Animation: "joe_beat"
extern const struct Animation anim_karate_hit_effect[]; // Animation: "hit_effect"
extern const struct Animation anim_karate_flow_meter[]; // Animation: "flow_bar"
extern const struct Animation anim_karate_joe_punch_low[]; // Animation: "joe_punch_low"
extern const struct Animation anim_karate_joe_barely[]; // Animation: "joe_beat_barely"
extern const struct Animation anim_karate_joe_miss[]; // Animation: "joe_miss"
extern const struct Animation anim_karate_joe_smirk[]; // Animation: "joe_beat_smirk"
extern const struct Animation anim_karate_joe_happy[]; // Animation: "joe_beat_happy"
extern const struct Animation anim_karate_joe_punch_ouch[]; // Animation: "joe_punch_hard"
extern const struct Animation anim_karate_cue_warning[]; // Animation: "cue_text"
extern const struct Animation anim_karate_tutorial_text_button[]; // Animation: "tutorial_button"
extern const struct Animation anim_karate_tutorial_skip[]; // Animation: "tutorial_skip"
extern const struct Animation anim_karate_tutorial_counter[]; // Animation: "tutorial_text"
extern const struct Animation anim_karate_joe_smug_high[]; // Animation: "joe_punch_high_face" (Remix 8 face)
extern const struct Animation anim_karate_joe_smug_low[]; // Animation: "joe_punch_low_face" (Remix 8 face)


// Palettes:
extern const Palette karate_man_pal[]; // Palette


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
extern const struct CompressedGraphics *const karate_buffered_textures[]; // Buffered Textures List
extern const struct GraphicsTable *const karate_gfx_tables[]; // Graphics Table
extern const struct CompressedGraphics *const karate_bg_face_textures[]; // BG Face Graphics
extern const u8 karate_flow_palette_low[];    // BG Palette Index (Low Flow)
extern const u8 karate_flow_palette_high[];    // BG Palette Index (High Flow)


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
extern void karate_common_init_tutorial(const struct Scene *);
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
