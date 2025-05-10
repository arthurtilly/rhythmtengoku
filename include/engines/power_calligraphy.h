#pragma once

#include "global.h"
#include "engines.h"

#include "games/power_calligraphy/graphics/power_calligraphy_graphics.h"

// Engine Macros/Enums:
enum PowerCalligraphyKanaEnum {
    /* 00 */ POWER_CALLIGRAPHY_KANA_ONORE,
    /* 01 */ POWER_CALLIGRAPHY_KANA_CHIKARA,
    /* 02 */ POWER_CALLIGRAPHY_KANA_SUN,
    /* 03 */ POWER_CALLIGRAPHY_KANA_KOKORO,
    /* 04 */ POWER_CALLIGRAPHY_KANA_RE,
    /* 05 */ POWER_CALLIGRAPHY_KANA_COMMA,
    /* 06 */ POWER_CALLIGRAPHY_KANA_FACE,
    /* 07 */ POWER_CALLIGRAPHY_KANA_END_KANJI,
};

enum PowerCalligraphyInputsEnum {
    /* 00 */ POWER_CALLIGRAPHY_INPUT_ONORE1,
    /* 01 */ POWER_CALLIGRAPHY_INPUT_CHIKARA1,
    /* 02 */ POWER_CALLIGRAPHY_INPUT_CHIKARA2,
    /* 03 */ POWER_CALLIGRAPHY_INPUT_SUN1,
    /* 04 */ POWER_CALLIGRAPHY_INPUT_SUN2,
    /* 05 */ POWER_CALLIGRAPHY_INPUT_KOKORO1,
    /* 06 */ POWER_CALLIGRAPHY_INPUT_KOKORO2,
    /* 07 */ POWER_CALLIGRAPHY_INPUT_KOKORO3,
    /* 08 */ POWER_CALLIGRAPHY_INPUT_RE1,
    /* 09 */ POWER_CALLIGRAPHY_INPUT_COMMA1,
    /* 10 */ POWER_CALLIGRAPHY_INPUT_FACE1,
};

enum LittlePeopleTypesEnum {
    /* 00 */ LITTLE_PEOPLE_TYPE_M,
    /* 01 */ LITTLE_PEOPLE_TYPE_W,

    /* -- */ TOTAL_LITTLE_PEOPLE_TYPES
};

enum LittlePeopleStatesEnum {
    /* 00 */ LITTLE_PEOPLE_STATE_NULL,
    /* 01 */ LITTLE_PEOPLE_STATE_DANCE,
    /* 02 */ LITTLE_PEOPLE_STATE_STUMBLE,
    /* 03 */ LITTLE_PEOPLE_STATE_BOW,
    /* 04 */ LITTLE_PEOPLE_STATE_END_BOW,
};

enum CalligraphyBrushChargesEnum {
    /* 00 */ CALLIGRAPHY_BRUSH_CHARGE_DEFAULT,
    /* 01 */ CALLIGRAPHY_BRUSH_CHARGE_COMMA,
};

enum CalligraphyBrushStatesEnum {
    /* 00 */ CALLIGRAPHY_BRUSH_STATE_UP,
    /* 01 */ CALLIGRAPHY_BRUSH_STATE_DOWN,
};


// Engine Types:
struct PowerCalligraphyEngineData {
    u8 version;
    s16 kanaSprite;
    s16 kanaExitSprite;
    s8 currentKana;
    u8 paperExitActive;
    s8 paperExitX;
    s8 paperExitY;
    u8 nextInputType;
    u8 totalInputSprites;
    u8 totalInputExitSprites;
    s16 inputSprites[10];
    u16 inputExitSprites[10];
    s16 brushSprite;
    s16 brushEffectSprite;
    struct InkDot {
        s16 sprite;
        s8_8 angle;
        s8_8 rotationSpeed;
        s16 offset;
        s8_8 cycleStartPos;
    } inkDots[30];
    u8 inkSwirlActive;
    u16 inkSwirlCurrentFrame;
    u16 inkSwirlTotalFrames;
    s16 textSprite;
    s16 skipIcon;
    struct LittlePerson {
        s16 sprite;
        u8 type;
        u8 unk3;
        s24_8 yPos;
    } littlePeople[2 * 6];
    s8_8 danceTimer;
    u8 danceSide;
    u8 peopleCurrentState;
    u8 peopleReturnState;
    u8 stumbleTimer;
};

struct PowerCalligraphyCue {
    s8 inputStrokeType;
};

struct CalligraphyBrushMotion {
    s8 x, y;
    s8 cel;
};


// Engine Data:
extern struct Vector2 power_calligraphy_people_start_pos[];
extern struct Animation *power_calligraphy_people_dance_anim[][2];
extern struct Animation *power_calligraphy_people_fall_anim[][2];
extern struct Animation *power_calligraphy_people_bow_anim[][2];
extern struct CompressedData *power_calligraphy_buffered_textures[];
extern struct GraphicsTable power_calligraphy_gfx_table[];
extern struct Animation *power_calligraphy_kana_anim[];
extern struct Animation *power_calligraphy_pattern_input_anim[];
extern struct Vector2 power_calligraphy_paper_motions[];
extern struct CalligraphyBrushMotion power_calligraphy_brush_motions[][3];
extern struct SongHeader *power_calligraphy_input_hit_sfx[];
extern struct SongHeader *power_calligraphy_input_barely_sfx[];


// Functions:
extern void power_calligraphy_init_little_people(void);
extern void power_calligraphy_update_little_people(void);
extern void power_calligraphy_set_little_people_pos(s32 y);         // Engine Event 0C (Set Little People Position)
extern void power_calligraphy_set_little_people_state(u32 state);   // Engine Event 0B (Set Little People State)
extern void power_calligraphy_init_ink_swirl(void);
extern void power_calligraphy_start_ink_swirl(u32 ticks);   // Engine Event 0A (Ink Dot Effect)
extern void power_calligraphy_update_ink_swirl(void);
extern void power_calligraphy_init_gfx3(void);
extern void power_calligraphy_init_gfx2(void);
extern void power_calligraphy_init_gfx1(void);
extern void power_calligraphy_engine_start(u32 version);    // Game Engine Start
extern void power_calligraphy_engine_event_stub(void);      // Engine Event 0D (STUB)
extern void power_calligraphy_set_kana(u32 kana);           // Engine Event 00 (Set Kana)
extern void power_calligraphy_set_kana_cel(s32 cel);        // Engine Event 01 (Set Kana Current Cel)
extern void power_calligraphy_offset_paper(s32 args);       // Engine Event 02 (Shift Paper)
extern void power_calligraphy_remove_paper(u32 slowly);     // Engine Event 03 (Remove Paper)
extern void power_calligraphy_update_paper_motion(void);
extern void power_calligraphy_set_next_input(u32 inputStrokeType);  // Engine Event 04 (Set Next Input Stroke Type)
extern void power_calligraphy_finish_input_kokoro2(void);           // Engine Event 05 (Finish Unused Input KOKORO_2)
extern void power_calligraphy_set_brush(s32 x, s32 y, u32 cel);
extern void power_calligraphy_event_set_brush(u32 args);    // Engine Event 06 (Set Brush)
extern void power_calligraphy_charge_brush(u32 chargeType); // Engine Event 07 (Charge Brush)
extern void power_calligraphy_set_charge_effect(u32 start); // Engine Event 08 (?)
extern void power_calligraphy_raise_brush(void);            // Engine Event 09 (Raise Brush)
extern void power_calligraphy_engine_update(void);          // Game Engine Update
extern void power_calligraphy_engine_stop(void);            // Game Engine Stop
extern void power_calligraphy_express_input(u32 inputStroke, s32 timingType);
extern void power_calligraphy_cue_spawn(struct Cue *, struct PowerCalligraphyCue *, u32 unused); // Cue - Spawn
extern u32  power_calligraphy_cue_update(struct Cue *, struct PowerCalligraphyCue *, u32 runningTime, u32 duration); // Cue - Update
extern void power_calligraphy_cue_despawn(struct Cue *, struct PowerCalligraphyCue *); // Cue - Despawn
extern void power_calligraphy_cue_hit(struct Cue *, struct PowerCalligraphyCue *, u32 pressed, u32 released); // Cue - Hit
extern void power_calligraphy_cue_barely(struct Cue *, struct PowerCalligraphyCue *, u32 pressed, u32 released); // Cue - Barely
extern void power_calligraphy_cue_miss(struct Cue *, struct PowerCalligraphyCue *); // Cue - Miss
extern void power_calligraphy_input_event(u32 pressed, u32 released);       // Input Event
extern void power_calligraphy_common_beat_animation(void);                  // Common Event 0 (Beat Animation, Unimplemented)
extern void power_calligraphy_common_display_text(const char *string);      // Common Event 1 (Display Text)
extern void power_calligraphy_common_init_tutorial(struct Scene *skipDest); // Common Event 2 (Init. Tutorial)
