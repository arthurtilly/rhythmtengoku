#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"
#include "src/scenes/studio.h"

#include "games/drum_studio/graphics/drum_studio_graphics.h"

// Engine Macros/Enums:
#define DRUM_STUDIO_ACCURACY_LIGHTS_AMOUNT 7

enum DrumLessonsVersionsEnum {
    ENGINE_VER_DRUM_STUDIO_0,
    ENGINE_VER_DRUM_STUDIO_PLAY,
    ENGINE_VER_DRUM_STUDIO_2,
    ENGINE_VER_DRUM_STUDIO_LISTEN,
    ENGINE_VER_DRUM_LESSONS
};

enum DrumLessonsRanksEnum {
    DRUM_LESSON_RANK_0,
    DRUM_LESSON_RANK_C,
    DRUM_LESSON_RANK_B,
    DRUM_LESSON_RANK_A,
    DRUM_LESSON_RANK_S,
};


// Engine Types:
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
    s16 headPosX;
    s16 headPosY;
    s16 leftArmPosX;
    s16 leftArmPosY;
    s16 rightArmPosX;
    s16 rightArmPosY;
    s16 xController;
    s16 yController;
};

struct DrumStudioEngineData {
    u8 version; // 0x000
    u8 state; // 0x001
    struct DrumTechController drumTech; // 0x004
    struct StudioDrummer player; // 0x354
    u8 playerDrumKitID; // 0x388
    struct StudioDrummer teacher; // 0x38C;
    u8 teacherDrumKitID; // 0x3C0
    u8 unk3C1;
    u16 drummingButtons; // 0x3C2
    void *drumReplaySeq; // 0x3C4
    struct StudioSongData *replayData; // 0x3C8
    u8 replayID; // 0x3CC
    u8 unk3CD; // 0x3CD
    u8 unk3CE; // 0x3CE
    s24_8 bg2PosX; // 0x3D0
    s24_8 bg2PosY;
    s24_8 bg2VelX;
    s24_8 bg2VelY;
    s24_8 bg3PosX;
    s24_8 bg3PosY;
    s24_8 bg3VelX;
    s24_8 bg3VelY;
    s8 unk3F0; // 0x3F0
    s16 memoryWarningSprite; // 0x3F2
    struct TextPrinter *songTitlePrinter; // 0x3F4
    s16 songTitleBgSprite; // 0x3F8
    s16 songTitlePosX; // 0x3FA
    u16 unk3FC; // 0x3FC
    s16 unk3FE; // 0x3FE
    s16 unk400;
    u16 unk402;
    const char *songTitleText; // 0x404
    s8 unk408; // 0x408
    s16 replaySaveOptionSprite; // 0x40A
    u8 currentSaveOption; // 0x40C
    struct TextPrinter *replayTextPrinter; // 0x410
    u16 saveOptionsDelayTime;
    u16 unk416;
    u8 unk418;
    u16 null41A;
    u16 unk41C;
    u32 drumVolume; // 0x420
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
    char lessonResultText[0x100]; // 0x460
    s16 slowIconSprite; // 0x560
    u8 unk562;
    u8 unk563;
    u16 unk564;
    u16 null566;
    s16 accuracyLightSprites[DRUM_STUDIO_ACCURACY_LIGHTS_AMOUNT]; // 0x568
    u8 unk576;
    struct SoundPlayer *musicPlayer; // 0x578
    u32 unk57C;
};

struct DrumLessonsCue {
    u32 bit0:1;
    u32 drum:4;
    u32 bit4:1;
    u32 bit5:1;
};

typedef void (*DrumPlayFunc)(void);
#define CALL_DRUM_PLAY_FUNC(func) ((DrumPlayFunc)(((u32)func)|1))()

struct DrumStudioMonitorData {
    Palette *palette;
    const struct GraphicsTable *gfxTable;
    s24_8 bg2VelX;
    s24_8 bg2VelY;
    s24_8 bg3VelX;
    s24_8 bg3VelY;
};

struct DrumLessonPattern {
    const struct Beatscript *beat1;
    const struct Beatscript *beat2;
    struct SongHeader *cheerSfx;
    const char *dialogue;
};

struct DrumTeacherExpression {
    struct Animation *head;
    struct Animation *rightArm;
    struct Animation *leftArm;
};


// Engine Data:
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
extern struct DrumTeacherExpression drum_teacher_expressions_anim[];
extern DrumPlayFunc D_089e16b0[];
extern struct DrumTechKit *drum_teacher_kits[]; // Drum Samurai's Kit?
extern struct Animation *drum_lessons_accuracy_light_anim[]; // Accuracy Meter Lights 1-7
extern struct Vector2 drum_lessons_accuracy_light_positions[]; // Accuracy Meter Light Positions
extern struct Animation *drum_lessons_rank_anim[];
extern const char *drum_lessons_rank_text[];
extern struct SongHeader *drum_lessons_rank_sfx[];
extern struct DrumStudioMonitorData drum_studio_bg_table[];
extern DrumPlayFunc D_089e2988[];
extern struct DrumTechKit *drum_studio_kits[];
extern struct CompressedData *drum_studio_buffered_textures[];
extern struct GraphicsTable drum_studio_gfx_table[];
extern struct GraphicsTable drum_lessons_gfx_table[];
extern struct Beatscript D_089e2ad4[];
extern struct Beatscript D_089e2b04[];
extern struct Vector2 D_089e2b58[];
extern struct Vector2 D_089e2b78[];
extern struct SpritePlaybackData D_089e2b98[];
extern u16 D_089e2ba8[];
extern struct GameEngine drum_studio_engine;


// Functions - Drum Lessons:
extern void drum_lessons_init_teacher_sprite(s16 sprite); // Init. Drum Samurai Sprite
extern void drum_lessons_init_teacher(void); // Init. Drum Samurai
extern void func_080271a8(u16 button); // Play Drum Kit (Drum Samurai)
extern void func_080271d4(u32 drumKitID, u32 unused1, u16 button, u32 unused3); // Play Drum Kit (Drum Samurai)
extern void drum_lessons_set_teacher_expression(u32 expression); // DRUM LESSON - Engine Event 0x12 (Set Drum Samurai Expression)
extern void func_08027304(); // Teacher Drum Kit Event - D-Pad Down
extern void func_08027350(); // Teacher Drum Kit Event - B Button
extern void func_0802739c(); // Teacher Drum Kit Event - D-Pad Left
extern void func_080273e4(); // Teacher Drum Kit Event - A Button
extern void func_0802742c(); // Teacher Drum Kit Event - D-Pad Right
extern void func_08027474(); // Teacher Drum Kit Event - D-Pad Up (Hi-Hat)
extern void func_080274d0(); // Teacher Drum Kit Event - L Button
extern void func_08027518(); // Teacher Drum Kit Event - R Button
extern void func_08027560(); // Teacher Drum Kit Event - D-Pad Up (Snare Roll)
extern void func_080275a8(void); // Teacher DrumPlayFunc 0x09 (?)
extern void func_080275d0(void); // Teacher DrumPlayFunc 0x0A (?)
extern void func_080275f8(void); // Teacher DrumPlayFunc 0x0F (?)
// extern ? func_08027668(?);
// extern ? func_08027728(u32); // DRUM LESSON - Engine Event 0x07 (?) [called once before and after each pattern loop]
// extern ? func_08027744(u32); // DRUM LESSON - Engine Event 0x08 (?) [called at the start of any drum lesson]
// extern ? func_08027760(u32); // DRUM LESSON - Engine Event 0x09 (?) [called at the start of any drum lesson]
// extern ? func_0802777c(u32); // DRUM LESSON - Engine Event 0x0A (?) [called before pattern loop]
// extern ? func_080277a0(void); // DRUM LESSON - Engine Event 0x0B (?) [called within pattern loop, at the start]
extern void func_080277b8(void); // DRUM LESSON - Engine Event 0x0C (Loop Exit Condition)
// extern ? func_08027888(const void *); // DRUM LESSON - Engine Event 0x0E (Load Lesson Pattern Script/SFX)
// extern ? func_080278d0(u32); // DRUM LESSON - Engine Event 0x0F (Get Lesson Pattern Script?)
// extern ? func_080278e8(?);
// extern ? func_08027948(?);
extern void drum_lessons_init_lesson(void); // Init. Drum Lessons
extern void drum_lessons_set_dialogue(const char *); // DRUM LESSON - Engine Event 0x0D (Set Lesson Dialogue)
extern void drum_lessons_show_dialogue(u32 show); // DRUM LESSON - Engine Event 0x10 (Show/Hide Lesson Dialogue)
// extern ? func_08027bd8(void); // DRUM LESSON - Engine Event 0x15 (Display Lesson Dialogue w/ Text Advance)
// extern ? func_08027c54(void); // DRUM LESSON - Engine Event 0x16 (Remove Lesson Dialogue w/ Text Advance)
// extern ? func_08027c90(u32); // DRUM LESSON - Engine Event 0x17 (?) [called once before and after each pattern loop]
// extern ? func_08027d08(?);
extern void drum_lessons_update_lesson(void); // Update Drum Lesson
extern void func_08027f1c(void); // Decrement unk426
extern void func_08027f4c(u32 arg); // Set unk424
extern void func_08027f70(void); // DRUM LESSON - Engine Event 0x11 (?) [called at the end of each lesson pattern]
extern void func_08027f90(void); // ?
// extern ? func_08027fc8(?);
extern void drum_lessons_get_score(void); // DRUM LESSON - Engine Event 0x14 (Calculate & Display Rank)
// extern ? func_0802818c(?);
// extern ? func_080281c4(?);
// extern ? func_080281e8(void); // DRUM LESSON - Engine Event 0x18 (?) []
// extern ? func_080281fc(?); // DRUM LESSON - Engine Event 0x19 (?)
extern void drum_studio_start_monitor2(Palette *palette); // Change BG Monitor Palette
extern void drum_studio_start_monitor1(void); // Start BG Monitor Display
extern void drum_studio_event_start_monitor(u32 unused); // DRUM LESSON - Engine Event 0x03 (Start BG Monitor Display)
extern void drum_studio_stop_monitor2(void); // Stop BG Monitor Display
extern void drum_studio_stop_monitor1(void); // Revert BG Monitor Palette
extern void drum_studio_event_stop_monitor(void); // DRUM LESSON - Engine Event 0x04 (Stop BG Monitor Display)
extern void func_080283ac(); // Studio Drum Kit Event - D-Pad Down
extern void func_080283f8(); // Studio Drum Kit Event - B Button
extern void func_08028444(); // Studio Drum Kit Event - D-Pad Left
extern void func_080284a4(); // Studio Drum Kit Event - A Button
extern void func_08028504(); // Studio Drum Kit Event - D-Pad Right
extern void func_08028564(); // Studio Drum Kit Event - D-Pad Up (Hi-Hat)
extern void func_080285d4(); // Studio Drum Kit Event - L Button
extern void func_08028634(); // Studio Drum Kit Event - R Button
extern void func_08028694(); // Studio Drum Kit Event - D-Pad Up (Snare Roll)
extern void func_080286f4(void); // Studio DrumPlayFunc 0x09 (?)
extern void func_0802871c(void); // Studio DrumPlayFunc 0x0A (?)
extern void func_08028744(void); // Studio DrumPlayFunc 0x0F (?)
extern void drum_studio_init_kit(void); // Init. Drum Kit
extern s32 drum_studio_get_total_kits(void); // Get Total Drum Kits (15)
extern void drum_studio_init_gfx3(void); // Graphics Init. 3
extern void drum_studio_init_gfx2(void); // Graphics Init. 2
extern void drum_studio_init_gfx1(void); // Graphics Init. 1
extern void drum_studio_engine_start(u32 version); // DRUM LESSON - Game Engine Start
extern void drum_studio_engine_event_stub(void); // DRUM LESSON - Engine Event 0x1A (STUB)
extern void drum_studio_select_button_exit(void); // SELECT_BUTTON Pressed Event
// extern void func_08029178(u32); // DRUM LESSON - Engine Event 0x02 (Set unk3CE)
// extern ? func_0802918c(?);
// extern ? func_080291bc(?);
extern void drum_studio_update_song_title(void); // Update Song Title
// extern ? func_080292e0(?);
const struct Beatscript *drum_studio_init_script(void); // DRUM LESSON - Engine Event 0x00 (Init. Studio Script & Recording)
extern s32 func_080295d4(void); // DRUM LESSON - Engine Event 0x01 (?)
extern void drum_studio_align_drummer_sprites(struct StudioDrummer *drummer, const struct Vector2 *vecOfs); // Align Drummer Parts to Body
extern void func_0802972c(void); // Update something
extern void drum_studio_update_monitor(void); // Update BG Monitor Display
extern void drum_studio_update_inputs(void); // Update (Main Drumming State)
extern s32 drum_studio_cannot_save_replay(void); // Check if Replay Cannot Be Saved
extern void drum_studio_show_save_options(void); // DRUM LESSON - Engine Event 0x05 (Show Replay Save Options)
extern void drum_studio_save_replay(void); // Save Replay
extern void drum_studio_update_save_options(void); // Update (Save Replay Prompt State)
// extern ? func_08029b8c(?); // DRUM LESSON - Engine Event 0x06 (?)
extern void drum_studio_engine_update(void); // DRUM LESSON - Game Engine Update
extern void func_08029cac(u32 drumKitID, u16 keys, u16 pressed, u16 released);
// extern ? func_08029cec(u32); // DRUM LESSON - Engine Event 0x13 (?) [called at the end of each lesson pattern]
extern void drum_studio_engine_stop(void); // DRUM LESSON - Game Engine Stop
extern void drum_studio_cue_spawn(struct Cue *, struct DrumLessonsCue *, u32 drum); // DRUM LESSON - Cue - Spawn
extern u32  drum_studio_cue_update(struct Cue *, struct DrumLessonsCue *, u32 runningTime, u32 duration); // DRUM LESSON - Cue - Update
extern void drum_studio_cue_despawn(struct Cue *, struct DrumLessonsCue *); // DRUM LESSON - Cue - Despawn
extern void drum_studio_flash_accuracy_meter(void); // Flash Accuracy Meter Light
extern void drum_studio_cue_hit(struct Cue *, struct DrumLessonsCue *, u32 pressed, u32 released); // DRUM LESSON - Cue - Hit
extern void drum_studio_cue_barely(struct Cue *, struct DrumLessonsCue *, u32 pressed, u32 released); // DRUM LESSON - Cue - Barely
extern void drum_studio_cue_miss(struct Cue *, struct DrumLessonsCue *); // DRUM LESSON - Cue - Miss
extern void drum_studio_input_event(u32 pressed, u32 released); // DRUM LESSON - Input Event
extern void drum_studio_common_beat_animation(void); // DRUM LESSON - Common Event 0 (Beat Animation, Unimplemented)
extern void drum_studio_common_display_text(void); // DRUM LESSON - Common Event 1 (Display Text, Unimplemented)
extern void drum_studio_common_init_tutorial(void); // DRUM LESSON - Common Event 2 (Init. Tutorial, Unimplemented)
