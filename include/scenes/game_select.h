#pragma once

#include "global.h"
#include "scenes.h"


// Scene Types:
struct GameSelectSceneInfo {
    u8 unk0;
    u32 unk4;
    s32 unk8_b0:1;
    s32 unk8_b1:1;
    u16 unkA;
    s16 selectionBorderSprite;
    s16 cursorSprite;
    s8 cursorX; // { 1..9 }
    s8 cursorY; // { 6..11 }
    s16 stageTitleSprite;
    s16 stageTitleBoxSprite;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    struct GameSelectUnk1C {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 unk4;
        u8 unk5;
        u8 unk6;
        u16 unk8;
        u16 unkA;
    } unk1C[2];
    u16 unk34;
    struct TextPrinter *unk38;
    u16 unk3C;
    u8 unk3E;
    u8 currentGameCompletionState;
    u8 unk40;
    u8 unk41;
    const struct GameSelectSceneEntry *currentGameEntry;
    u16 currentGameID;
    u16 null4A;
    u16 null4C;
    u8 unk4E;
    u16 unk50;
    u16 unk52;
    u16 unk54;
    u16 unk56;
    u32 null58;
    u8 unk5C;
    u16 unk5E;
    u16 unk60;
    u16 unk62;
    u16 unk64;
    u16 null66;
    u16 null68;
    s16 squareSprites[50];
    struct Vector2 squareVectors[50];
    struct GameSelectUnk198 {
        u8 unk0;
        u32 unk4;
        u32 unk8;
        u32 unkC;
        u32 unk10;
        u32 unk14;
        u32 unk18;
        u32 unk1C;
    } unk198[10];
    u8 unk2D8;
    u8 unk2D9;
    u8 unk2DA;
    u8 unk2DB;
    u8 unk2DC;
    struct RhythmGameCompletionData {
        s8 x;
        s8 y;
        u8 completion;
    } unk2E0[16];
    u8 unk320;
    u32 null324;
    u8 unk328;
    u8 unk329;
    struct FlowDisplay {
        s16 textSprite; // "Your Flow"
        s16 numberSprites[3];
        s16 arrowSprite;
        u8 unkA;
        u16 unkC;
        u16 unkE;
        u16 currentScore;
        u16 previousScore; // flow value?
    } flowDisplay;
    struct PerfectCampaignNotice {
        u8 unk0;
        s8 id;
        s16 x;
        s16 y;
        s16 perfectBorderSprite;
        u16 unk8;
        u16 unkA;
        struct TextPrinter *printer;
        s16 aButtonSprite;
        char text[11];
    } perfectCampaignNotice;
    u32 null360[40];
    u32 null400[20];
    u16 null450;
    u8 null452;
    u8 unk453;
    u8 unk454[4];
    u32 null458;
    u32 null45C;
    u32 null460[32];
    u32 null4E0;
    u32 null4E4;
    s16 medalsTextSprite;
    s16 medalsNumSprite1;
    s16 medalsNumSprite2;
    u16 unk4EE;
    u32 null4F0;
    u8 unk4F4;
    u8 unk4F5;
    u8 unk4F6;
    u16 unk4F8;
    s16 perfectClearedSprite;
};

struct PerfectCampaignData {
    s8 x;
    s8 y;
    u8 rewardType;
    u32 rewardID;
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


// Scene Macros/Enums:
#define GAME_SELECT_GRID_WIDTH 15
#define GAME_SELECT_GRID_HEIGHT 12

enum PerfectCampaignBordersEnum {
    PERFECT_BORDER_0_FLOWERS,
    PERFECT_BORDER_3_FLOWERS,
    PERFECT_BORDER_6_FLOWERS
};

enum PerfectCampaignRewardTypesEnum {
    PERFECT_REWARD_TYPE_MUSIC,
    PERFECT_REWARD_TYPE_DRUM_KIT,
    PERFECT_REWARD_TYPE_READING_MATERIAL,
    PERFECT_REWARD_TYPE_NEW_GAME
};

enum RhythmGameCompletionLevelsEnum {
    RHYTHM_GAME_STATE_HIDDEN,
    RHYTHM_GAME_STATE_INVALID,
    RHYTHM_GAME_STATE_CLOSED,
    RHYTHM_GAME_STATE_AVAILABLE,
    RHYTHM_GAME_STATE_CLEARED,
    RHYTHM_GAME_STATE_MEDAL_OBTAINED
};
#define RHYTHM_GAME_STATE_NONE -1

enum GameSelectSceneEntriesEnum {
    SCENE_ENTRY_KARATE_MAN,
    SCENE_ENTRY_KARATE_MAN_2,
    SCENE_ENTRY_CLAPPY_TRIO,
    SCENE_ENTRY_SNAPPY_TRIO,
    SCENE_ENTRY_POLYRHYTHM,
    SCENE_ENTRY_POLYRHYTHM_2,
    SCENE_ENTRY_NIGHT_WALK,
    SCENE_ENTRY_NIGHT_WALK_2,
    SCENE_ENTRY_RHYTHM_TWEEZERS,
    SCENE_ENTRY_RHYTHM_TWEEZERS_2,
    SCENE_ENTRY_SICK_BEATS,
    SCENE_ENTRY_BOUNCY_ROAD,
    SCENE_ENTRY_BOUNCY_ROAD_2,
    SCENE_ENTRY_NINJA_BODYGUARD,
    SCENE_ENTRY_NINJA_BODYGUARD_2,
    SCENE_ENTRY_SNEAKY_SPIRITS,
    SCENE_ENTRY_SNEAKY_SPIRITS_2,
    SCENE_ENTRY_SAMURAI_SLICE,
    SCENE_ENTRY_SPACEBALL,
    SCENE_ENTRY_SPACEBALL_2,
    SCENE_ENTRY_TAP_TRIAL,
    SCENE_ENTRY_TAP_TRIAL_2,
    SCENE_ENTRY_MARCHING_ORDERS,
    SCENE_ENTRY_MARCHING_ORDERS_2,
    SCENE_ENTRY_WIZARDS_WALTZ,
    SCENE_ENTRY_BUNNY_HOP,
    SCENE_ENTRY_FIREWORKS,
    SCENE_ENTRY_POWER_CALLIGRAPHY,
    SCENE_ENTRY_POWER_CALLIGRAPHY_2,
    SCENE_ENTRY_TOSS_BOYS,
    SCENE_ENTRY_TOSS_BOYS_2,
    SCENE_ENTRY_RAT_RACE,
    SCENE_ENTRY_TRAM_AND_PAULINE,
    SCENE_ENTRY_SHOWTIME,
    SCENE_ENTRY_SPACE_DANCE,
    SCENE_ENTRY_COSMIC_DANCE,
    SCENE_ENTRY_RAP_MEN,
    SCENE_ENTRY_RAP_WOMEN,
    SCENE_ENTRY_QUIZ_SHOW,
    SCENE_ENTRY_BON_ODORI,
    SCENE_ENTRY_BON_DANCE,
    SCENE_ENTRY_REMIX_1,
    SCENE_ENTRY_REMIX_2,
    SCENE_ENTRY_REMIX_3,
    SCENE_ENTRY_REMIX_4,
    SCENE_ENTRY_REMIX_5,
    SCENE_ENTRY_REMIX_6,
    SCENE_ENTRY_REMIX_7,
    SCENE_ENTRY_REMIX_8,
    SCENE_ENTRY_CAFE,
    SCENE_ENTRY_RHYTHM_TOYS,
    SCENE_ENTRY_ENDLESS_GAMES,
    SCENE_ENTRY_DRUM_LESSONS,
    SCENE_ENTRY_STAFF_CREDIT,
    SCENE_ENTRY_LIVE_MENU
};


// Text
extern const char D_08050bcc[]; // "" (null reward for getting a perfect)
extern const char D_08050bd0[]; // "新ゲーム"
extern const char D_08050bdc[]; // "ただいま「"
extern const char D_08050be8[]; // "」でパーフェクトを達成すると"
extern const char D_08050c08[]; // "もれなく"
extern const char D_08050c14[]; // "「"
extern const char D_08050c18[]; // "」"
extern const char D_08050c1c[]; // "の曲"
extern const char D_08050c24[]; // "をプレゼント!!"


// OAM Animations:
extern const struct Animation anim_game_select_bg_square_large[]; // large rotating square
extern const struct Animation anim_game_select_bg_square_small[]; // small rotating square
extern const struct Animation anim_game_select_border_target[]; // selected game border
extern const struct Animation anim_game_select_new_game[]; // game gradient border
extern const struct Animation anim_game_select_clear_game[]; // flickering white square
extern const struct Animation anim_game_select_get_superb[]; // level complete shine
extern const struct Animation anim_game_select_stage1[]; // "STAGE 1"
extern const struct Animation anim_game_select_stage_box[]; // blank stage text box
extern const struct Animation anim_game_select_flow_num[]; // flow count numbers
extern const struct Animation anim_game_select_flow_text[]; // "Your Flow"
extern const struct Animation anim_game_select_flow_arrow[]; // flow direction
extern const struct Animation anim_game_select_border_perfect3[]; // perfect campaign border (6 flowers)
extern const struct Animation anim_game_select_text_button[]; // A Button prompt
extern const struct Animation anim_game_select_medal_count_unused[]; // unused medal count
extern const struct Animation anim_game_select_medal_num[]; // medal count numbers
extern const struct Animation anim_game_select_medal_num0[]; // medal count number 0
extern const struct Animation anim_game_select_medal_text[]; // medal count text
extern const struct Animation anim_game_select_stage2[]; // "STAGE 2"
extern const struct Animation anim_game_select_stage3[]; // "STAGE 3"
extern const struct Animation anim_game_select_stage4[]; // "STAGE 4"
extern const struct Animation anim_game_select_stage5[]; // "STAGE 5"
extern const struct Animation anim_game_select_stage0[]; // "MEDAL CORNER"
extern const struct Animation anim_game_select_stage6[]; // "REVIVAL"
extern const struct Animation anim_game_select_stage7[]; // "TECHNICIAN"
extern const struct Animation anim_game_select_stage8[]; // "LAST TECHNICIAN"
extern const struct Animation anim_game_select_border_perfect2[]; // perfect campaign border (3 flowers)
extern const struct Animation anim_game_select_border_perfect1[]; // perfect campaign border (no flowers)
extern const struct Animation anim_game_select_cursor[]; // cursor
extern const struct Animation anim_game_select_perfect_rank[]; // perfect cleared heart symbol


// Sound Effects:
extern const struct SequenceData s_menu_bgm_seqData; // BGM Game Select 1
extern const struct SequenceData s_shibafu2_bgm_seqData; // BGM Game Select 2


// Scene Definition Data:
extern const struct PerfectCampaignData D_089cdf24[48]; // ??? (related to perfect campaign)
extern const struct Animation *const D_089ce0a4[3]; // Perfect Campaign Border Animations { 0 = No Flowers; 1 = 3 Flowers; 2 = 6 Flowers }
extern const struct GameSelectSceneEntry D_089ce344[55];
extern const struct GameSelectGridEntry D_089ceafc[GAME_SELECT_GRID_HEIGHT * GAME_SELECT_GRID_WIDTH];
extern const struct GraphicsTable D_089cf948[]; // Graphics Table
extern const struct CompressedGraphics *const D_089cf9a8[]; // Buffered Textures List
extern const struct Animation *const D_089cf9ac[14]; // Stage Title Text Animations


/* FUNCTIONS */


extern void func_080127fc(void); // [func_080127fc] Initialise Static Variables (Clear D_0300131c)
extern void func_08012808(void); // Set D_0300131c
extern void func_08012814(void); // [func_08012814] Play Music (Script Function)
extern void func_08012850(void); // Set D_03001320 to -1
extern void func_08012860(s32); // Set D_03001320
extern s32 func_0801286c(void); // Get D_03001320
// extern ? func_0801287c(?); // Reduce Perfect Campaign Attempts?
// extern ? func_080128b8(?);
extern void func_08012928(void);
extern void func_080129e8(void);
extern void func_08012a58(void); // Initialise Perfect Campaign Notice
extern const char *func_08012c24(s32 id, s32 shortenSongTitle); // Get Perfect Campaign Reward Text
extern void func_08012cb4(s32 id); // Set Perfect Campaign Notice..?
// extern ? func_08012de0(?);
extern void func_08012e24(void); // update something (state 3)
extern void func_08012fcc(s32 x, s32 y); // Display Perfect Campaign Border
// extern ? func_08013068(?);
// extern ? func_08013090(?);
// extern ? func_080130b0(?);
// extern ? func_080130e4(?);
extern s32 func_08013100(u32 x, u32 y); // Get Game Select Scene Entry ID
extern const struct GameSelectSceneEntry *func_08013130(s32 id); // Get Game Scene Entry
extern s32 func_0801314c(s32 gameID); // Get Completion State for a Game
extern const struct GameSelectSceneEntry *func_0801316c(s32 x, s32 y); // Get Game Scene Entry from Grid Position
extern s32 func_0801317c(s32 x, s32 y); // Get Completion State for a Game at Grid Position
extern void func_0801318c(s32, s32 *, s32 *); // Set X/Y from Game Select Grid Data
extern void func_080131e8(void); // init. something
extern void func_0801332c(s32 inputX, s32 inputY, s16 *outputX, s16 *outputY); // calculate some x/y position
extern void func_08013b48(void); // Set... something to do with the selection border sprite
extern void func_0801338c(void); // Initialise unk1C
// extern ? func_080133cc(?);
extern void func_080134ec(void); // update something
// extern ? func_0801350c(?);
extern void func_08013530(void); // [func_08013530] Graphics Init. 3
extern void func_08013570(void); // [func_08013570] Graphics Init. 2
extern void func_0801359c(void); // [func_0801359c] Graphics Init. 1
extern void func_080135cc(void); // [func_080135cc] Graphics Init. 0
extern void game_select_scene_start(s32);  // [func_08013644] Scene Init.
extern void func_08013994(void); // init. something
// extern ? func_080139a0(?);
extern void game_select_scene_update_frozen(s32 unused); // [func_080139ac] Scene STUB
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
extern void func_08013f9c(void); // Set Current Game Scene Entry
// extern ? func_0801401c(?);
extern void func_080140a4(s32 x); // Set Stage Title Text
extern void func_080140ec(void); // update something
extern void func_080140f8(s16 sprite); // Link Sprite Position to BG Offset?
extern void game_select_scene_update(s32); // [func_08014118] Scene Main
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
extern void func_08014ef8(s16 *ptr); // Set... something to do with game description box sprites?
extern void func_08014f30(void); // Initialise... Current Game Description Box?
// extern ? func_08014f98(?);
// extern ? func_08015020(?);
// extern ? func_08015044(?);
// extern ? func_08015108(?);
extern void func_08015244(s32 gameID, s32 completionState, s32 arg2); // Set Current Game Scene Entry
extern void func_08015298(void); // update something
extern u32 func_080152b0(u32 *outMod, u32 *outScore); // Calculate Flow?
// extern ? func_08015338(?);
extern u32 func_080153a8(void); // Set Flow?
extern void func_080154f0(void); // Initialise Flow Display
extern void func_08015660(void); // update something (cursor movement?)
extern void game_select_scene_stop(s32 unused); // [func_080158d4] Scene Close
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
