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
    u8 currentLevelState;
    u8 unk40;
    u8 unk41;
    const struct LevelData *currentLevelData;
    u16 currentLevelID;
    u16 null4A;
    u16 null4C;
    u8 gridIsMoving;
    s16 gridPrevX, gridPrevY;
    s16 gridNextX, gridNextY;
    u16 gridMotionProgress;
    u16 gridMotionDecay;
    u8 descBoxIsMoving;
    s16 descBoxPrevX, descBoxPrevY;
    s16 descBoxNextX, descBoxNextY;
    u16 descBoxMotionProgress;
    u16 descBoxMotionDecay;
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
    struct LevelStateData {
        s8 x, y;
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
    struct CampaignNotice {
        u8 unk0;
        s8 id;
        s16 x, y;
        s16 borderSprite;
        u16 textAdvDelay;
        u16 noticeDelay;
        struct TextPrinter *printer;
        s16 textAdvSprite;
        char text[0x100];
        u8 null452;
        u8 unk453;
        u8 unk454[4];
    } campaignNotice;
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

struct CampaignGiftData {
    s8 x, y;
    u8 type;
    u32 id;
};

struct LevelData {
    struct Scene *scene;
    const char *name;
    const char *description;
    u16 icon;
    u8 type;
    const struct GraphicsTable **epilogueGfx;
    const char *epilogueText[3];
};

struct GameSelectGridEntry {
    s16 id;
    const s8 *unk4;
    const s8 *unk8;
    const s8 *unkC;
    u8 unk10;
    u8 unk11;
};

struct GameSelectOverlay {
    u8 width, height;
    const u8 *texture;
    const s8 *unk8;
};


// Scene Macros/Enums:
enum CampaignBordersEnum {
    CAMPAIGN_BORDER_0_FLOWERS,
    CAMPAIGN_BORDER_3_FLOWERS,
    CAMPAIGN_BORDER_6_FLOWERS
};

enum CampaignGiftTypesEnum {
    CAMPAIGN_GIFT_TYPE_SONG,
    CAMPAIGN_GIFT_TYPE_DRUM_KIT,
    CAMPAIGN_GIFT_TYPE_READING_MATERIAL,
    CAMPAIGN_GIFT_TYPE_NEW_GAME
};

#define GAME_SELECT_GRID_WIDTH 15u
#define GAME_SELECT_GRID_HEIGHT 12u

enum GameSelectIconTypesEnum {
    GRID_ICON_TYPE_GAME,
    GRID_ICON_TYPE_REMIX,
    GRID_ICON_TYPE_BONUS
};

enum LevelCompletionStatesEnum {
    LEVEL_STATE_NULL = -1,
    LEVEL_STATE_HIDDEN,
    LEVEL_STATE_INVALID,
    LEVEL_STATE_CLOSED,
    LEVEL_STATE_AVAILABLE,
    LEVEL_STATE_CLEARED,
    LEVEL_STATE_MEDAL_OBTAINED
};

enum RhythmGameLevelsEnum {
    LEVEL_NULL = -1,
    LEVEL_KARATE_MAN,
    LEVEL_KARATE_MAN_2,
    LEVEL_CLAPPY_TRIO,
    LEVEL_SNAPPY_TRIO,
    LEVEL_POLYRHYTHM,
    LEVEL_POLYRHYTHM_2,
    LEVEL_NIGHT_WALK,
    LEVEL_NIGHT_WALK_2,
    LEVEL_RHYTHM_TWEEZERS,
    LEVEL_RHYTHM_TWEEZERS_2,
    LEVEL_SICK_BEATS,
    LEVEL_BOUNCY_ROAD,
    LEVEL_BOUNCY_ROAD_2,
    LEVEL_NINJA_BODYGUARD,
    LEVEL_NINJA_REINCARNATE,
    LEVEL_SNEAKY_SPIRITS,
    LEVEL_SNEAKY_SPIRITS_2,
    LEVEL_SAMURAI_SLICE,
    LEVEL_SPACEBALL,
    LEVEL_SPACEBALL_2,
    LEVEL_TAP_TRIAL,
    LEVEL_TAP_TRIAL_2,
    LEVEL_MARCHING_ORDERS,
    LEVEL_MARCHING_ORDERS_2,
    LEVEL_WIZARDS_WALTZ,
    LEVEL_BUNNY_HOP,
    LEVEL_FIREWORKS,
    LEVEL_POWER_CALLIGRAPHY,
    LEVEL_POWER_CALLIGRAPHY_2,
    LEVEL_TOSS_BOYS,
    LEVEL_TOSS_BOYS_2,
    LEVEL_RAT_RACE,
    LEVEL_TRAM_PAULINE,
    LEVEL_SHOWTIME,
    LEVEL_SPACE_DANCE,
    LEVEL_COSMIC_DANCE,
    LEVEL_RAP_MEN,
    LEVEL_RAP_WOMEN,
    LEVEL_QUIZ_SHOW,
    LEVEL_BON_ODORI,
    LEVEL_BON_DANCE,
    LEVEL_REMIX_1,
    LEVEL_REMIX_2,
    LEVEL_REMIX_3,
    LEVEL_REMIX_4,
    LEVEL_REMIX_5,
    LEVEL_REMIX_6,
    LEVEL_REMIX_7,
    LEVEL_REMIX_8,
    LEVEL_CAFE,
    LEVEL_RHYTHM_TOYS,
    LEVEL_ENDLESS_GAMES,
    LEVEL_DRUM_LESSONS,
    LEVEL_STAFF_CREDIT,
    LEVEL_LIVE_MENU
};


// Sound Effects:
extern struct SequenceData s_f_campaign_notice_seqData;
extern struct SequenceData s_menu_kettei2_seqData;


// Scene Data:
extern struct CampaignGiftData campaign_gifts_table[48];
extern struct Animation *campaign_icon_borders[3]; // { 0 = No Flowers; 1 = 3 Flowers; 2 = 6 Flowers }
extern const char D_08050bcc[];
extern const char D_08050bd0[];
extern const char D_08050bdc[];
extern const char D_08050be8[];
extern const char D_08050c08[];
extern const char D_08050c14[];
extern const char D_08050c18[];
extern const char D_08050c1c[];
extern const char D_08050c24[];
extern struct LevelData level_data_table[55];
extern const u8 *game_select_icon_texture_table[];
extern struct GameSelectGridEntry game_select_grid_data[GAME_SELECT_GRID_HEIGHT * GAME_SELECT_GRID_WIDTH];
extern u8 D_089cf90c[];
extern struct GraphicsTable game_select_gfx_table[];
extern struct CompressedGraphics *game_select_buffered_textures[];
extern struct Animation *game_select_column_title_anim[];
extern u8 *D_089cfaac[];


// Functions - BGM:
extern void disable_game_select_2_bgm(void);
extern void enable_game_select_2_bgm(void);
extern void play_game_select_bgm(void);

// Functions - Perfect Campaign
extern void clear_current_campaign(void);
extern void set_current_campaign(s32 id);
extern s32 get_current_campaign(void);
extern void update_plays_until_next_campaign(void);
extern void func_080128b8(void);
extern void func_08012928(void);
extern void func_080129e8(void);
extern void init_campaign_notice(void);
extern const char *get_campaign_gift_title(s32 id, s32 shortenSongTitle);
extern void start_campaign_notice(s32 id);
extern s32 func_08012de0(void);
extern void update_campaign_notice(void);
extern void display_campaign_icon_border(s32 x, s32 y);
// extern ? func_08013068(?);
// extern ? func_08013090(?);
// extern ? func_080130b0(?);
// extern ? func_080130e4(?);

// Functions - Grid
extern s32 get_level_id_from_grid_xy(s32 x, s32 y); // Get Level ID by Grid Position
extern struct LevelData *get_level_data_from_id(s32 id); // Get Level Data by ID
extern s32 get_level_state_from_id(s32 gameID); // Get Level Completion State by ID
extern struct LevelData *get_level_data_from_grid_xy(s32 x, s32 y); // Get Level Data by Grid Position
extern s32 get_level_state_from_grid_xy(s32 x, s32 y); // Get Level Completion State by Grid Position
extern void get_pixel_xy_from_level_id(s32 level, s32 *xReq, s32 *yReq); // Get X/Y from Level ID
extern void init_game_select_grid_gfx(void); // Write Game Select Grid to VRAM
extern void get_pixel_xy_from_grid_xy(s32 x, s32 y, s16 *xReq, s16 *yReq); // Get X/Y from Grid Position
extern void func_08013348(void);
extern void func_0801338c(void); // Initialise unk1C
// extern ? func_080133cc(?);
extern void func_080134ec(void); // update something

// Functions - Scene
extern void game_select_init_static_var(void); // Init. Static Variables
extern void game_select_init_gfx4(void); // Graphics Init. 4
extern void game_select_init_gfx3(void); // Graphics Init. 3
extern void game_select_init_gfx2(void); // Graphics Init. 2
extern void game_select_init_gfx1(void); // Graphics Init. 1
extern void game_select_scene_start(s32);  // Scene Start
extern void func_08013994(void); // Clear D_03001324
extern u32 func_080139a0(void); // Get D_03001324
extern void game_select_scene_paused(s32 unused); // Scene Update (Paused)
extern void game_select_scroll_bg_grid(s32 x, s32 y, s24_8 rate);
extern void game_select_scroll_bg_desc_box(s32 x, s32 y, s24_8 rate);
extern void game_select_update_bg_scroll(void); // Update Screen Scroll
extern void func_08013b48(void); // Set... something to do with the selection border sprite
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
extern void game_select_scene_update(s32); // Scene Update (Active)
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
extern void game_select_set_current_level(s32 gameID, s32 levelState, s32 arg2);
extern void func_08015298(void); // update something
extern u32 func_080152b0(u32 *outMod, u32 *outScore); // Calculate Flow?
// extern ? func_08015338(?);
extern u32 func_080153a8(void); // Set Flow?
extern void func_080154f0(void); // Initialise Flow Display
extern void func_08015660(void); // update something (cursor movement?)
extern void game_select_scene_stop(s32 unused); // Scene Stop
extern void func_080158f0(void); // STUB
extern void func_080158f4(void); // init. something
extern void func_0801593c(void); // STUB
extern void *func_08015940(void *); // ? Task Init.
extern u32 func_08015988(void *); // ? Task Update
extern s32 func_080159f4(); // Start New ? Task
// extern ? func_08015a24(?);
extern void game_select_print_icon_map(u32 baseMap, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tilesPerRow, u32 tileNum, u32 palette);
extern void game_select_print_icon_maps(u32 baseMap, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tileNum, u32 palette);
extern void game_select_print_icon_texture(const void *texture, u32 tileset, u32 tileNum);
extern void func_08015cf4(void); // Initialise BG Squares
// extern ? func_08015ea4(?);
// extern ? func_0801616c(?);
extern void func_0801626c(void); // update something
// extern ? func_08016290(?);
extern void func_080162bc(s32, s32); // update something
