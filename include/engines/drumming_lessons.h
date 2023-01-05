#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

// Engine Types:
struct DrumIntroInfo {
    /* add fields here */
};

struct DrumIntroCue {
    /* add fields here */
};

struct DrumLiveInfo {
    /* add fields here */
};

struct DrumLiveCue {
    /* add fields here */
};

struct StudioDrummer {
    s16 snareDrum;
    s16 bassDrum;
    s16 tomDrum;
    s16 hiHat;
    s16 leftPedal;
    s16 rightPedal;
    s16 crashCymbal;
    s16 splashCymbal;
    s16 pedalHiHat;
    s16 head;
    s16 body;
    s16 rightLeg;
    s16 leftLeg;
    s16 rightArm;
    s16 leftArm;
    s16 seat;
    s16 coffeeSteam;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    u16 unk28;
    u16 unk2A;
    u16 unk2C;
    s16 xController;
    s16 yController;
};

struct DrumLessonsInfo {
    u8 version; // 0x000
    u8 unk1;
    struct DrumTechController drumTech; // 0x004
    struct StudioDrummer student; // 0x354
    u8 studioKitID;
    struct StudioDrummer teacher; // 0x38C;
    u8 unk3C0;
    u8 unk3C1;
    u16 drummingButtons; // 0x3C2
    void *unk3C4;
    u32 null3C8;
    u8 unk3CC;
    u8 unk3CD;
    u8 unk3CE;
    u32 unk3D0;
    u32 unk3D4;
    u32 unk3D8;
    u32 unk3DC;
    u32 unk3E0;
    u32 unk3E4;
    u32 unk3E8;
    u32 unk3EC;
    s8 unk3F0;
    s16 memoryWarningSprite; // 0x3F2
    struct TextPrinter *songTitlePrinter; // 0x3F4
    s16 songTitleBgSprite; // 0x3F8
    s16 songTitlePosX; // 0x3FA
    u16 unk3FC; // 0x3FC
    u32 null400;
    u32 null404;
    u16 null408;
    s16 replaySaveOptionSprite; // 0x40A
    u8 unk40C;
    struct TextPrinter *replayTextPrinter; // 0x410
    u32 null414;
    u32 null418;
    u16 unk41C;
    u32 unk420;
    u8 unk424;
    u8 unk425;
    u8 unk426;
    u8 unk427;
    struct TextPrinter *lessonTextPrinter; // 0x428
    s16 textAdvIconSprite; // 0x42C
    u8 unk42E;
    u32 null430;
    u32 null434;
    u32 null438;
    u32 null43C;
    u32 null440;
    u32 null444;
    u32 null448;
    u32 null44C;
    u32 null450;
    u32 null454;
    u8 unk458;
    u16 unk45A;
    u8 unk45C;
    s16 lessonRankSprite; // 0x45E
    u8 padding460[0x100];
    s16 slowIconSprite; // 0x560
    u8 unk562;
    u8 unk563;
    u16 unk564;
    u16 null566;
    s16 accuracyLightSprites[7]; // 0x568
    u8 unk576;
    u32 unk578;
    u32 unk57C;
};

struct DrumLessonsCue {
    /* add fields here */
};

typedef void (*DrumPlayFunc)(void);
#define CALL_DRUM_PLAY_FUNC(func) ((DrumPlayFunc)(((u32)func)|1))()

struct DrumKit {
    const struct DrumTechPhrase *aButton;
    const struct DrumTechPhrase *bButton;
    const struct DrumTechPhrase *dpadUp;
    const struct DrumTechPhrase *dpadDown;
    const struct DrumTechPhrase *dpadLeft;
    const struct DrumTechPhrase *dpadRight;
    const struct DrumTechPhrase *lButton;
    const struct DrumTechPhrase *rButton;
    s32 null20;
    s32 null24;
};

struct DrumStudioMonitorData {
    const Palette *palette;
    const struct GraphicsTable *gfxTable;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
};


// Engine Macros/Enums:
enum DrumIntroVersionsEnum {
    ENGINE_VER_DRUM_INTRO_TEACHER,
    ENGINE_VER_DRUM_INTRO_PLAYER,
    ENGINE_VER_DRUM_INTRO_TANUKI_MONKEY,
    ENGINE_VER_DRUM_INTRO_CUTSCENE
};

enum DrumLiveVersionsEnum {
    ENGINE_VER_DRUM_GIRLS_LIVE,
    ENGINE_VER_DRUM_BOYS_LIVE,
    ENGINE_VER_DRUM_SAMURAI_BAND_LIVE
};

enum DrumLessonsVersionsEnum {
    ENGINE_VER_DRUM_STUDIO_0,
    ENGINE_VER_DRUM_STUDIO_1,
    ENGINE_VER_DRUM_STUDIO_2,
    ENGINE_VER_DRUM_STUDIO_3,
    ENGINE_VER_DRUM_LESSONS
};


// OAM Animations:
extern const struct Animation anim_drum_student_kit_snare[];
extern const struct Animation anim_drum_student_kit_bass[];
extern const struct Animation anim_drum_student_kit_tom[];
extern const struct Animation anim_drum_student_kit_hihat[];
extern const struct Animation anim_drum_student_kit_pedal_hihat[];
extern const struct Animation anim_drum_student_kit_pedal_r[];
extern const struct Animation anim_drum_student_kit_pedal_l[];
extern const struct Animation anim_drum_student_kit_splash[];
extern const struct Animation anim_drum_student_kit_crash[];
extern const struct Animation anim_drum_student_head[];
extern const struct Animation anim_drum_student_happy[];
extern const struct Animation anim_drum_student_body[];
extern const struct Animation anim_drum_student_use_pedal_r[];
extern const struct Animation anim_drum_student_use_pedal_l[];
extern const struct Animation anim_drum_student_use_pedal_hihat[];
extern const struct Animation anim_drum_student_use_snare_l[];
extern const struct Animation anim_drum_student_use_snare_r[];
extern const struct Animation anim_drum_student_kit_seat[];
extern const struct Animation anim_drum_student_coffee_steam[];
extern const struct Animation anim_drum_studio_song_title_bubble[];
extern const struct Animation anim_drum_studio_save_option_y[];
extern const struct Animation anim_drum_studio_memory_warning[];
extern const struct Animation anim_drum_teacher_kit_snare[];
extern const struct Animation anim_drum_teacher_kit_bass[];
extern const struct Animation anim_drum_teacher_kit_tom[];
extern const struct Animation anim_drum_teacher_kit_hihat[];
extern const struct Animation anim_drum_teacher_kit_pedal_r[];
extern const struct Animation anim_drum_teacher_kit_pedal_l[];
extern const struct Animation anim_drum_teacher_kit_splash[];
extern const struct Animation anim_drum_teacher_kit_crash[];
extern const struct Animation anim_drum_teacher_head[];
extern const struct Animation anim_drum_teacher_body[];
extern const struct Animation anim_drum_teacher_use_pedal_r[];
extern const struct Animation anim_drum_teacher_use_pedal_l[];
extern const struct Animation anim_drum_teacher_use_snare_l[];
extern const struct Animation anim_drum_teacher_use_snare_r[];
extern const struct Animation anim_drum_teacher_kit_seat[];
extern const struct Animation anim_drum_lessons_text_adv_icon[];
extern const struct Animation anim_drum_lessons_rank_s[];
extern const struct Animation anim_drum_lessons_slow_icon[];


// Palettes:


// Sound Effects:


// Engine Data:
extern const char D_08059f94[];
extern const char D_08059f98[];
extern const char D_08059f9c[];
extern const char D_08059fb4[];
extern const char D_08059fd0[];
extern const char D_08059fe8[];
extern const char D_0805a004[];
extern const char D_0805a020[];
extern const char D_0805a038[];
extern const char D_0805a048[];
extern const char D_0805a058[];
extern const char D_0805a06c[];
extern const char D_0805a074[];
extern const char D_0805a088[];
extern const char D_0805a098[];
extern const char D_0805a0ac[];
extern const char D_0805a0bc[];
extern const char D_0805a0c0[];
extern const char D_0805a0c8[];
extern const char D_0805a0cc[];
// <studio bg graphics tables>
extern const char D_0805a3a0[];


// Engine Definition Data:
extern const struct Animation *const D_089e172c[]; // Accuracy Meter Lights 1-7
extern const struct Vector2 D_089e1748[]; // Accuracy Meter Light Positions
extern const DrumPlayFunc D_089e2988[];
extern const struct DrumKit *const drum_studio_kits[];
extern const struct CompressedGraphics *const drum_studio_buffered_textures[];
extern const struct GraphicsTable drum_studio_gfx_table[];
extern const struct GraphicsTable drum_lessons_gfx_table[];
extern const struct GameEngine D_089e2ea0;


// Functions - Intro Drumming Scenes:
// extern ? func_080239a0(?); // DRUM INTRO - Engine Event 0x08 (?)
// extern ? func_080239bc(?); // DRUM INTRO - Engine Event 0x09 (?)
// extern ? func_080239ec(?);
// extern ? func_08023a18(?);
// extern ? func_08023bb8(?); // DRUM INTRO - Engine Event 0x0B (?)
// extern ? func_08023bcc(?); // DRUM INTRO - Engine Event 0x0C (?)
// extern ? func_08023bf4(?); // DRUM INTRO - Engine Event 0x0D (?)
// extern ? func_08023c0c(?); // DRUM INTRO - Engine Event 0x0E (?)
// extern ? func_08023c44(?); // DRUM INTRO - Engine Event 0x0F (?)
// extern ? func_08023c58(?); // DRUM INTRO - Engine Event 0x0A (?)
// extern ? func_08023c6c(?); // DRUM INTRO - Cue Spawn (5)
// extern ? func_08023d44(?); // DRUM INTRO - Cue Update (5)
// extern ? func_08023d60(?); // DRUM INTRO - Cue Despawn (5)
// extern ? func_08023d64(?); // DRUM INTRO - Cue Hit (5)
// extern ? func_08023d68(?); // DRUM INTRO - Cue Barely (5)
// extern ? func_08023d6c(?); // DRUM INTRO - Cue Miss (5)
// extern ? func_08023d78(?);
// extern ? func_08023da0(?);
// extern ? func_08023da4(?);
// extern ? func_08023df8(?);
// extern ? func_08023e4c(?);
// extern ? func_08023e50(?);
// extern ? func_08023edc(?);
// extern ? func_08023f68(?);
// extern ? func_08023f6c(?);
// extern ? func_08023ffc(?);
// extern ? func_080240a4(?);
// extern ? func_08024134(?);
// extern ? func_080241c0(?);
// extern ? func_0802424c(?);
// extern ? func_0802428c(?);
// extern ? func_080242cc(?);
// extern ? func_080242f8(?); // DRUM INTRO - Game Engine Init.
// extern ? func_08024978(?); // DRUM INTRO - Engine Event 0x10 (STUB)
// extern ? func_0802497c(?); // DRUM INTRO - Engine Event 0x00 (?)
// extern ? func_080249c0(?); // DRUM INTRO - Engine Event 0x01 (?)
// extern ? func_080249f0(?);
// extern ? func_08024a4c(?); // DRUM INTRO - Engine Event 0x02 (?)
// extern ? func_08024ae4(?); // DRUM INTRO - Engine Event 0x03 (?)
// extern ? func_08024ba0(?); // DRUM INTRO - Engine Event 0x04 (?)
// extern ? func_08024bd0(?);
// extern ? func_08024be8(?); // DRUM INTRO - Engine Event 0x07 (?)
// extern ? func_08024bfc(?);
// extern ? func_08024c2c(?);
// extern ? func_08024cb0(?); // DRUM INTRO - Game Engine Update
// extern ? func_08024d44(?); // DRUM INTRO - Game Engine Stop
// extern ? func_08024d48(?); // DRUM INTRO - Cue Spawn (0-4)
// extern ? func_08024d4c(?); // DRUM INTRO - Cue Update (0-4)
// extern ? func_08024d68(?); // DRUM INTRO - Cue Despawn (0-4)
// extern ? func_08024d6c(?); // DRUM INTRO - Cue Hit (0-4)
// extern ? func_08024da4(?); // DRUM INTRO - Cue Barely (0-4)
// extern ? func_08024ddc(?); // DRUM INTRO - Cue Miss (0-4)
// extern ? func_08024e0c(?); // DRUM INTRO - Input Event
// extern ? func_08024e48(?); // DRUM INTRO - Common Event 0 (Beat Animation)
// extern ? func_08024ecc(?); // DRUM INTRO - Common Event 1 (Display Text)
// extern ? func_08024ed0(?);
// extern ? func_08024ef4(?); // DRUM INTRO - Engine Event 0x05 (?)
// extern ? func_08024f64(?); // DRUM INTRO - Engine Event 0x06 (?)
// extern ? func_08024fb4(?);
// extern ? func_08024fbc(?);
// extern ? func_08024fc4(?);
// extern ? func_08024ff4(?);
// extern ? func_08025020(?);
// extern ? func_08025038(?);
// extern ? func_080251d0(?);
// extern ? func_080251d8(?);
// extern ? func_080251e8(?);
// extern ? func_080251ec(?);
// extern ? func_080251f0(?);
// extern ? func_080251fc(?);
// extern ? func_08025204(?);
// extern ? func_0802520c(?);
// extern ? func_08025214(?);
// extern ? func_08025218(?);
// extern ? func_0802521c(?);
// extern ? func_08025220(?);

// Functions - LIVE:
// extern ? func_08025228(?);
// extern ? func_08025248(?);
// extern ? func_08025460(?);
// extern ? func_08025538(?);
// extern ? func_0802555c(?);
// extern ? func_080255f8(?);
// extern ? func_08025748(?); // DRUM LIVE - Engine Event 0x05 (?)
// extern ? func_0802575c(?);
// extern ? func_080257b8(?);
// extern ? func_08025848(?);
// extern ? func_080258c0(?);
// extern ? func_08025a2c(?); // DRUM LIVE - Engine Event 0x06 (?)
// extern ? func_08025a58(?); // DRUM LIVE - Engine Event 0x07 (?)
// extern ? func_08025a64(?);
// extern ? func_08025a98(?); // DRUM LIVE - Engine Event 0x02 (?)
// extern ? func_08025aa4(?);
// extern ? func_08025abc(?);
// extern ? func_08025ad4(?); // DRUM LIVE - Engine Event 0x03 (?)
// extern ? func_08025ae8(?); // DRUM LIVE - Engine Event 0x04 (?)
// extern ? func_08025afc(?);
// extern ? func_08025b88(?);
// extern ? func_08025bcc(?); // DRUM LIVE - Engine Event 0x09 (?)
// extern ? func_08025be0(?);
// extern ? func_08025bec(?);
// extern ? func_08025c48(?);
// extern ? func_08025c4c(?);
// extern ? func_08025c8c(?);
// extern ? func_08025ccc(?);
// extern ? func_08025cd0(?);
// extern ? func_08025d34(?);
// extern ? func_08025d98(?);
// extern ? func_08025d9c(?);
// extern ? func_08025e00(?);
// extern ? func_08025e74(?);
// extern ? func_08025ed8(?);
// extern ? func_08025f3c(?);
// extern ? func_08025f50(?);
// extern ? func_08025f90(?);
// extern ? func_08025fbc(?);
// extern ? func_08026024(?); // DRUM LIVE - Game Engine Init.
// extern ? func_0802663c(?); // DRUM LIVE - Engine Event 0x0A (?)
// extern ? func_08026640(?);
// extern ? func_080268cc(?); // DRUM LIVE - Engine Event 0x00 (?)
// extern ? func_08026930(?);
// extern ? func_08026968(?); // DRUM LIVE - Engine Event 0x01 (?)
// extern ? func_080269e8(?); // DRUM LIVE - Engine Event 0x08 (?)
// extern ? func_08026a0c(?);
// extern ? func_08026a50(?);
// extern ? func_08026aac(?); // DRUM LIVE - Game Engine Update
// extern ? func_08026b0c(?);
// extern ? func_08026b18(?);
// extern ? func_08026b24(?); // DRUM LIVE - Game Engine Stop
// extern ? func_08026b3c(?);
// extern ? func_08026bc8(?); // DRUM LIVE - Cue Spawn
// extern ? func_08026c1c(?); // DRUM LIVE - Cue Update
// extern ? func_08026c38(?); // DRUM LIVE - Cue Despawn
// extern ? func_08026c3c(?);
// extern ? func_08026c84(?); // DRUM LIVE - Cue Hit
// extern ? func_08026cc4(?); // DRUM LIVE - Cue Barely
// extern ? func_08026d04(?); // DRUM LIVE - Cue Miss
// extern ? func_08026d28(?); // DRUM LIVE - Input Event
// extern ? func_08026d68(?); // DRUM LIVE - Common Event 0 (Beat Animation)
// extern ? func_08026de8(?); // DRUM LIVE - Common Event 1 (Display Text)
// extern ? func_08026dec(?); // DRUM LIVE - Common Event 2 (Set Tutorial Skip Destination)

// Functions - Drum Lessons:
// extern ? func_08026e10(?);
extern void drum_lessons_init_teacher(void); // Init. Drum Samurai
// extern ? func_080271a8(?);
// extern ? func_080271d4(?);
// extern ? func_080271f0(?); // DRUM LESSON - Engine Event 0x12 (?)
// extern ? func_08027304(?);
// extern ? func_08027350(?);
// extern ? func_0802739c(?);
// extern ? func_080273e4(?);
// extern ? func_0802742c(?);
// extern ? func_08027474(?);
// extern ? func_080274d0(?);
// extern ? func_08027518(?);
// extern ? func_08027560(?);
// extern ? func_080275a8(?);
// extern ? func_080275d0(?);
// extern ? func_080275f8(?);
// extern ? func_08027668(?);
// extern ? func_08027728(?); // DRUM LESSON - Engine Event 0x07 (?)
// extern ? func_08027744(?); // DRUM LESSON - Engine Event 0x08 (?)
// extern ? func_08027760(?); // DRUM LESSON - Engine Event 0x09 (?)
// extern ? func_0802777c(?); // DRUM LESSON - Engine Event 0x0A (?)
// extern ? func_080277a0(?); // DRUM LESSON - Engine Event 0x0B (?)
// extern ? func_080277b8(?); // DRUM LESSON - Engine Event 0x0C (?)
// extern ? func_08027888(?); // DRUM LESSON - Engine Event 0x0E (?)
// extern ? func_080278d0(?); // DRUM LESSON - Engine Event 0x0F (?)
// extern ? func_080278e8(?);
// extern ? func_08027948(?);
extern void drum_lessons_init_lesson(void); // Init. Drum Lessons
// extern ? func_08027ba0(?); // DRUM LESSON - Engine Event 0x0D (?)
// extern ? func_08027bbc(?); // DRUM LESSON - Engine Event 0x10 (?)
// extern ? func_08027bd8(?); // DRUM LESSON - Engine Event 0x15 (?)
// extern ? func_08027c54(?); // DRUM LESSON - Engine Event 0x16 (?)
// extern ? func_08027c90(?); // DRUM LESSON - Engine Event 0x17 (?)
// extern ? func_08027d08(?);
// extern ? func_08027dfc(?);
// extern ? func_08027f1c(?);
// extern ? func_08027f4c(?);
// extern ? func_08027f70(?); // DRUM LESSON - Engine Event 0x11 (?)
// extern ? func_08027f90(?);
// extern ? func_08027fc8(?);
// extern ? func_08028004(?); // DRUM LESSON - Engine Event 0x14 (?)
// extern ? func_0802818c(?);
// extern ? func_080281c4(?);
// extern ? func_080281e8(?); // DRUM LESSON - Engine Event 0x18 (?)
// extern ? func_080281fc(?); // DRUM LESSON - Engine Event 0x19 (?)
// extern ? func_08028210(?);
// extern ? func_08028254(?);
// extern ? func_0802830c(?); // DRUM LESSON - Engine Event 0x03 (?)
// extern ? func_08028318(?);
// extern ? func_08028330(?); // Drum Studio Interpolate Monitor Palette
// extern ? func_080283a0(?); // DRUM LESSON - Engine Event 0x04 (?)
extern void func_080283ac(); // Studio Drum Kit Event - D-Pad Down
extern void func_080283f8(); // Studio Drum Kit Event - B Button
extern void func_08028444(); // Studio Drum Kit Event - D-Pad Left
extern void func_080284a4(); // Studio Drum Kit Event - A Button
extern void func_08028504(); // Studio Drum Kit Event - D-Pad Right
extern void func_08028564(); // Studio Drum Kit Event - D-Pad Up
extern void func_080285d4(); // Studio Drum Kit Event - L Button
extern void func_08028634(); // Studio Drum Kit Event - R Button
extern void func_08028694(); // Studio Drum Kit Event - ? Button
// extern ? func_080286f4(?);
// extern ? func_0802871c(?);
// extern ? func_08028744(?);
extern void drum_studio_init_kit(void); // Init. Drum Kit
extern s32 drum_studio_get_total_kits(void); // Get Total Drum Kits (15)
extern void drum_studio_init_gfx3(void); // Graphics Init. 3
extern void drum_studio_init_gfx2(void); // Graphics Init. 2
extern void drum_studio_init_gfx1(void); // Graphics Init. 1
extern void drum_studio_engine_start(u32 version); // DRUM LESSON - Game Engine Start
extern void drum_studio_engine_event_stub(void); // DRUM LESSON - Engine Event 0x1A (STUB)
// extern ? func_080290c4(?);
// extern ? func_08029178(?); // DRUM LESSON - Engine Event 0x02 (?)
// extern ? func_0802918c(?);
// extern ? func_080291bc(?);
// extern ? func_08029204(?);
// extern ? func_080292e0(?);
// extern ? func_080293b0(?); // DRUM LESSON - Engine Event 0x00 (?)
// extern ? func_080295d4(?); // DRUM LESSON - Engine Event 0x01 (?)
// extern ? func_080296b0(?);
// extern ? func_0802972c(?);
// extern ? func_0802979c(?);
// extern ? func_0802981c(?);
// extern ? func_080298e0(?);
// extern ? func_0802992c(?); // DRUM LESSON - Engine Event 0x05 (?)
// extern ? func_08029988(?);
// extern ? func_08029a1c(?);
// extern ? func_08029b8c(?); // DRUM LESSON - Engine Event 0x06 (?)
extern void drum_studio_engine_update(void); // DRUM LESSON - Game Engine Update
// extern ? func_08029cac(?);
// extern ? func_08029cec(?); // DRUM LESSON - Engine Event 0x13 (?)
extern void drum_studio_engine_stop(void); // DRUM LESSON - Game Engine Stop
extern void drum_studio_cue_spawn(struct Cue *, struct DrumLessonsCue *, u32 drum); // DRUM LESSON - Cue - Spawn
extern u32  drum_studio_cue_update(struct Cue *, struct DrumLessonsCue *, u32 runningTime, u32 duration); // DRUM LESSON - Cue - Update
extern void drum_studio_cue_despawn(struct Cue *, struct DrumLessonsCue *); // DRUM LESSON - Cue - Despawn
// extern ? func_08029e10(?);
extern void drum_studio_cue_hit(struct Cue *, struct DrumLessonsCue *, u32 pressed, u32 released); // DRUM LESSON - Cue - Hit
extern void drum_studio_cue_barely(struct Cue *, struct DrumLessonsCue *, u32 pressed, u32 released); // DRUM LESSON - Cue - Barely
extern void drum_studio_cue_miss(struct Cue *, struct DrumLessonsCue *); // DRUM LESSON - Cue - Miss
extern void drum_studio_input_event(u32 pressed, u32 released); // DRUM LESSON - Input Event
extern void drum_studio_common_beat_animation(void); // DRUM LESSON - Common Event 0 (Beat Animation, Unimplemented)
extern void drum_studio_common_display_text(void); // DRUM LESSON - Common Event 1 (Display Text, Unimplemented)
extern void drum_studio_common_init_tutorial(void); // DRUM LESSON - Common Event 2 (Init. Tutorial, Unimplemented)
