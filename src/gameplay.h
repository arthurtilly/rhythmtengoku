#pragma once

#include "global.h"
#include "main.h"
#include "scenes.h"
#include "script.h"

extern const struct SequenceData s_f_send_mes_seqData;
extern const struct SequenceData s_f_fail_perfect_seqData;
extern const struct SequenceData s_f_pause_on_seqData;
extern const struct SequenceData s_f_pause_cursor_seqData;
extern const struct SequenceData s_f_pause_continue_seqData;

extern const struct Animation D_0890ab28[]; // Pause Menu Title
extern const struct Animation D_0890ab88[]; // Pause Menu Options (Continue)
extern const struct Animation D_0890abb0[]; // Pause Menu Options (Quit)
extern const struct Animation D_0890abd8[]; // Skip Tutorial ("Select to Skip")
extern const struct Animation D_0890ac00[]; // Black A Button Prompt
extern const struct Animation D_0890ac20[]; // White A Button Prompt
extern const struct Animation D_0890ac40[]; // Go For A Perfect!
extern const struct Animation D_0890aca0[]; // Fail Perfect
extern const struct Animation D_0890ad60[]; // Perfect Input

extern u32 D_089cfd7c[]; // Common Gameplay Graphics/Palettes (Pause Menu, etc.)
extern u32 D_089cfda0[]; // GFX Null..?
extern const struct PauseHandlerDefinition D_089cfde0; // Pause Handler Definition
extern const struct Animation *D_089cfdf0[2]; // A Button Prompt Animations { 0 = Black; 1 = White }

/* AUDIO */
extern void func_08016e04(u32 tempo); // [func_08016e04] Set Sound Effect Original Tempo
extern struct SoundPlayer *func_08016e18(struct SoundPlayer *player); // [func_08016e18] Match SoundPlayer to Current Tempo
extern struct SoundPlayer *func_08016e54(const struct SequenceData *sfx); // [func_08016e54] Play Sound
extern struct SoundPlayer *func_08016e64(u32 player, const struct SequenceData *sfx); // [func_08016e64] Play Sound
extern struct SoundPlayer *func_08016e74(const struct SequenceData *sfx, u32 volume, u32 pitch); // [func_08016e74] Play Sound
extern struct SoundPlayer *func_08016e84(u32 player, const struct SequenceData *sfx, u32 volume, s32 pitch); // [func_08016e84] Play Sound

/* SCENE */
extern void func_08016e94(void); // [func_08016e94] Initialise Static Variables
extern void func_08016ea4(void); // [func_08016ea4] Graphics Init. 0
extern void func_08016ec4(s32 arg); // [func_08016ec4] Scene Init.
extern void func_08016ffc(s32 arg); // [func_08016ffc] Scene STUB
extern void func_08017000(s32 arg); // [func_08016ffc] Scene Main

/* ... */
// extern ? func_0801714c(?); // [func_0801714c] Check if Play Inputs are Enabled
// extern ? func_08017168(?);
// extern ? func_08017188(?); // [func_08017188] Load New Engine
extern union GameEngineInfo *func_0801732c(void); // [func_0801732c] Get Current Game Engine Info
extern void func_08017338(u16 press, u16 release); // [func_08017338] Set Input Button Filters
extern s32  func_08017348(s32 param, s32 id); // [func_08017348] Run Engine-Common Event
extern void func_08017380(s32 param); // [func_08017380] Set Parameter for Engine-Specific Event
extern s32  func_0801738c(const struct GameEngine *engine, s32 id); // [func_0801738c] Run Engine-Specific Event
extern void func_080173c4(u32 enable); // [func_080173c4] Enable Play Inputs
extern void func_080173d0(u32 arg); // [func_080173d0] Set unk9
extern void func_080173dc(const struct SequenceData *sfx); // [func_080173dc] Set Next Cue Spawn SFX
extern void func_080173e8(const struct SequenceData *sfx); // [func_080173e8] Set Next Cue Hit SFX
extern void func_080173f4(const struct SequenceData *sfx); // [func_080173f4] Set Next Cue Barely SFX
extern void func_08017400(const struct SequenceData *sfx); // [func_08017400] Set Next Cue Miss SFX
// extern ? func_0801740c(?);
extern void func_08017448(u32 isTutorial); // [func_08017448] Set isTutorial
extern void func_08017458(struct Scene *scene); // [func_08017458] Set skipDestination
extern void func_08017468(u32 buttons); // [func_08017468] Set Skip Tutorial Button
extern void func_0801747c(struct Scene *scene); // [func_0801747c] Set Skip Destination (i.e. if Select is pressed in a tutorial)
extern void func_080174e8(u32 corner); // [func_080174e8] Display Skip Tutorial Icon
extern void func_08017514(void); // [func_08017514] Skip Tutorial
extern void func_08017568(u32 duration); // [func_08017568] Set Screen Fade-In
extern void func_08017578(void); // [func_08017578] Fade-In Screen
extern void func_080175a0(u32 count); // [func_080175a0] Set unk8A
extern void func_080175b0(void); // [func_080175b0] Set unk88 to unk8A
extern void func_080175c4(void); // [func_080175c4] Increment unk88
extern u32  func_080175d8(void); // [func_080175d8] Get unk88
extern void func_080175e8(u32 level); // [func_080175e8] Set Global Reverb
extern void func_08017604(u32 start); // [func_08017604] Start Perfect Campaign
extern void func_08017648(u32 assessInputs); // [func_08017648] Start/Stop Assessing Inputs for Perfect Campaign
extern void func_0801765c(void); // [func_0801765c] Register Imperfect Input
extern void func_080176cc(void); // [func_080176cc] Register Perfect Input
extern s32  func_08017728(const struct GameEngine *engine, u32 function, s32 param); // [func_08017728] Run Game Engine Event (convenience method)
// extern ? func_08017744(?);
// extern ? func_08017758(?);
// extern ? func_0801777c(?);
// extern ? func_080177a4(?); // [func_080177a4] Set (unk5B4 = arg) and (unk5B5 = 1)
// extern ? func_080177c8(?);
// extern ? func_080177dc(?); // [func_080177dc] Set unk5B8
extern void func_080177f0(s32 arg); // [func_080177f0] Scene Close

/* CUES */
extern void func_080178ac(void); // [func_080178ac] Reset All Cue Data
extern void func_080178e4(void); // [func_080178e4] Init. All Cues
extern void func_08017908(u32 criteria); // [func_08017908] Set Current Marking Criteria
extern u32  func_08017918(void); // [func_08017918] Get Current Marking Criteria
extern void func_08017928(u32 markingCriteria, u32 cueResult, s32 timingOffset); // [func_08017928] Register Cue Result
extern void func_080179a0(s32 offset); // [func_080179a0] Add Input Hit
extern void func_080179bc(s32 offset); // [func_080179bc] Add Input Barely
extern void func_080179d8(s32 offset); // [func_080179d8] Add Input Miss
extern void func_080179f4(s32 id); // [func_080179f4] Spawn Cue
extern void func_08017b34(void); // [func_08017b34] Set unk5D to TRUE
extern void func_08017b44(struct Cue *cue); // [func_08017b44] Despawn Cue
extern void func_08017b88(u32 arg); // [func_08017b88] Set unk5C
extern void func_08017b98(struct Cue *cue); // [func_08017b98] Update Cue
extern void func_08017c68(void); // [func_08017c68] Update All Cues
extern s32  func_08017c8c(struct Cue *cue, u16 pressed, u16 released, s32 *offset); // [func_08017c8c] Determine Input Timing
extern void func_08017e2c(struct Cue *cue, s32 timingLevel, s32 offset, u32 pressed, u32 released); // [func_08017e2c] Hit/Barely Event
extern void func_08017ec8(u32 pressed, u32 released); // [func_08017ec8] Update Inputs
extern s32  func_08018054(void); // [func_08018054] Get Timing Offset of Most Recent Hit/Barely
extern void func_08018068(void); // [func_08018068] Set unk78 to TRUE
extern void func_08018078(u32 allow); // [func_08018078] Allow Cue Input Overlap
extern void func_08018088(struct Cue *cue, const struct SequenceData *sfx); // [func_08018088] Set Cue Spawn SFX
extern void func_0801808c(struct Cue *cue, const struct SequenceData *sfx); // [func_0801808c] Set Cue Hit SFX
extern void func_08018090(struct Cue *cue, const struct SequenceData *sfx); // [func_08018090] Set Cue Barely SFX
extern void func_08018094(struct Cue *cue, const struct SequenceData *sfx); // [func_08018094] Set Cue Miss SFX
extern const struct SequenceData *func_08018098(struct Cue *cue); // [func_08018098] Get Cue Spawn SFX
extern const struct SequenceData *func_0801809c(struct Cue *cue); // [func_0801809c] Get Cue Hit SFX
extern const struct SequenceData *func_080180a0(struct Cue *cue); // [func_080180a0] Get Cue Barely SFX
extern const struct SequenceData *func_080180a4(struct Cue *cue); // [func_080180a4] Get Cue Miss SFX
extern u32  func_080180a8(struct Cue *cue); // [func_080180a8] Get Cue Data unk0
extern u32  func_080180ac(struct Cue *cue); // [func_080180ac] Get Cue Input Buttons
extern void func_080180b0(struct Cue *cue, u32 buttons); // [func_080180b0] Set Cue Input Buttons
extern void func_080180b4(struct Cue *cue, u32 duration); // [func_080180b4] Set Cue Duration
extern u32  func_080180bc(struct Cue *cue); // [func_080180bc] Get Cue Marking Criteria
// extern ? func_080180c4(?); // [func_080180c4] Set (Early?) Cue Timing Bounds
// extern ? func_080180ec(?); // [func_080180ec] Set (Late?) Cue Timing Bounds
extern void func_08018114(u32 duration); // [func_08018114] Set Next Cue Duration
// extern ? func_08018124(struct Cue *cue, struct GameCueInfo *info); // Get Cue and GameCueInfo
// extern ? func_08018138(struct Cue *cue, struct Cue *prev, struct GameCueInfo *info); // Get Previous Cue and GameCueInfo

/* VIDEO */
// extern ? func_08018154(?); // [func_08018154] Initialise Common Graphics (Perfect Campaign, etc.)
extern void func_080182ac(struct Scene *scene); // [func_080182ac] Set D_03001328
extern void func_080182b8(void); // [func_080182b8] Screen Darken (Pause)
extern void func_08018318(void); // [func_08018318] Screen Lighten (Unpause)
extern void func_08018344(void); // [func_08018344] Open Pause Menu
extern s32  func_080183c8(void); // [func_080183c8] Update Pause Menu
extern void func_08018524(void); // [func_08018524] Initialise Pause Handler
// extern ? func_0801853c(?); // [func_0801853c] Set Text Advance Buttons
// extern ? func_0801858c(?);
extern void func_080185d0(s16 x, s16 y, s32 show); // [func_080185d0] Display A Button Prompt
extern void func_08018630(void *arg); // [func_08018630] Init. Text
extern void func_08018660(char *text); // [func_08018660] Display Text
// extern ? func_08018698(?);
// extern ? func_080186d4(?);
extern void func_0801875c(void); // [func_0801875c] Update Text
// extern ? func_08018828(?);
// extern ? func_0801884c(?);
// extern ? func_08018870(?);
