#pragma once

#include "global.h"
#include "scenes.h"


/* SCENE TYPES */


struct struct_089cdf24 {
    s8 unk0;
    s8 unk1;
    u16 unk2;
    u32 unk4;
};

struct GameSelectSceneEntry {
    const struct Scene *scene;
    const char *name;
    const char *description;
    u16 unkC;
    u16 unkE;
    const u32 **epilogueGfx;
    const char *tryAgainText;
    const char *okText;
    const char *superbText;
};

struct GameSelectGridEntry {
    s16 id;
    char *unk4;
    char *unk8;
    char *unkC;
    u32 unk10;
};


/* SCENE MACROS & ENUMS */


#define GAME_SELECT_GRID_WIDTH 15
#define GAME_SELECT_GRID_HEIGHT 12

enum PerfectCampaignBordersEnum {
    PERFECT_BORDER_0_FLOWERS,
    PERFECT_BORDER_3_FLOWERS,
    PERFECT_BORDER_6_FLOWERS
};


/* SPRITE ANIMATIONS */


extern const struct Animation D_08902960[]; // large rotating square
extern const struct Animation D_08902998[]; // small rotating square
extern const struct Animation D_089029d0[]; // selected game border
extern const struct Animation D_08902a10[]; // game gradient border
extern const struct Animation D_08902a40[]; // flickering white square
extern const struct Animation D_08902ad0[]; // level complete shine
extern const struct Animation D_08902b40[]; // "STAGE 1"
extern const struct Animation D_08902b68[]; // blank stage text box
extern const struct Animation D_08902b78[]; // flow count numbers
extern const struct Animation D_08902bd8[]; // "Your Flow"
extern const struct Animation D_08902bf0[]; // flow direction
extern const struct Animation D_08902c10[]; // perfect campaign border (6 flowers)
extern const struct Animation D_08902c30[]; // A Button prompt
extern const struct Animation D_08902c50[]; // unused medal count
extern const struct Animation D_08902c88[]; // medal count numbers
extern const struct Animation D_08902ce8[]; // medal count number 0
extern const struct Animation D_08902cf8[]; // medal count text
extern const struct Animation D_08902d08[]; // "STAGE 2"
extern const struct Animation D_08902d30[]; // "STAGE 3"
extern const struct Animation D_08902d58[]; // "STAGE 4"
extern const struct Animation D_08902d80[]; // "STAGE 5"
extern const struct Animation D_08902da8[]; // "MEDAL CORNER"
extern const struct Animation D_08902dd0[]; // "REVIVAL"
extern const struct Animation D_08902df8[]; // "TECHNICIAN"
extern const struct Animation D_08902e20[]; // "LAST TECHNICIAN"
extern const struct Animation D_08902e48[]; // perfect campaign border (3 flowers)
extern const struct Animation D_08902e68[]; // perfect campaign border (no flowers)
extern const struct Animation D_08902e88[]; // cursor
extern const struct Animation D_08902eb0[]; // perfect cleared heart symbol


/* SOUND EFFECTS */


extern const struct SequenceData s_menu_bgm_seqData; // BGM Game Select 1
extern const struct SequenceData s_shibafu2_bgm_seqData; // BGM Game Select 2


/* SCENE DATA */


extern const struct struct_089cdf24 D_089cdf24[48]; // ??? (related to perfect campaign)
extern const struct Animation *D_089ce0a4[3]; // Perfect Campaign Border Animations { 0 = No Flowers; 1 = 3 Flowers; 2 = 6 Flowers }
extern const struct GameSelectSceneEntry D_089ce344[55];
extern const struct GameSelectGridEntry D_089ceafc[GAME_SELECT_GRID_HEIGHT * GAME_SELECT_GRID_WIDTH];
extern u32 D_089cf948[]; // Graphics Table
extern u32 D_089cf9a8[]; // some empty list again
extern const struct Animation *D_089cf9ac[14]; // Stage Title Text Animations


/* FUNCTIONS */


extern void func_080127fc(void); // [func_080127fc] Initialise Static Variables (Clear D_0300131c)
extern void func_08012808(void); // Set D_0300131c
extern void func_08012814(void); // [func_08012814] Play Music (Script Function)
// extern ? func_08012850(?);
// extern ? func_08012860(?);
// extern ? func_0801286c(?);
// extern ? func_0801287c(?);
// extern ? func_080128b8(?);
// extern ? func_08012928(?);
// extern ? func_080129e8(?);
extern void func_08012a58(void); // Initialise Perfect Campaign Notice
// extern ? func_08012c24(?);
extern void func_08012cb4(s32); // init. something
// extern ? func_08012de0(?);
extern void func_08012e24(void); // update something (state 3)
// extern ? func_08012fcc(?);
// extern ? func_08013068(?);
// extern ? func_08013090(?);
// extern ? func_080130b0(?);
// extern ? func_080130e4(?);
extern s32 func_08013100(u32 x, u32 y); // Get Game Select Scene Entry ID
// extern ? func_08013130(?);
extern s32 func_0801314c(s32 gameID); // Get Completion State for a Game
// extern ? func_0801316c(?);
extern s32 func_0801317c(s32 x, s32 y); // Get Completion State for a Game at Grid Position
extern s32 func_0801318c(s32, s32 *, s32 *); // init. something
extern void func_080131e8(void); // init. something
extern void func_0801332c(s32 inputX, s32 inputY, s16 *outputX, s16 *outputY); // calculate some x/y position
// extern ? func_08013348(?);
extern void func_0801338c(void); // Initialise unk1C
// extern ? func_080133cc(?);
extern void func_080134ec(void); // update something
// extern ? func_0801350c(?);
extern void func_08013530(void); // [func_08013530] Graphics Init. 3
extern void func_08013570(void); // [func_08013570] Graphics Init. 2
extern void func_0801359c(void); // [func_0801359c] Graphics Init. 1
extern void func_080135cc(void); // [func_080135cc] Graphics Init. 0
extern void func_08013644(s32);  // [func_08013644] Scene Init.
extern void func_08013994(void); // init. something
// extern ? func_080139a0(?);
// extern ? func_080139ac(?); // [func_080139ac] Scene STUB
// extern ? func_080139b0(?);
// extern ? func_080139f4(?);
extern void func_08013a38(void); // update something
// extern ? func_08013b48(?);
extern void func_08013b98(s32 x, s32 y); // Set Position for Cursor and Selection Border
// extern ? func_08013c04(?);
// extern ? func_08013c64(?);
// extern ? func_08013d18(?);
// extern ? func_08013d1c(?);
extern void func_08013d20(void); // update something
extern void func_08013f9c(void); // init. something
// extern ? func_0801401c(?);
extern void func_080140a4(s32 x); // Set Stage Title Text
extern void func_080140ec(void); // update something
extern void func_080140f8(s16 sprite); // Link Sprite Position to BG Offset?
extern void func_08014118(s32); // [func_08014118] Scene Main
// extern ? func_080141a4(?);
// extern ? func_080141c0(?);
// extern ? func_080141d4(?);
// extern ? func_080141d8(?);
extern void func_080141f8(s32, s32, s32); // init. something
// extern ? func_08014268(?);
// extern ? func_080142e8(?);
// extern ? func_080143c0(?);
// extern ? func_0801446c(?);
// extern ? func_08014488(?);
// extern ? func_08014504(?);
// extern ? func_08014624(?);
// extern ? func_0801490c(?);
extern void func_08014938(u32); // init. something
extern void func_08014978(void); // update something
// extern ? func_08014b68(?);
extern void func_08014c10(void); // Initialise Medal Counter
// extern ? func_08014d40(?);
extern void func_08014db0(void); // update something
// extern ? func_08014dbc(?);
extern void func_08014df0(void); // Initialise... Game Description Boxes?
// extern ? func_08014ef8(?);
// extern ? func_08014f30(?);
// extern ? func_08014f98(?);
// extern ? func_08015020(?);
// extern ? func_08015044(?);
// extern ? func_08015108(?);
// extern ? func_08015244(?);
extern void func_08015298(void); // update something
// extern ? func_080152b0(?);
// extern ? func_08015338(?);
// extern ? func_080153a8(?);
extern void func_080154f0(void); // init. something
extern void func_08015660(void); // update something (cursor movement?)
// extern ? func_080158d4(?); // [func_080158d4] Scene Close
extern void func_080158f0(void); // STUB
extern void func_080158f4(void); // init. something
extern void func_0801593c(void); // STUB
// extern ? func_08015940(?);
// extern ? func_08015988(?);
// extern ? func_080159f4(?);
// extern ? func_08015a24(?);
// extern ? func_08015a5c(?);
// extern ? func_08015afc(?);
// extern ? func_08015ccc(?);
extern void func_08015cf4(void); // Initialise BG Squares
// extern ? func_08015ea4(?);
// extern ? func_0801616c(?);
extern void func_0801626c(void); // update something
// extern ? func_08016290(?);
extern void func_080162bc(s32, s32); // update something
