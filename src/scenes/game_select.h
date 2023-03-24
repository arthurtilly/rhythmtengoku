#pragma once

#include "global.h"
#include "scenes.h"


// Scene Types:
struct GameSelectSceneInfo {
    /* [0x000] Scene */
    u8 sceneState;
    u32 screenIsReady;
    u32 loadingSceneGfx:1;
    u32 hideStageTitle:1;
    u16 nullA;
    /* [0x00C] Cursor */
    s16 selectionBorderSprite;
    s16 cursorSprite;
    s8 cursorX; // { 1..9 }
    s8 cursorY; // { 6..11 }
    /* [0x012] Stage Title Pane */
    s16 stageTitleText;
    s16 stageTitlePane;
    s16 stageTitleY;
    u16 unk18;
    u16 stageTitlePersistTime;
    /* [0x01C] BG Color Controls */
    struct ColorChanger {
        u8 state;
        u8 r1, g1, b1;
        u8 r2, g2, b2;
        u16 timer;
        u16 target;
    } colorChangers[2];
    /* [0x034] Level Info Pane */
    s16 infoPaneName;
    struct TextPrinter *infoPaneDesc;
    s16 infoPaneRank;
    u8 infoPaneIsClear;
    u8 infoPaneLevelState;
    u8 infoPaneDelay;
    u8 infoPaneTask;
    struct LevelData *infoPaneLevelData;
    s16 infoPaneLevelID;
    u16 null4A;
    u16 null4C;
    /* [0x04E] BG Motion (Grid Pane) */
    u8 gridPaneIsMoving;
    s16 gridPaneX1, gridPaneY1;
    s16 gridPaneX2, gridPaneY2;
    u16 gridPaneMotionTime;
    u16 gridPaneMotionDecay;
    /* [0x05C] BG Motion (Info Pane) */
    u8 infoPaneIsMoving;
    s16 infoPaneX1, infoPaneY1;
    s16 infoPaneX2, infoPaneY2;
    u16 infoPaneMotionTime;
    u16 infoPaneMotionDecay;
    /* [0x06A] Squares */
    s16 squareSprites[50];
    struct Vector2 squareVectors[50];
    struct NewLevelIconShadow {
        u8 active;
        s16 sprite;
        s16 xIn, yIn;
        s16 x1, y1;
        s16 x2, y2;
        s16 progress;
        void (*onFinish)();
        s32 onFinishArg;
        u16 delay;
    } newLevelShadows[10];
    /* [0x2D8] ? */
    u8 unk2D8;
    u8 unk2D9;
    u8 unk2DA;
    u8 unk2DB;
    u8 unk2DC;
    struct LevelStateData {
        s8 x, y;
        s8 state;
    } unk2E0[16];
    u8 unk320;
    const s8 *unk324;
    s8 unk328;
    s8 unk329;
    /* [0x32C] Flow Pane */
    struct FlowDisplay {
        s16 title;
        s16 digits[3];
        s16 arrow;
        u8 state;
        u16 timer;
        u16 counter;
        u16 currentScore;
        u16 previousScore;
    } flowDisplay;
    /* [0x340] Campaign Notice */
    struct CampaignNotice {
        u8 hasNewCampaign;
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
    /* [0x4E8] Medal Pane */
    s16 medalPaneTitle;
    s16 medalPaneDigit1;
    s16 medalPaneDigit2;
    u16 medalPaneFlickerTimer;
    /* ? */
    u8 null4F0;
    s8 unk4F1;
    s8 unk4F2;
    u8 unk4F3;
    u8 unk4F4;
    s8 unk4F5;
    s8 unk4F6;
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
    const s8 *animData;
};

struct LevelIconAnimatorTask {
    const u8 *texture;
    u16 *tilesetBase;
    const s8 *frameData;
    u16 size;
    u8 currentFrame;
    u8 timeUntilNext;
};


// Scene Macros/Enums:
enum CampaignBordersEnum {
    /* 00 */ CAMPAIGN_BORDER_0_FLOWERS,
    /* 01 */ CAMPAIGN_BORDER_3_FLOWERS,
    /* 02 */ CAMPAIGN_BORDER_6_FLOWERS
};

#define GAME_SELECT_GRID_WIDTH 15u
#define GAME_SELECT_GRID_HEIGHT 12u

#define LEVEL_ICON_ANIM_STOP -2
#define LEVEL_ICON_ANIM_LOOP -1

enum LevelIconOverlaysEnum {
    /* 00 */ LEVEL_ICON_OVERLAY_BLANK,
    /* 01 */ LEVEL_ICON_OVERLAY_CLOSED,
    /* 02 */ LEVEL_ICON_OVERLAY_UNCLEARED,
    /* 03 */ LEVEL_ICON_OVERLAY_CLEARED,
    /* 04 */ LEVEL_ICON_OVERLAY_MEDAL,
    /* 05 */ LEVEL_ICON_OVERLAY_REMIX_CLOSED,
    /* 06 */ LEVEL_ICON_OVERLAY_REMIX_UNCLEARED,
    /* 07 */ LEVEL_ICON_OVERLAY_BONUS
};


// Sound Effects:
extern struct SequenceData s_f_campaign_notice_seqData;
extern struct SequenceData s_menu_kettei2_seqData;
extern struct SequenceData s_menu_kettei1_seqData;
extern struct SequenceData s_menu_error_seqData;
extern struct SequenceData s_menu_cancel3_seqData;
extern struct SequenceData s_menu_cursor1_seqData;
extern struct SequenceData s_f_point_stop_seqData;
extern struct SequenceData s_f_point_roll_seqData;
extern struct SequenceData s_f_appear_game_seqData;
extern struct SequenceData s_f_open_game_seqData;
extern struct SequenceData s_f_clear_game_seqData;
extern struct SequenceData s_f_get_medal_seqData;


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
extern const u8 *level_icon_texture_table[];
extern struct GameSelectGridEntry game_select_grid_data[GAME_SELECT_GRID_HEIGHT * GAME_SELECT_GRID_WIDTH];
extern u8 level_icon_palette_table[];
extern struct GraphicsTable game_select_gfx_table[];
extern struct CompressedGraphics *game_select_buffered_textures[];
extern struct Animation *game_select_stage_title_anim[];
extern const char *game_select_rank_text[];
extern u8 game_select_rank_palette[];
extern struct GameSelectOverlay *level_icon_overlay_data[];
extern u8 *level_icon_overlays_map[];
extern struct TaskMethods D_089cfab8;


// Functions - BGM
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
extern void hide_campaign_icon_border(void);
extern const char *get_level_name_from_campaign(s32 id);
extern s32 get_campaign_from_grid_xy(s32 x, s32 y);
extern s32 get_campaign_from_level_id(s32 id);


// Functions - Grid
extern s32 get_level_id_from_grid_xy(s32 x, s32 y); // Get Level ID from Grid Position
extern struct LevelData *get_level_data_from_id(s32 id); // Get Level Data from ID
extern s32 get_level_state_from_id(s32 id); // Get Level State from ID
extern struct LevelData *get_level_data_from_grid_xy(s32 x, s32 y); // Get Level Data from Grid Position
extern s32 get_level_state_from_grid_xy(s32 x, s32 y); // Get Level State from Grid Position
extern void get_grid_xy_from_level_id(s32 level, s32 *xReq, s32 *yReq); // Get Grid Position from Level ID
extern void init_game_select_grid_gfx(void); // Write Game Select Grid to VRAM
extern void get_pixel_xy_from_grid_xy(s32 x, s32 y, s16 *xReq, s16 *yReq); // Get Screen X/Y from Grid Position
extern void set_level_state_from_grid_xy(s32 x, s32 y, s32 state); // Save Level State from Grid Position


// Functions - BG Color Changer
extern void game_select_init_color_mod(void);
extern void game_select_update_color_mod(struct ColorChanger *changer);
extern void game_select_update_bg_colors(void);


// Functions - Scene
extern void game_select_scene_init_static_var(void); // Init. Static Variables
extern void game_select_scene_init_gfx4(void); // Graphics Init. 4
extern void game_select_scene_init_gfx3(void); // Graphics Init. 3
extern void game_select_scene_init_gfx2(void); // Graphics Init. 2
extern void game_select_scene_init_gfx1(void); // Graphics Init. 1
extern void game_select_scene_start(void *sceneParam, s32 startParam); // Scene Start

extern void game_select_disable_credits_after_epilogue(void);
extern u32 game_select_roll_credits_after_epilogue(void);
extern void game_select_scene_paused(void *sceneParam, s32 pausedParam); // Scene Update (Paused)

extern void game_select_scroll_grid_pane(s32 x, s32 y, s24_8 rate);
extern void game_select_scroll_info_pane(s32 x, s32 y, s24_8 rate);
extern void game_select_update_bg_scroll(void);

extern void game_select_set_cursor_border_z(void);
extern void game_select_move_cursor_to_grid_xy(s32 x, s32 y);
extern u32 game_select_get_next_valid_xy(s32 *xReq, s32 *yReq, s32 dx, s32 dy);
extern void game_select_read_dpad_inputs(void);
extern void game_select_read_inputs_sub1(void);
extern void game_select_read_inputs_sub2(void);
extern void game_select_read_inputs(void);
extern void game_select_set_info_pane_to_cursor_target(void);

extern void game_select_update_stage_title_pos(void);
extern void game_select_set_stage_title(s32 x);
extern void game_select_update_stage_title(void);

extern void game_select_link_sprite_xy_to_bg(s16 sprite);
extern void game_select_scene_update(void *sceneParam, s32 updateParam); // Scene Update (Active)
extern u32 game_select_scene_inputs_enabled(void); // Scene Can Receive Inputs
extern void game_select_set_unused_static_var(u32 arg0, u32 arg1); // Set D_030055d4 and D_03005590
extern u32 game_select_get_total_levels(void);
extern const char *game_select_get_level_name(s32 id);

extern void func_080141f8(s32 x, s32 y, s32 state);
extern void func_08014268(s32 *xReq, s32 *yReq, s32 *stateReq);
extern u32 func_080142e8(s32 x, s32 y, s32 state);
extern void func_080143c0(s32 x, s32 y);
extern void func_0801446c(u32 args);
extern u32 func_08014488(s32 x, s32 y, u32 moveCursor, s24_8 scrollRate);
extern u32 func_08014504(const s8 *data);
extern u32 func_08014624(void);
extern void func_0801490c(void);
extern void func_08014938(u32 delay);
extern void func_08014978(void);

extern void game_select_set_medal_count(u32 total);
extern void game_select_init_medal_pane(void);
extern u32 game_select_update_medal_pane_flicker(void);
extern void game_select_update_medal_pane(void);
extern void game_select_refresh_medal_count(u32 flickerDuration);

extern void game_select_init_info_pane(void);
extern void game_select_delete_info_pane_sprite(s16 *ptr);
extern void game_select_clear_info_pane(void);
extern void game_select_print_level_name(struct LevelData *levelData);
extern void game_select_print_level_desc(struct LevelData *levelData);
extern void game_select_print_level_rank(s32 levelState);
extern void game_select_process_info_pane(void);
extern void game_select_set_info_pane(s32 id, s32 state, s32 delay);
extern void game_select_update_info_pane(void);

extern u32 game_select_calculate_flow(u32 *modifierReq, u32 *averageReq);
extern u32 game_select_calculate_flow_old(void);
extern u32 game_select_update_scores(void);
extern void game_select_init_flow_pane(void);
extern void game_select_update_flow_pane(void);

extern void game_select_scene_stop(void *sceneParam, s32 stopParam); // Scene Stop


// Functions - VRAM
extern void game_select_init_stub(void);
extern void game_select_init_icon_overlays(void);
extern void game_select_update_stub(void);
extern struct LevelIconAnimatorTask *game_select_init_icon_animator(struct LevelIconAnimatorTask *inputs);
extern u32 game_select_update_icon_animator(struct LevelIconAnimatorTask *task);
extern s32 game_select_start_new_icon_animator(u16 memID, const void *texture, u16 *tilesetBase, u32 size, const s8 *frameData);
extern s32 game_select_animate_icon(struct GameSelectOverlay *overlay, u32 tilesetNum, u32 baseTileNum);
extern void game_select_print_icon_map(u32 baseMap, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tilesPerRow, u32 tileNum, u32 palette);
extern void game_select_print_icon_maps(u32 baseMap, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tileNum, u32 palette);
extern void game_select_print_icon_texture(const void *texture, u32 tileset, u32 tileNum);
extern void game_select_init_squares(void);
extern void game_select_update_bg_squares_motion(s32 dx, s32 dy);
extern void game_select_spawn_shadow_square(s16 x, s16 y, void *onFinish, s32 onFinishArg, u32 delay);
extern void game_select_update_shadow_square(struct NewLevelIconShadow *shadow);
extern void game_select_update_shadow_squares(void);
extern u32 game_select_check_for_shadow_squares(void);
extern void game_select_update_bg_squares(s32 dx, s32 dy);
