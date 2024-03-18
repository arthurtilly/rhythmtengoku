#pragma once

#include "global.h"
#include "engines.h"

#include "games/power_calligraphy/graphics/power_calligraphy_graphics.h"

// Engine Macros/Enums:
enum PowerCalligraphyInputsEnum {
    POWER_CALLIGRAPHY_INPUT_ONORE1,
    POWER_CALLIGRAPHY_INPUT_CHIKARA1,
    POWER_CALLIGRAPHY_INPUT_CHIKARA2,
    POWER_CALLIGRAPHY_INPUT_SUN1,
    POWER_CALLIGRAPHY_INPUT_SUN2,
    POWER_CALLIGRAPHY_INPUT_KOKORO1,
    POWER_CALLIGRAPHY_INPUT_KOKORO2,
    POWER_CALLIGRAPHY_INPUT_KOKORO3,
    POWER_CALLIGRAPHY_INPUT_RE1,
    POWER_CALLIGRAPHY_INPUT_COMMA1,
    POWER_CALLIGRAPHY_INPUT_FACE1,
};

enum LittlePeopleEnum {
    /* 00 */ LITTLE_PEOPLE_TYPE_M,
    /* 01 */ LITTLE_PEOPLE_TYPE_W,

    /* -- */ TOTAL_LITTLE_PEOPLE_TYPES
};


// Engine Types:
struct PowerCalligraphyEngineData {
    u8 version;
    s16 pattern1Sprite;
    s16 pattern2Sprite;
    u8 unk6;
    u8 unk7;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2C;
    u32 unk30;
    u16 unk34;
    /* 0x036 */
    s16 brushSprite;
    s16 brushChargeSprite;
    /* 0x03C */
    struct InkDot {
        s16 sprite;
        s8_8 angle;
        s8_8 rotationSpeed;
        s16 offset;
        s16 cycleStartPos;
    } inkDots[30];
    /* 0x1A4 */
    u8 inkDotEventIsActive;
    u16 inkDotEventCurrentFrame;
    u16 inkDotEventTotalFrames;
    u16 unk1AA;
    s16 skipIcon;
    /* 0x1B0 */
    struct LittlePeople {
        s16 sprite;
        u8 type;
        u8 unk3;
        s24_8 yPos;
    } littlePeople[2 * 6];
    /* 0x210 */
    s8_8 danceTimer;
    u8 danceSide;
    u8 unk213;
    u8 unk214;
    u8 unk215;
};

struct PowerCalligraphyCue {
    /* add fields here */
};

struct PowerCalligraphyBrushMotion {
    s8 x;
    s8 y;
    s8 playback;
};


// Engine Data:
extern struct Vector2 power_calligraphy_people_start_pos[];
extern struct Animation *power_calligraphy_people_dance_anim[][2];
extern struct Animation *power_calligraphy_people_fall_anim[][2];
extern struct Animation *power_calligraphy_people_bow_anim[][2];
extern struct CompressedGraphics *power_calligraphy_buffered_textures[];
extern struct GraphicsTable power_calligraphy_gfx_table[];
extern struct Animation *power_calligraphy_pattern_anim[];
extern struct Animation *power_calligraphy_pattern_input_anim[];
extern struct Vector2 power_calligraphy_paper_motions[];
extern struct PowerCalligraphyBrushMotion power_calligraphy_brush_motions[][3];
extern struct SongHeader *power_calligraphy_input_hit_sfx[];
extern struct SongHeader *power_calligraphy_input_barely_sfx[];


// Functions:
extern void power_calligraphy_init_people(void);
extern void power_calligraphy_update_people(void);
extern void power_calligraphy_set_little_people_pos(); // Engine Event 0C (Set Y Position)
extern void func_08032a64(); // Engine Event 0B (?)
extern void power_calligraphy_init_ink_dots(void);
extern void power_calligraphy_start_ink_dots(u32 ticks); // Engine Event 0A (?)
extern void power_calligraphy_update_ink_dots(void);
extern void power_calligraphy_init_gfx3(void); // Graphics Init. 3
extern void power_calligraphy_init_gfx2(void); // Graphics Init. 2
extern void power_calligraphy_init_gfx1(void); // Graphics Init. 1
extern void power_calligraphy_engine_start(u32 version); // Game Engine Start
extern void power_calligraphy_engine_event_stub(void); // Engine Event 0D (STUB)
extern void func_0803312c(); // Engine Event 00 (?)
extern void func_0803316c(); // Engine Event 01 (?)
extern void func_080331c0(); // Engine Event 02 (?)
extern void func_080331dc(); // Engine Event 03 (?)
// extern ? func_08033370(?);
extern void func_080333dc(); // Engine Event 04 (?)
extern void func_080333e8(); // Engine Event 05 (?)
// extern ? func_08033468(?);
extern void func_080334d4(); // Engine Event 06 (?)
extern void func_080334ec(); // Engine Event 07 (?)
extern void func_08033558(); // Engine Event 08 (?)
extern void func_080335e8(); // Engine Event 09 (?)
extern void power_calligraphy_engine_update(void); // Game Engine Update
extern void power_calligraphy_engine_stop(void); // Game Engine Stop
// extern ? func_080336a0(?);
extern void power_calligraphy_cue_spawn(struct Cue *, struct PowerCalligraphyCue *, u32 param); // Cue - Spawn
extern u32  power_calligraphy_cue_update(struct Cue *, struct PowerCalligraphyCue *, u32 runningTime, u32 duration); // Cue - Update
extern void power_calligraphy_cue_despawn(struct Cue *, struct PowerCalligraphyCue *); // Cue - Despawn
extern void power_calligraphy_cue_hit(struct Cue *, struct PowerCalligraphyCue *, u32 pressed, u32 released); // Cue - Hit
extern void power_calligraphy_cue_barely(struct Cue *, struct PowerCalligraphyCue *, u32 pressed, u32 released); // Cue - Barely
extern void power_calligraphy_cue_miss(struct Cue *, struct PowerCalligraphyCue *); // Cue - Miss
extern void power_calligraphy_input_event(u32 pressed, u32 released); // Input Event
extern void power_calligraphy_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void power_calligraphy_common_display_text(const char *); // Common Event 1 (Display Text)
extern void power_calligraphy_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
