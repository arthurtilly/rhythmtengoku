#pragma once

#include "global.h"
#include "main.h"
#include "scenes.h"

extern u32 D_089cfd7c[]; // Common Gameplay Graphics/Palettes (Pause Menu, etc.)

// extern ? func_08016e04(?); // [func_08016e04] Initialise Static Variables
// extern ? func_08016e18(?);
// extern ? func_08016e54(?); // sound related
// extern ? func_08016e64(?); // sound related
// extern ? func_08016e74(?); // sound related
// extern ? func_08016e84(?); // sound related
// extern ? func_08016e94(?); // [func_08016e94] ?
// extern ? func_08016ea4(?); // [func_08016ea4] Graphics Init. 0
extern void func_08016ec4(s32 arg); // [func_08016ec4] Scene Init.
extern void func_08016ffc(s32 arg); // [func_08016ffc] Scene STUB
extern void func_08017000(s32 arg); // [func_08016ffc] Scene Main
// extern ? func_0801714c(?); // [func_0801714c] Check if Play Inputs are Enabled
// extern ? func_08017168(?);
// extern ? func_08017188(?); // [func_08017188] Load New Engine
// extern ? func_0801732c(?);
extern void func_08017338(u16 press, u16 release); // [func_08017338] Set Input Button Filters
extern s32  func_08017348(s32 param, s32 id); // [func_08017348] Run Engine-Common Event
extern void func_08017380(s32 param); // [func_08017380] Set Parameter for Engine-Specific Event
extern s32  func_0801738c(struct GameEngine *engine, s32 id); // [func_0801738c] Run Engine-Specific Event
// extern ? func_080173c4(?); // [func_080173c4] Enable Play Inputs
// extern ? func_080173d0(?);
// extern ? func_080173dc(?);
// extern ? func_080173e8(?);
// extern ? func_080173f4(?);
// extern ? func_08017400(?);
// extern ? func_0801740c(?);
// extern ? func_08017448(?);
// extern ? func_08017458(?);
// extern ? func_08017468(?);
// extern ? func_0801747c(?); // [func_0801747c] Set Skip Destination (i.e. if Select is pressed in a tutorial)
// extern ? func_080174e8(?);
// extern ? func_08017514(?); // [func_08017514] Skip Tutorial
// extern ? func_08017568(?); // [func_08017568] Fade-In Screen
extern void func_08017578(void);
// extern ? func_080175a0(?);
// extern ? func_080175b0(?);
// extern ? func_080175c4(?);
// extern ? func_080175d8(?);
// extern ? func_080175e8(?); // [func_080175e8] Set Global Reverb
// extern ? func_08017604(?); // [func_08017604] Start Perfect Campaign
// extern ? func_08017648(?); // [func_08017648] Start/Stop Assessing Inputs for Perfect Campaign
// extern ? func_0801765c(?);
// extern ? func_080176cc(?);
// extern ? func_08017728(?);
// extern ? func_08017744(?);
// extern ? func_08017758(?);
// extern ? func_0801777c(?);
// extern ? func_080177a4(?); // [func_080177a4] Set (unk5B4 = arg) and (unk5B5 = 1)
// extern ? func_080177c8(?);
// extern ? func_080177dc(?);
// extern ? func_080177f0(?); // [func_080177f0] Scene Close
// extern ? func_080178ac(?); // [func_080178ac] Reset All Cue Data
// extern ? func_080178e4(?); // [func_080178e4] Init. All Cues
// extern ? func_08017908(?); // [func_08017908] Set Current Marking Criteria
// extern ? func_08017918(?);
// extern ? func_08017928(?);
// extern ? func_080179a0(?);
// extern ? func_080179bc(?);
// extern ? func_080179d8(?);
extern void func_080179f4(s32); // [func_080179f4] Spawn Cue
// extern ? func_08017b34(?); // [func_08017b34] Set unk5D to TRUE
// extern ? func_08017b44(?); // [func_08017b44] Despawn Cue
// extern ? func_08017b88(?); // [func_08017b88] Set unk5C
// extern ? func_08017b98(?); // [func_08017b98] Update Cue
// extern ? func_08017c68(?); // [func_08017c68] Update All Cues
// extern ? func_08017c8c(?); // [func_08017c8c] Determine Cue Input Timing (returns enum)
// extern ? func_08017e2c(?); // [func_08017e2c] Handle Hit/Barely Inputs
// extern ? func_08017ec8(?); // [func_08017ec8] Main Input Function
extern s32 func_08018054(void); // [func_08018054] Get Timing Offset of Most Recent Input
// extern ? func_08018068(?);
// extern ? func_08018078(?);
// extern ? func_08018088(?);
// extern ? func_0801808c(?);
// extern ? func_08018090(?);
// extern ? func_08018094(?);
// extern ? func_08018098(?);
// extern ? func_0801809c(?);
extern struct SequenceData *func_080180a0(struct Cue *);
// extern ? func_080180a4(?);
// extern ? func_080180a8(?);
// extern ? func_080180ac(?);
// extern ? func_080180b0(?);
// extern ? func_080180b4(?);
// extern ? func_080180bc(?);
// extern ? func_080180c4(?);
// extern ? func_080180ec(?);
// extern ? func_08018114(?);
// extern ? func_08018124(?);
// extern ? func_08018138(?);
// extern ? func_08018154(?); // [func_08018154] Initialise Common Graphics (Perfect Campaign, etc.)
extern void func_080182ac(struct Scene *);
// extern ? func_080182b8(?);
// extern ? func_08018318(?);
// extern ? func_08018344(?);
// extern ? func_080183c8(?);
// extern ? func_08018524(?);
// extern ? func_0801853c(?);
// extern ? func_0801858c(?);
// extern ? func_080185d0(?); // [func_080185d0] Display A Button Prompt
// extern ? func_08018630(?); // [func_08018630] Init. Text
// extern ? func_08018660(?); // [func_08018660] Display Text
// extern ? func_08018698(?);
// extern ? func_080186d4(?);
// extern ? func_0801875c(?); // [func_0801875c] Update Text
// extern ? func_08018828(?);
// extern ? func_0801884c(?);
// extern ? func_08018870(?);
