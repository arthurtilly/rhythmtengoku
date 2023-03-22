#include "global.h"
#include "game_select.h"
#include "graphics/game_select/game_select_graphics.h"

#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/memory_heap.h"
#include "src/code_08007468.h"
#include "src/code_08008dcc.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "reading.h"
#include "studio.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

// For readability.
#define gGameSelectInfo ((struct GameSelectSceneInfo *)D_030046a4)

static u8 sPlayAltBGM; // Play "Game Select 2" music
static u16 D_0300131e_padding; // unused
static s8 sCurrentCampaign; // Current Perfect Campaign ID
static u16 D_03001322_padding; // unused
static u8 sPlayCreditsAfterEpilogue; // Currently playing through Remix 6 for the first time.

extern u32 D_03005590; // Unused
extern u32 D_030055d4; // Unused

extern const struct Scene D_089d77e4; // Results (Rank-Type)
extern const struct Scene D_089d7c18; // Epilogue
extern const struct Scene D_089d7964; // Results (Score-Type)
extern const struct Scene D_089cdf08; // Game Select
extern const struct Scene D_089cde20; // Main Menu

#define COLOR_MOD_MAX_WAIT_TIME 60
#define COLOR_MOD_INTERP_TIME 96

enum ColorChangerStatesEnum {
    COLOR_CHANGER_STATE_WAITING,
    COLOR_CHANGER_STATE_INTERPOLATING
};

enum GameSelectStatesEnum {
    /* 00 */ SCENE_STATE_UNKNOWN,
    /* 01 */ SCENE_STATE_UNLOCKING_NEW_STAGES,
    /* 02 */ SCENE_STATE_ACTIVE,
    /* 03 */ SCENE_STATE_DISPLAYING_CAMPAIGN_NOTICE
};

#define STAGE_PANE_Y_HIDDEN (SCREEN_HEIGHT + 40)
#define STAGE_PANE_Y_VISIBLE (SCREEN_HEIGHT - 20)
#define STAGE_PANE_SPEED 9

enum InfoPaneStatesEnum {
    /* 00 */ INFO_PANE_TASK_NONE,
    /* 01 */ INFO_PANE_TASK_DELAY,
    /* 02 */ INFO_PANE_TASK_PRINT_NAME,
    /* 03 */ INFO_PANE_TASK_PRINT_RANK,
    /* 04 */ INFO_PANE_TASK_PRINT_DESC,
    /* 05 */ INFO_PANE_TASK_RENDER
};



/* GAME SELECT */



// Clear sPlayAltBGM
void disable_game_select_2_bgm(void) {
    sPlayAltBGM = FALSE;
}


// Set sPlayAltBGM
void enable_game_select_2_bgm(void) {
    sPlayAltBGM = TRUE;
}


// Play Game Select Music
void play_game_select_bgm(void) {
    if (sPlayAltBGM) {
        set_beatscript_tempo(105); // Set Tempo
        scene_set_music(&s_shibafu2_bgm_seqData); // Play Music
        sPlayAltBGM = FALSE;
    } else {
        set_beatscript_tempo(152); // Set Tempo
        scene_set_music(&s_menu_bgm_seqData); // Play Music
    }
}


// Clear Current Perfect Campaign
void clear_current_campaign(void) {
    sCurrentCampaign = -1;
}


// Set Current Perfect Campaign
void set_current_campaign(s32 id) {
    sCurrentCampaign = id;
}


// Get Current Perfect Campaign
s32 get_current_campaign(void) {
    return sCurrentCampaign;
}


// Decrement Plays Until Next Perfect Campaign
void update_plays_until_next_campaign(void) {
    if ((D_030046a8->data.unk266 == 1) && (get_level_state_from_id(LEVEL_REMIX_1) >= LEVEL_STATE_CLEARED)) {
        if (D_030046a8->data.playsUntilNextCampaign > 0) {
            D_030046a8->data.playsUntilNextCampaign--;
        }
    }
}


// ?
void func_080128b8(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    struct CampaignGiftData *gift = campaign_gifts_table;
    u32 i;

    notice->unk453 = 0;

    for (i = 0; i < 48; i++) {
        if (!D_030046a8->data.campaignsCleared[i]) {
            if (get_level_state_from_grid_xy(gift->x, gift->y) == LEVEL_STATE_MEDAL_OBTAINED) {
                notice->unk454[notice->unk453] = i;
                notice->unk453++;
            }
        }
        gift++;
    }
}


// ?
void func_08012928(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    u32 playsUntilNewCampaign;

    func_080128b8();
    if (notice->unk453 == 0) {
        return;
    }

    playsUntilNewCampaign = 0;
    if (D_030046a8->data.totalMedals < 48) {
        playsUntilNewCampaign = 1;
    }
    if (D_030046a8->data.totalMedals < 45) {
        playsUntilNewCampaign = agb_random(2) + 2;
    }
    if (D_030046a8->data.totalMedals < 30) {
        playsUntilNewCampaign = agb_random(4) + 3;
    }
    D_030046a8->data.unk266 = 1;
    D_030046a8->data.campaignAttemptsLeft = 3;
    D_030046a8->data.playsUntilNextCampaign = playsUntilNewCampaign;
    D_030046a8->data.currentCampaign = notice->unk454[agb_random(notice->unk453)];
    D_030046a8->data.unk26A = 0;
    D_030046a8->data.unk291 = 0;
}


// ?
void func_080129e8(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;

    if (D_030046a8->data.playsUntilNextCampaign > 0) {
        return;
    }

    D_030046a8->data.unk266 = 2;
    notice->id = D_030046a8->data.currentCampaign;
    notice->x = campaign_gifts_table[notice->id].x;
    notice->y = campaign_gifts_table[notice->id].y;
    notice->unk0 = TRUE;
}


// Init. Perfect Campaign Notice
void init_campaign_notice(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    struct Vector2 *vector = &D_03004b10.BG_OFS[BG_LAYER_1];

    notice->borderSprite = func_0804d160(D_03005380, anim_game_select_border_perfect3, 0, 48, 72, 0x8878, 1, 0, 0x8000);
    game_select_link_sprite_xy_to_bg(notice->borderSprite);
    notice->textAdvSprite = func_0804d160(D_03005380, anim_game_select_text_button, 0, 64, 64, 0x800, 1, 0, 0x8000);
    func_0804db44(D_03005380, notice->textAdvSprite, &vector->x, &vector->y);

    notice->printer = text_printer_create_new(get_current_mem_id(), 4, 120, 26);
    text_printer_set_x_y(notice->printer, 104, 320);
    text_printer_set_layer(notice->printer, 0x800);
    text_printer_set_colors(notice->printer, 0);
    text_printer_set_palette(notice->printer, 1);
    text_printer_set_line_spacing(notice->printer, 16);
    text_printer_center_by_content(notice->printer, 1);
    text_printer_set_x_y_controller(notice->printer, &vector->x, &vector->y);

    notice->unk0 = FALSE;
    notice->id = -1;

    switch (D_030046a8->data.unk266) {
        case 0:
            func_08012928();
            if (D_030046a8->data.unk266 == 1) {
                func_080129e8();
            }
            break;

        case 1:
            func_080129e8();
            break;

        case 2:
            if ((D_030046a8->data.campaignAttemptsLeft > 0)
             && (D_030046a8->data.unk26A < 3)
             && (!D_030046a8->data.campaignsCleared[D_030046a8->data.currentCampaign])) {
                notice->id = D_030046a8->data.currentCampaign;
                notice->x = campaign_gifts_table[notice->id].x;
                notice->y = campaign_gifts_table[notice->id].y;
                display_campaign_icon_border(notice->x, notice->y);
            } else {
                D_030046a8->data.unk266 = 0;
                func_08012928();
                if (D_030046a8->data.unk266 == 1) {
                    func_080129e8();
                }
                break;
            }
    }
    clear_current_campaign();
}


// Get Perfect Campaign Reward Text
const char *get_campaign_gift_title(s32 id, s32 shortenSongTitle) {
    u32 giftID, giftType;

    if (id < 0) return D_08050bcc; // ""

    giftType = campaign_gifts_table[id].type;
    giftID = campaign_gifts_table[id].id;

    switch (giftType) {
        case CAMPAIGN_GIFT_SONG:
            if (shortenSongTitle) {
                return studio_song_table[giftID].shortTitle;
            } else {
                return studio_song_table[giftID].fullTitle;
            }

        case CAMPAIGN_GIFT_DRUM_KIT:
            return studio_drum_kit_names[giftID];

        case CAMPAIGN_GIFT_READING_MATERIAL:
            return reading_material_table[giftID].title;

        case CAMPAIGN_GIFT_NEW_GAME: // Reward is New Game
            return D_08050bd0; // "新ゲーム"
    }
}


// Start Perfect Campaign Notice
void start_campaign_notice(s32 id) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    u32 isSpecialSong = FALSE;
    u32 isStandardSong = FALSE;
    u32 giftType = campaign_gifts_table[id].type;
    u32 giftID = campaign_gifts_table[id].id;
    struct LevelData *level;
    char *string;

    if (giftType == CAMPAIGN_GIFT_SONG) {
        isStandardSong = TRUE;
        switch (giftID) {
            case STUDIO_SONG_HONEY_SWEET_ANGEL:
            case STUDIO_SONG_WISH:
                isStandardSong = FALSE;
                isSpecialSong = TRUE;
                break;
        }
    }
    notice->x = campaign_gifts_table[id].x;
    notice->y = campaign_gifts_table[id].y;

    level = get_level_data_from_grid_xy(notice->x, notice->y);
    string = notice->text;
    memcpy(string, D_08050bdc, 11); // "ただいま「"
    string_concat(string, level->name); // "<game_name>"
    string_concat(string, D_08050be8); // "」でパーフェクトを達成すると"
    if (!isSpecialSong) {
        string_concat(string, D_08050c08); // "もれなく"
    }
    string_concat(string, D_08050c14); // "「"
    string_concat(string, get_campaign_gift_title(id, FALSE)); // "<gift>"
    string_concat(string, D_08050c18); // "」"
    if (isStandardSong) {
        string_concat(string, D_08050c1c); // "の曲"
    }
    string_concat(string, D_08050c24); // "をプレゼント!!"
    text_printer_set_string(notice->printer, string);

    func_0804d770(D_03005380, gGameSelectInfo->selectionBorderSprite, FALSE);
    notice->textAdvDelay = 10;
    notice->noticeDelay = 60;
    scene_interpolate_music_volume(100, beats_to_ticks(0x18));
    gGameSelectInfo->sceneState = SCENE_STATE_DISPLAYING_CAMPAIGN_NOTICE;
}


// ?
s32 func_08012de0(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    s32 id;

    if (notice->unk453 == 0) {
        return -1;
    }

    id = notice->unk454[agb_random(notice->unk453)];
    start_campaign_notice(id);

    return id;
}


// Update Perfect Campaign Notice
void update_campaign_notice(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    u32 denyInputs = FALSE;
    s16 x, y;
    s16 textX, textY;

    if (notice->noticeDelay > 0) {
        if (notice->noticeDelay == 30) {
            play_sound(&s_f_campaign_notice_seqData);
        }
        if (--notice->noticeDelay == 0) {
            display_campaign_icon_border(notice->x, notice->y);
            get_pixel_xy_from_grid_xy(notice->x, notice->y, &x, &y);
            game_select_scroll_grid_pane(x, y, 240);
            game_select_scroll_info_pane(0, 256, 240);
            gGameSelectInfo->hideStageTitle = TRUE;
        }
        denyInputs = TRUE;
    }

    if (gGameSelectInfo->gridPaneIsMoving) {
        denyInputs = TRUE;
    }

    if (gGameSelectInfo->infoPaneIsMoving) {
        denyInputs = TRUE;
    }

    if (text_printer_is_busy(notice->printer)) {
        denyInputs = TRUE;
    }

    if (!denyInputs) {
        if (notice->textAdvDelay > 0) {
            denyInputs = TRUE;
            if (--notice->textAdvDelay == 0) {
                text_printer_get_x_y(notice->printer, &textX, &textY);
                func_0804d5d4(D_03005380, notice->textAdvSprite, textX, textY);
                func_0804d770(D_03005380, notice->textAdvSprite, TRUE);
            }
        }
        if (!denyInputs && (D_03004afc & A_BUTTON)) {
            get_pixel_xy_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY, &x, &y);
            game_select_scroll_grid_pane(x, y, 220);
            game_select_scroll_info_pane(0, 0, 220);
            func_0804d770(D_03005380, notice->textAdvSprite, FALSE);
            func_0804d770(D_03005380, gGameSelectInfo->selectionBorderSprite, TRUE);
            gGameSelectInfo->hideStageTitle = FALSE;
            play_sound(&s_menu_kettei2_seqData);
            scene_interpolate_music_volume(INT_TO_FIXED(1.0), beats_to_ticks(0x18));
            gGameSelectInfo->sceneState = SCENE_STATE_ACTIVE;
        }
    }

    text_printer_update(notice->printer);
}


// Display Perfect Campaign Border
void display_campaign_icon_border(s32 x, s32 y) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;
    s16 spriteX, spriteY;

    get_pixel_xy_from_grid_xy(x, y, &spriteX, &spriteY);
    spriteX += 47;
    spriteY += 68;
    func_0804d8f8(D_03005380, notice->borderSprite, campaign_icon_borders[clamp_int32(D_030046a8->data.campaignAttemptsLeft, 1, 3) - 1], 0, 1, 0, 0);
    func_0804d5d4(D_03005380, notice->borderSprite, spriteX, spriteY);
    func_0804d770(D_03005380, notice->borderSprite, TRUE);
}


// Hide Perfect Campaign Border
void hide_campaign_icon_border(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;

    func_0804d770(D_03005380, notice->borderSprite, FALSE);
}


// Get Level Name from Campaign ID
const char *get_level_name_from_campaign(s32 id) {
    return get_level_data_from_grid_xy(campaign_gifts_table[id].x, campaign_gifts_table[id].y)->name;
}


// (https://decomp.me/scratch/VLR4o)
#include "asm/game_select/asm_080130b0.s"


// Get Campaign ID from Level ID
s32 get_campaign_from_level_id(s32 id) {
    s32 x, y;

    get_grid_xy_from_level_id(id, &x, &y);
    return get_campaign_from_grid_xy(x, y);
}


// Get Level ID from Grid Position
s32 get_level_id_from_grid_xy(s32 x, s32 y) {
    if ((x < GAME_SELECT_GRID_WIDTH) && (y < GAME_SELECT_GRID_HEIGHT)) {
        return game_select_grid_data[x + (y * GAME_SELECT_GRID_WIDTH)].id;
    }

    return -1;
}


// Get Level Data from Level ID
struct LevelData *get_level_data_from_id(s32 id) {
    if (id < 0) {
        return NULL;
    }

    return &level_data_table[id];
}


// Get Level Completion State from Level ID
s32 get_level_state_from_id(s32 id) {
    struct TengokuSaveData *saveData = &D_030046a8->data;

    if (id < 0) {
        return -1;
    }

    return saveData->levelStates[id];
}


// Get Level Data from Grid Position
struct LevelData *get_level_data_from_grid_xy(s32 x, s32 y) {
    return get_level_data_from_id(get_level_id_from_grid_xy(x, y));
}


// Get Level Completion State from Grid Position
s32 get_level_state_from_grid_xy(s32 x, s32 y) {
    return get_level_state_from_id(get_level_id_from_grid_xy(x, y));
}


// Get Grid Position from Level ID
void get_grid_xy_from_level_id(s32 id, s32 *xReq, s32 *yReq) {
    s32 x, y;

    if (id < 0) {
        *xReq = -1;
        *yReq = -1;
        return;
    }

    for (y = 0; y < GAME_SELECT_GRID_HEIGHT; y++) {
        for (x = 0; x < GAME_SELECT_GRID_WIDTH; x++) {
            if (game_select_grid_data[x + (y * GAME_SELECT_GRID_WIDTH)].id == id) {
                *xReq = x;
                *yReq = y;
                return;
            }
        }
    }
}


// Write Game Select Grid to VRAM
void init_game_select_grid_gfx(void) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    void *tileBase, *iconMapBase, *iconOverlayMapBase;
    u32 tileNum;
    u32 i, j;

    tileBase = BG_TILESET_BASE(0);
    dma3_fill(0, tileBase, 0x20, 0x20, 0x200);
    iconMapBase = BG_MAP_BASE(0xE000);
    dma3_fill(0, iconMapBase, 0x2000, 0x20, 0x200);
    iconOverlayMapBase = BG_MAP_BASE(0xC000);
    dma3_fill((0x0100 << 16) | 0x0100, iconOverlayMapBase, 0x2000, 0x20, 0x200);

    tileNum = 1;
    for (i = 0; i < 54; i++) {
        game_select_print_icon_texture(level_icon_texture_table[i], 0, tileNum);
        tileNum += (3 * 3);
    }

    for (i = 0; i < 12; i++) {
        for (j = 0; j < 15; j++) {
            struct LevelData *levelData;
            s32 levelID, levelState, levelType;
            u32 overlay, palette;

            levelID = game_select_grid_data[j + (i * 15)].id;

            if (levelID >= 0) {
                u32 tileX = 1 + (j * 5);
                u32 tileY = 4 + (i * 3);

                levelData = &level_data_table[levelID];
                levelType = levelData->type;
                levelState = saveData->levelStates[levelID];
                overlay = level_icon_overlays_map[levelType][levelState];
                if (levelState != LEVEL_STATE_HIDDEN) {
                    tileNum = 1 + (levelData->icon * 3 * 3);
                    palette = level_icon_palette_table[levelData->icon];
                    game_select_print_icon_maps(28, 3, tileX, tileY, 3, 3, tileNum, palette);
                }
                tileNum = 1 + (overlay * 3 * 3) + 0x100;
                game_select_print_icon_maps(24, 3, tileX, tileY, 3, 3, tileNum, 7);
            }
        }
    }
}


// Get Screen Coordinates from Grid Position
void get_pixel_xy_from_grid_xy(s32 x, s32 y, s16 *xReq, s16 *yReq) {
    *xReq = (x * 40) - 39;
    *yReq = (y * 24) - 36;
}


// Set Level State by Grid Position
void set_level_state_from_grid_xy(s32 x, s32 y, s32 state) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    s32 id;

    if ((x < GAME_SELECT_GRID_WIDTH) && (y < GAME_SELECT_GRID_HEIGHT)) {
        id = game_select_grid_data[x + (y * GAME_SELECT_GRID_WIDTH)].id;

        if (id >= 0) {
            saveData->levelStates[id] = state;
        }
    }
}


// Init. Color Changers
void game_select_init_color_mod(void) {
    u32 i;

    for (i = 0; i < 2; i++) {
        struct ColorChanger *changer = &gGameSelectInfo->colorChangers[i];

        changer->r1 = changer->g1 = changer->b1 = 31;
        changer->r2 = changer->g2 = changer->b2 = 31;
        changer->state = COLOR_CHANGER_STATE_WAITING;
        changer->timer = 1;
        changer->target = (i == 0) ? 0xfe : 0xff;
    }
}


// Update Color Changer
void game_select_update_color_mod(struct ColorChanger *changer) {
    u32 r, g, b;

    switch (changer->state) {
        case COLOR_CHANGER_STATE_WAITING:
            if (--changer->timer == 0) {
                changer->state = COLOR_CHANGER_STATE_INTERPOLATING;
                changer->r1 = changer->r2;
                changer->g1 = changer->g2;
                changer->b1 = changer->b2;

                if (agb_random(2)) {
                    changer->r2 = agb_random(32);
                    changer->g2 = agb_random(32);
                    changer->b2 = agb_random(32);

                    if ((changer->r2 < 20) && (changer->g2 < 20) && (changer->b2 < 20)) {
                        u8 *darkest = &changer->r2;

                        if (changer->r2 > changer->g2) {
                            darkest = &changer->g2;
                        }
                        if (*darkest > changer->b2) {
                            darkest = &changer->b2;
                        }

                        *darkest = 31 - (*darkest / 4);
                    }
                } else {
                    changer->r2 = 31 * agb_random(2);
                    changer->g2 = 31 * agb_random(2);
                    changer->b2 = 31 * agb_random(2);
                }

                changer->timer = 0;
            }
            break;

        case COLOR_CHANGER_STATE_INTERPOLATING:
            changer->timer++;
            r = func_08008f04(changer->r1, changer->r2, changer->timer, COLOR_MOD_INTERP_TIME);
            g = func_08008f04(changer->g1, changer->g2, changer->timer, COLOR_MOD_INTERP_TIME);
            b = func_08008f04(changer->b1, changer->b2, changer->timer, COLOR_MOD_INTERP_TIME);
            D_03004b10.bgPalette[0][changer->target] = ((r & 0x1F)) | ((g & 0x1F) << 5) | ((b & 0x1F) << 10);

            if (changer->timer >= COLOR_MOD_INTERP_TIME) {
                changer->timer = 1 + agb_random(COLOR_MOD_MAX_WAIT_TIME);
                changer->state = COLOR_CHANGER_STATE_WAITING;
            }
            break;
    }
}


// Update Color Changers
void game_select_update_bg_colors(void) {
    game_select_update_color_mod(&gGameSelectInfo->colorChangers[0]);
    game_select_update_color_mod(&gGameSelectInfo->colorChangers[1]);
}


// Init. Static Variables
void game_select_init_static_var(void) {
    D_030055d4 = 0;
    D_03005590 = 0;
    clear_current_campaign();
    game_select_disable_credits_after_epilogue();
    disable_game_select_2_bgm();
}


// Graphics Init. 4
void game_select_init_gfx4(void) {
    func_0800c604(0);
    pause_beatscript_scene(FALSE);
    func_080041d0(0xFE, 0xFF, 0);
    func_0800425c(0x10, 0x90);
    init_game_select_grid_gfx();
    game_select_init_icon_overlays();
    gGameSelectInfo->loadingSceneGfx = FALSE;
}


// Graphics Init. 3
void game_select_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = func_080087b4(get_current_mem_id(), game_select_buffered_textures);
    run_func_after_task(task, game_select_init_gfx4, 0);
}


// Graphics Init. 2
void game_select_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), game_select_gfx_table, 0x3000);
    run_func_after_task(task, game_select_init_gfx3, 0);
}


// Graphics Init. 1
void game_select_init_gfx1(void) {
    func_0800856c(get_current_mem_id(), game_select_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 2, 22, BGCNT_TILEMAP_SIZE(2) | BGCNT_PRIORITY(0));
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 2, 24, BGCNT_TILEMAP_SIZE(3) | BGCNT_PRIORITY(1));
    scene_set_bg_layer_display(BG_LAYER_3, TRUE, 0, 0, 0, 28, BGCNT_TILEMAP_SIZE(3) | BGCNT_PRIORITY(2));
}


// Scene Start
void game_select_scene_start(s32 unused) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    s32 recentLevelState, previousLevelState;
    s16 bgOfsX, bgOfsY;
    s32 prevX, prevY;

    gGameSelectInfo->loadingSceneGfx = TRUE;
    func_08007324(FALSE);
    func_080073f0();
    game_select_init_gfx1();
    game_select_init_color_mod();
    func_080158f0_stub();

    gGameSelectInfo->cursorX = D_030046a8->data.gsCursorX;
    gGameSelectInfo->cursorY = D_030046a8->data.gsCursorY;
    get_pixel_xy_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY, &bgOfsX, &bgOfsY);
    scene_set_bg_layer_pos(BG_LAYER_3, bgOfsX, bgOfsY);
    scene_set_bg_layer_pos(BG_LAYER_2, bgOfsX, bgOfsY);

    gGameSelectInfo->selectionBorderSprite = func_0804d160(D_03005380, anim_game_select_border_target, 0, 48, 72, 0x4800, 1, 0, 0);
    gGameSelectInfo->cursorSprite = func_0804d160(D_03005380, anim_game_select_cursor, 0, 64, 64, 0x47ff, 1, 0, 0);
    game_select_link_sprite_xy_to_bg(gGameSelectInfo->selectionBorderSprite);
    game_select_link_sprite_xy_to_bg(gGameSelectInfo->cursorSprite);
    game_select_move_cursor_to_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);

    gGameSelectInfo->gridPaneIsMoving = FALSE;
    gGameSelectInfo->gridPaneX1 = gGameSelectInfo->gridPaneX2 = bgOfsX;
    gGameSelectInfo->gridPaneY1 = gGameSelectInfo->gridPaneY2 = bgOfsY;
    gGameSelectInfo->infoPaneIsMoving = FALSE;
    gGameSelectInfo->infoPaneX2 = 0;
    gGameSelectInfo->infoPaneX1 = 0;
    gGameSelectInfo->infoPaneY2 = 0;
    gGameSelectInfo->infoPaneY1 = 0;

    gGameSelectInfo->stageTitleText = func_0804d160(D_03005380, anim_game_select_stage1, 0x7f, 60, 140, 0x479c, 1, 0x7f, 0);
    gGameSelectInfo->stageTitlePane = func_0804d294(D_03005380, anim_game_select_stage_box, 0, 60, 140, 0x479d, 0, 0, 0, 0);
    gGameSelectInfo->stageTitleY = 140;
    gGameSelectInfo->unk18 = 0;
    gGameSelectInfo->hideStageTitle = FALSE;
    gGameSelectInfo->stageTitlePersistTime = 0;
    game_select_set_stage_title(gGameSelectInfo->cursorX);

    init_campaign_notice();
    game_select_init_medal_pane();
    func_08015cf4();
    gGameSelectInfo->screenIsReady = FALSE;
    game_select_init_info_pane();
    game_select_set_info_pane_to_cursor_target();
    func_080154f0();
    gGameSelectInfo->unk2DA = 0;
    gGameSelectInfo->unk2DB = 0;
    gGameSelectInfo->unk2DC = 0;
    gGameSelectInfo->unk320 = 0;
    prevX = saveData->recentLevelX;
    prevY = saveData->recentLevelY;
    recentLevelState = saveData->recentLevelState;
    previousLevelState = get_level_state_from_grid_xy(prevX, prevY);
    gGameSelectInfo->unk4F4 = 0;
    gGameSelectInfo->unk4F8 = 0;

    if (recentLevelState > previousLevelState) {
        func_08014938(60);
        func_080141f8(prevX, prevY, recentLevelState);
        if (saveData->gameSelectUnk5 != 0) {
            gGameSelectInfo->unk4F4 = 1;
            gGameSelectInfo->unk4F5 = prevX;
            gGameSelectInfo->unk4F6 = prevY;
            gGameSelectInfo->unk4F8 = 60;
        }
        if ((get_level_id_from_grid_xy(prevX, prevY) == LEVEL_REMIX_6) && (recentLevelState >= LEVEL_STATE_CLEARED)) {
            enable_game_select_2_bgm();
        }
    } else {
        gGameSelectInfo->unk2D8 = 0;
        gGameSelectInfo->unk2D9 = 0;
        write_game_save_data();
        if (gGameSelectInfo->campaignNotice.unk0) {
            start_campaign_notice(D_030046a8->data.currentCampaign);
            gGameSelectInfo->campaignNotice.unk0 = FALSE;
        } else {
            gGameSelectInfo->sceneState = SCENE_STATE_ACTIVE;
        }
    }

    saveData->recentLevelState = LEVEL_STATE_NULL;
    saveData->gameSelectUnk5 = 0;
    func_080191ac(TRUE);
    game_select_disable_credits_after_epilogue();

    get_grid_xy_from_level_id(LEVEL_STAFF_CREDIT, &prevX, &prevY);
    if (get_level_state_from_grid_xy(prevX, prevY) >= LEVEL_STATE_CLEARED) {
        enable_game_select_2_bgm();
    }

    func_080006b0(&D_089d77e4, &D_089d7c18);
    func_080006b0(&D_089d7964, &D_089cdf08);
    func_080006b0(&D_089d7c18, &D_089cdf08);
}


// Clear sPlayCreditsAfterEpilogue
void game_select_disable_credits_after_epilogue(void) {
    sPlayCreditsAfterEpilogue = FALSE;
}


// Get sPlayCreditsAfterEpilogue
u32 game_select_roll_credits_after_epilogue(void) {
    return sPlayCreditsAfterEpilogue;
}


// Scene Update (Paused)
void game_select_scene_paused(s32 unused) {
}


// Scroll Start - Grid
void game_select_scroll_grid_pane(s32 x, s32 y, s24_8 rate) {
    gGameSelectInfo->gridPaneIsMoving = TRUE;
    gGameSelectInfo->gridPaneX1 = gGameSelectInfo->gridPaneX2;
    gGameSelectInfo->gridPaneY1 = gGameSelectInfo->gridPaneY2;
    gGameSelectInfo->gridPaneX2 = x;
    gGameSelectInfo->gridPaneY2 = y;
    gGameSelectInfo->gridPaneMotionDecay = rate;
    gGameSelectInfo->gridPaneMotionTime = INT_TO_FIXED(1.0);
}


// Scroll Start - Description Box
void game_select_scroll_info_pane(s32 x, s32 y, s24_8 rate) {
    gGameSelectInfo->infoPaneIsMoving = TRUE;
    gGameSelectInfo->infoPaneX1 = gGameSelectInfo->infoPaneX2;
    gGameSelectInfo->infoPaneY1 = gGameSelectInfo->infoPaneY2;
    gGameSelectInfo->infoPaneX2 = x;
    gGameSelectInfo->infoPaneY2 = y;
    gGameSelectInfo->infoPaneMotionDecay = rate;
    gGameSelectInfo->infoPaneMotionTime = INT_TO_FIXED(1.0);
}


// Update Screen Scroll
void game_select_update_bg_scroll(void) {
    s24_8 x, y;

    if (gGameSelectInfo->gridPaneIsMoving) {
        gGameSelectInfo->gridPaneMotionTime = FIXED_POINT_MUL(gGameSelectInfo->gridPaneMotionTime, gGameSelectInfo->gridPaneMotionDecay);
        x = func_08008f04(gGameSelectInfo->gridPaneX2, gGameSelectInfo->gridPaneX1, gGameSelectInfo->gridPaneMotionTime, INT_TO_FIXED(1.0));
        y = func_08008f04(gGameSelectInfo->gridPaneY2, gGameSelectInfo->gridPaneY1, gGameSelectInfo->gridPaneMotionTime, INT_TO_FIXED(1.0));
        scene_set_bg_layer_pos(BG_LAYER_3, x, y);
        scene_set_bg_layer_pos(BG_LAYER_2, x, y);

        if (gGameSelectInfo->gridPaneMotionTime == 0) {
            gGameSelectInfo->gridPaneIsMoving = FALSE;
        }
    }

    if (gGameSelectInfo->infoPaneIsMoving) {
        gGameSelectInfo->infoPaneMotionTime = FIXED_POINT_MUL(gGameSelectInfo->infoPaneMotionTime, gGameSelectInfo->infoPaneMotionDecay);
        x = func_08008f04(gGameSelectInfo->infoPaneX2, gGameSelectInfo->infoPaneX1, gGameSelectInfo->infoPaneMotionTime, INT_TO_FIXED(1.0));
        y = func_08008f04(gGameSelectInfo->infoPaneY2, gGameSelectInfo->infoPaneY1, gGameSelectInfo->infoPaneMotionTime, INT_TO_FIXED(1.0));
        scene_set_bg_layer_pos(BG_LAYER_1, x, y);

        if (gGameSelectInfo->infoPaneMotionTime == 0) {
            gGameSelectInfo->infoPaneIsMoving = FALSE;
        }
    }
}


// Set Selection Border Sprite Z/Layer
void game_select_set_cursor_border_z(void) {
    // Adjust Z level to place selection border under the medal icon (if present).
    if (get_level_state_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY) == LEVEL_STATE_MEDAL_OBTAINED) {
        func_0804d67c(D_03005380, gGameSelectInfo->selectionBorderSprite, 0x8800);
    } else {
        func_0804d67c(D_03005380, gGameSelectInfo->selectionBorderSprite, 0x4800);
    }
}


// Set Position for Cursor and Selection Border
void game_select_move_cursor_to_grid_xy(s32 x, s32 y) {
    s16 screenX, screenY;

    gGameSelectInfo->cursorX = x;
    gGameSelectInfo->cursorY = y;

    get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);

    screenX += 47;
    screenY += 68;

    func_0804d5d4(D_03005380, gGameSelectInfo->selectionBorderSprite, screenX, screenY);
    func_0804d5d4(D_03005380, gGameSelectInfo->cursorSprite, screenX, screenY);
    game_select_set_cursor_border_z();
}


// Get Next Valid Cursor Position in Given Directions (return FALSE if no movement should occur)
u32 game_select_get_next_valid_xy(s32 *xReq, s32 *yReq, s32 dx, s32 dy) {
    s32 x, y, levelID;

    x = *xReq;
    y = *yReq;

    // No movement is requested.
    if ((dx == 0) && (dy == 0)) {
        return FALSE;
    }

    // If both horizontal and vertical movement is requested, ignore the former.
    if ((dx != 0) && (dy != 0)) {
        dx = 0;
    }

    // Continuously move in the given direction, skipping grid icons that are either absent or hidden.
    while (TRUE) {
        x += dx;
        y += dy;

        // Movement target is out-of-bounds.
        if ((x < 0) || (x >= 15) || (y < 0) || (y >= 12)) {
            return FALSE;
        }

        // Movement target is a visible grid icon.
        levelID = get_level_id_from_grid_xy(x, y);
        if ((levelID > LEVEL_NULL) && (get_level_state_from_id(levelID) >= LEVEL_STATE_CLOSED)) {
            *xReq = x;
            *yReq = y;
            return TRUE;
        }
    }
}


// Read Directional Inputs
void game_select_read_dpad_inputs(void) {
    s16 screenX, screenY;
    s32 x, y, dx, dy;

    // Get horizontal and vertical movement.
    dx = dy = 0;
    if (D_030053b8 & DPAD_UP) {
        dy = -1;
    }
    if (D_030053b8 & DPAD_DOWN) {
        dy = 1;
    }
    if (D_030053b8 & DPAD_LEFT) {
        dx = -1;
    }
    if (D_030053b8 & DPAD_RIGHT) {
        dx = 1;
    }

    // No movement is requested.
    if ((dx == 0) && (dy == 0)) {
        return;
    }

    // If both horizontal and vertical movement is requested, ignore the former.
    if ((dx != 0) && (dy != 0)) {
        dx = 0;
    }

    x = gGameSelectInfo->cursorX;
    y = gGameSelectInfo->cursorY;

    // If the movement is invalid or zero, exit.
    if (!game_select_get_next_valid_xy(&x, &y, dx, dy)) {
        return;
    }

    // Movement is valid.
    game_select_move_cursor_to_grid_xy(x, y);
    get_pixel_xy_from_grid_xy(x, y, &screenX, &screenY);
    game_select_scroll_grid_pane(screenX, screenY, 200);
    game_select_set_info_pane_to_cursor_target();

    if (dx != 0) {
        game_select_set_stage_title(x);
    }

    play_sound(&s_menu_cursor1_seqData);
}


// Stub
void game_select_read_inputs_sub1(void) {
}


// Stub
void game_select_read_inputs_sub2(void) {
}


// Read Key Inputs
void game_select_read_inputs(void) {
    struct LevelData *levelData;
    s32 levelState, levelID;
    u32 canHaveCampaign;

    if (!game_select_scene_is_ready()) {
        return;
    }

    /* Update inputs beside A_BUTTON and B_BUTTON. */
    game_select_read_inputs_sub1();
    game_select_read_inputs_sub2();
    game_select_read_dpad_inputs();

    /* A_BUTTON was pressed: Attempt to open the selected level. */
    if (D_03004afc & A_BUTTON) {
        levelState = get_level_state_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);

        /* If the level can be opened: */
        if ((levelState == LEVEL_STATE_UNCLEARED) || (levelState == LEVEL_STATE_CLEARED) || (levelState == LEVEL_STATE_MEDAL_OBTAINED)) {
            D_030046a8->data.gsCursorX = gGameSelectInfo->cursorX;
            D_030046a8->data.gsCursorY = gGameSelectInfo->cursorY;
            levelID = get_level_id_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);
            levelData = get_level_data_from_id(levelID);
            func_08000584(levelData->scene);

            switch (levelData->type) {
                case LEVEL_TYPE_GAME:
                case LEVEL_TYPE_REMIX:
                    func_080006b0(&D_089d77e4, &D_089d7c18);
                    func_080006b0(&D_089d7964, &D_089cdf08);
                    func_080006b0(&D_089d7c18, &D_089cdf08);
                    func_080006d0(&D_089d7c18, levelData);
                    gameplay_pause_menu_set_quit_destination(&D_089cdf08);
                    if ((levelID == LEVEL_REMIX_6) && (levelState == LEVEL_STATE_UNCLEARED)) {
                        sPlayCreditsAfterEpilogue = TRUE;
                    }
                    canHaveCampaign = TRUE;
                    break;

                case LEVEL_TYPE_BONUS:
                    if (levelID == LEVEL_LIVE_MENU) {
                        func_080006b0(levelData->scene, &D_089d7c18);
                        func_080006b0(&D_089d7c18, &D_089cdf08);
                        func_080006d0(&D_089d7c18, levelData);
                        gameplay_pause_menu_set_quit_destination(&D_089cdf08);
                    } else {
                        func_080006b0(levelData->scene, &D_089cdf08);
                        gameplay_pause_menu_set_quit_destination(&D_089cdf08);
                    }
                    canHaveCampaign = FALSE;
                    break;
            }

            D_030046a8->data.gsCursorX = D_030046a8->data.recentLevelX = gGameSelectInfo->cursorX;
            D_030046a8->data.gsCursorY = D_030046a8->data.recentLevelY = gGameSelectInfo->cursorY;
            D_030046a8->data.recentLevelState = LEVEL_STATE_NULL;

            if (canHaveCampaign && (D_030046a8->data.unk266 == 2) && (gGameSelectInfo->campaignNotice.id >= 0)) {
                if ((gGameSelectInfo->cursorX == gGameSelectInfo->campaignNotice.x) && (gGameSelectInfo->cursorY == gGameSelectInfo->campaignNotice.y)) {
                    set_current_campaign(gGameSelectInfo->campaignNotice.id);
                    D_030046a8->data.campaignAttemptsLeft--;
                    D_030046a8->data.unk26A = 0;
                } else {
                    D_030046a8->data.campaignAttemptsLeft--;
                }
            }

            write_game_save_data();
            pause_beatscript_scene(FALSE);
            gGameSelectInfo->screenIsReady = FALSE;
            play_sound(&s_menu_kettei1_seqData);
            return;
        }

        /* If the level cannot be opened: */
        play_sound(&s_menu_error_seqData);
        return;
    }

    /* B_BUTTON was pressed: Return to Main Menu. */
    if (D_03004afc & B_BUTTON) {
        func_08000584(&D_089cde20);
        func_080006d0(&D_089cde20, NULL);
        D_030046a8->data.gsCursorX = D_030046a8->data.recentLevelX = gGameSelectInfo->cursorX;
        D_030046a8->data.gsCursorY = D_030046a8->data.recentLevelY = gGameSelectInfo->cursorY;
        D_030046a8->data.recentLevelState = LEVEL_STATE_NULL;
        write_game_save_data();
        pause_beatscript_scene(FALSE);
        gGameSelectInfo->screenIsReady = FALSE;
        play_sound(&s_menu_cancel3_seqData);
    }
}


// Set Current Level
void game_select_set_info_pane_to_cursor_target(void) {
    s32 levelState = get_level_state_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);

    switch (levelState) {
        case (LEVEL_STATE_NULL):
        case (LEVEL_STATE_HIDDEN):
        case (LEVEL_STATE_CLOSED):
            game_select_set_info_pane(LEVEL_NULL, LEVEL_STATE_HIDDEN, 10);
            break;

        case (LEVEL_STATE_UNCLEARED):
        case (LEVEL_STATE_CLEARED):
        case (LEVEL_STATE_MEDAL_OBTAINED):
            game_select_set_info_pane(get_level_id_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY), levelState, 10);
            break;
    }
}


// Update Stage Title Position
void game_select_update_stage_title_pos(void) {
    s32 yTarget, y;

    // Get a target Y position.
    if (gGameSelectInfo->hideStageTitle) {
        yTarget = STAGE_PANE_Y_HIDDEN;
    } else {
        yTarget = STAGE_PANE_Y_VISIBLE;

        // If the Stage Title would obscure any level icons, hide the pane.
        if (gGameSelectInfo->cursorY < 10) {
            if (gGameSelectInfo->stageTitlePersistTime == 0) {
                yTarget = STAGE_PANE_Y_HIDDEN;
            }
        } else {
            gGameSelectInfo->stageTitlePersistTime = 0;
        }
    }

    // Get a Y position up to 9px closer to the target from the current position.
    y = gGameSelectInfo->stageTitleY;
    if (y < yTarget) {
        y += STAGE_PANE_SPEED;
        if (y > yTarget) {
            y = yTarget;
        }
    }
    if (y > yTarget) {
        y -= STAGE_PANE_SPEED;
        if (y < yTarget) {
            y = yTarget;
        }
    }

    // Implement new Y value.
    func_0804d648(D_03005380, gGameSelectInfo->stageTitleText, y);
    func_0804d648(D_03005380, gGameSelectInfo->stageTitlePane, y);
    gGameSelectInfo->stageTitleY = y;

    // Update persistence timer.
    if (gGameSelectInfo->stageTitlePersistTime > 0) {
        gGameSelectInfo->stageTitlePersistTime--;
    }
}


// Set Stage Title
void game_select_set_stage_title(s32 x) {
    func_0804d8f8(D_03005380, gGameSelectInfo->stageTitleText, game_select_stage_title_anim[x], 0, 1, 0x7f, 0);
    gGameSelectInfo->stageTitlePersistTime = 100;
}


// Update Stage Title
void game_select_update_stage_title(void) {
    game_select_update_stage_title_pos();
}


// Link Sprite X/Y to Grid BG H/V Offset
void game_select_link_sprite_xy_to_bg(s16 sprite) {
    func_0804db44(D_03005380, sprite, &D_03004b10.BG_OFS[BG_LAYER_3].x, &D_03004b10.BG_OFS[BG_LAYER_3].y);
}


// Scene Update (Active)
void game_select_scene_update(s32 unused) {
    s16 bgOfsX, bgOfsY;

    if (gGameSelectInfo->loadingSceneGfx) {
        return;
    }

    bgOfsX = D_03004b10.BG_OFS[BG_LAYER_3].x;
    bgOfsY = D_03004b10.BG_OFS[BG_LAYER_3].y;

    switch (gGameSelectInfo->sceneState) {
        case SCENE_STATE_UNLOCKING_NEW_STAGES:
            func_08014978();
            break;

        case SCENE_STATE_ACTIVE:
            game_select_read_inputs();
            break;

        case SCENE_STATE_DISPLAYING_CAMPAIGN_NOTICE:
            update_campaign_notice();
            break;
    }

    game_select_update_bg_colors();
    func_0801593c_stub();
    game_select_update_info_pane();
    game_select_update_bg_scroll();
    game_select_update_stage_title();
    bgOfsX -= D_03004b10.BG_OFS[BG_LAYER_3].x;
    bgOfsY -= D_03004b10.BG_OFS[BG_LAYER_3].y;
    func_080162bc(bgOfsX - 1, bgOfsY);
    func_0801626c();
    func_08015660();
    game_select_update_medal_pane();
}


// Check if Scene Can Receive Inputs
u32 game_select_scene_is_ready(void) {
    if (gGameSelectInfo->screenIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Set D_030055d4 and D_03005590
void func_080141c0(u32 arg0, u32 arg1) {
    D_030055d4 = arg0;
    D_03005590 = arg1;
}


// Return the Total Number of Levels
u32 game_select_get_total_levels(void) {
    return 55;
}


#include "asm/game_select/asm_080141d8.s"


// ?
void func_080141f8(s32 x, s32 y, s32 levelState) {
    struct LevelStateData *data;
    s32 id;

    if (levelState == LEVEL_STATE_NULL) {
        return;
    }

    id = get_level_state_from_grid_xy(x, y);
    if ((id >= 0) && (id < levelState)) {
        data = &gGameSelectInfo->unk2E0[gGameSelectInfo->unk2DC];
        data->x = x;
        data->y = y;
        data->state = levelState;

        gGameSelectInfo->unk2DA++;
        if (++gGameSelectInfo->unk2DC > 15) {
            gGameSelectInfo->unk2DC = 0;
        }
    }
}


#include "asm/game_select/asm_08014268.s"

#include "asm/game_select/asm_080142e8.s"

#include "asm/game_select/asm_080143c0.s"

#include "asm/game_select/asm_0801446c.s"

#include "asm/game_select/asm_08014488.s"

#include "asm/game_select/asm_08014504.s"

#include "asm/game_select/asm_08014624.s"

#include "asm/game_select/asm_0801490c.s"


// ?
void func_08014938(u32 arg) {
    gGameSelectInfo->unk2D8 = 1;
    gGameSelectInfo->unk328 = gGameSelectInfo->cursorX;
    gGameSelectInfo->unk329 = gGameSelectInfo->cursorY;
    gGameSelectInfo->unk2D9 = arg;
    gGameSelectInfo->sceneState = SCENE_STATE_UNLOCKING_NEW_STAGES;
}


#include "asm/game_select/asm_08014978.s"


// Set Medal Count
void game_select_set_medal_count(u32 total) {
    total = clamp_int32(total, 0, 99);

    func_0804cebc(D_03005380, gGameSelectInfo->medalPaneDigit1, total % 10);
    func_0804cebc(D_03005380, gGameSelectInfo->medalPaneDigit2, (total < 10) ? 10 : (total / 10));
    func_0804d614(D_03005380, gGameSelectInfo->medalPaneDigit1, (total < 10) ? 0xA4 : 0xA8);
}


// Init. Medal Pane
void game_select_init_medal_pane(void) {
    struct Vector2 *bgOfs = &D_03004b10.BG_OFS[BG_LAYER_1];

    gGameSelectInfo->medalPaneTitle = func_0804d160(D_03005380, anim_game_select_medal_text, 0, 0xA2, 0x97, 0x800, 0, 0, 0);
    gGameSelectInfo->medalPaneDigit1 = func_0804d160(D_03005380, anim_game_select_medal_num, 0, 0xA8, 0x97, 0x800, 0, 0x7f, 0);
    gGameSelectInfo->medalPaneDigit2 = func_0804d160(D_03005380, anim_game_select_medal_num, 0, 0xA8, 0x97, 0x800, 0, 0x7f, 0);
    func_0804d5d4(D_03005380, gGameSelectInfo->medalPaneDigit2, 0xA1, 0x97);

    func_0804db44(D_03005380, gGameSelectInfo->medalPaneTitle, &bgOfs->x, &bgOfs->y);
    func_0804db44(D_03005380, gGameSelectInfo->medalPaneDigit1, &bgOfs->x, &bgOfs->y);
    func_0804db44(D_03005380, gGameSelectInfo->medalPaneDigit2, &bgOfs->x, &bgOfs->y);
    game_select_set_medal_count(D_030046a8->data.totalMedals);
    gGameSelectInfo->medalPaneFlickerTimer = 0;
}


// Update Medal Pane Flicker
u32 game_select_update_medal_pane_flicker(void) {
    u32 render;

    if (gGameSelectInfo->medalPaneFlickerTimer > 0) {
        render = ~(--gGameSelectInfo->medalPaneFlickerTimer / 16) & 1;

        func_0804d770(D_03005380, gGameSelectInfo->medalPaneTitle, render);
        func_0804d770(D_03005380, gGameSelectInfo->medalPaneDigit1, render);
        func_0804d770(D_03005380, gGameSelectInfo->medalPaneDigit2, render);
    }
}


// Update Medal Pane
void game_select_update_medal_pane(void) {
    game_select_update_medal_pane_flicker();
}


// Refresh Medal Count
void game_select_refresh_medal_count(u32 flickerDuration) {
    game_select_set_medal_count(D_030046a8->data.totalMedals);
    gGameSelectInfo->medalPaneFlickerTimer = flickerDuration;
}


// Init. Level Info Pane
void game_select_init_info_pane(void) {
    struct Vector2 *vector = &D_03004b10.BG_OFS[BG_LAYER_1];

    gGameSelectInfo->infoPaneName = -1;
    gGameSelectInfo->infoPaneRank = -1;
    gGameSelectInfo->infoPaneDesc = text_printer_create_new(get_current_mem_id(), 4, 104, 32);
    text_printer_set_x_y(gGameSelectInfo->infoPaneDesc, 128, 55);
    text_printer_set_layer(gGameSelectInfo->infoPaneDesc, 0x800);
    text_printer_set_colors(gGameSelectInfo->infoPaneDesc, 0);
    text_printer_set_palette(gGameSelectInfo->infoPaneDesc, 8);
    text_printer_set_line_spacing(gGameSelectInfo->infoPaneDesc, 14);
    text_printer_center_by_content(gGameSelectInfo->infoPaneDesc, 1);
    text_printer_set_x_y_controller(gGameSelectInfo->infoPaneDesc, &vector->x, &vector->y);
    text_printer_set_shadow_colors(gGameSelectInfo->infoPaneDesc, -1);
    gGameSelectInfo->perfectClearedSprite = func_0804d160(D_03005380, anim_game_select_perfect_rank, 0, 138, 115, 0x80a, 1, 0, 0x8000);
    func_0804db44(D_03005380, gGameSelectInfo->perfectClearedSprite, &vector->x, &vector->y);
    gGameSelectInfo->infoPaneIsClear = TRUE;
    gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_NONE;
}


// Delete Level Info Pane Text Sprite
void game_select_delete_info_pane_sprite(s16 *ptr) {
    s16 sprite = *ptr;

    if (sprite < 0) {
        return;
    }

    text_printer_delete_anim((void *)func_0804ddb0(D_03005380, sprite, 7));
    func_0804d504(D_03005380, sprite);
    *ptr = -1;
}


// Clear Level Info Pane
void game_select_clear_info_pane(void) {
    if (gGameSelectInfo->infoPaneIsClear) {
        return;
    }

    text_printer_fill_vram_tiles(0, 24, 32, 8, 0);
    game_select_delete_info_pane_sprite(&gGameSelectInfo->infoPaneName);
    game_select_delete_info_pane_sprite(&gGameSelectInfo->infoPaneRank);
    text_printer_clear(gGameSelectInfo->infoPaneDesc);
    func_0804d770(D_03005380, gGameSelectInfo->perfectClearedSprite, FALSE);
    gGameSelectInfo->infoPaneIsClear = TRUE;
}


// Print Level Name
void game_select_print_level_name(struct LevelData *levelData) {
    struct Animation *anim;
    const char *string;

    text_printer_fill_vram_tiles(0, 26, 16, 2, 0);
    string = levelData->name;
    anim = text_printer_get_formatted_line_anim(get_current_mem_id(), 0, 26, TEXT_PRINTER_FONT_SMALL, &string, TEXT_ANCHOR_BOTTOM_CENTER, 0, 104, 0, -1);
    gGameSelectInfo->infoPaneName = func_0804d160(D_03005380, anim, 0, 180, 37, 0x800, 1, 0, 0x8000);
    func_0804d8c4(D_03005380, gGameSelectInfo->infoPaneName, 7);
    gGameSelectInfo->infoPaneIsClear = FALSE;
}


// Print Level Description
void game_select_print_level_desc(struct LevelData *levelData) {
    text_printer_set_string(gGameSelectInfo->infoPaneDesc, levelData->description);
    gGameSelectInfo->infoPaneIsClear = FALSE;
}


// Print Level Rank
void game_select_print_level_rank(s32 levelState) {
    struct Animation *anim;
    const char *string;

    if (D_030046a8->data.levelScores[gGameSelectInfo->infoPaneLevelID] == (u16)-1) {
        levelState = LEVEL_STATE_UNCLEARED;
    }

    text_printer_fill_vram_tiles(16, 26, 16, 2, 0);
    string = game_select_rank_text[levelState];
    anim = text_printer_get_formatted_line_anim(get_current_mem_id(), 16, 26, TEXT_PRINTER_FONT_SMALL, &string, TEXT_ANCHOR_BOTTOM_RIGHT, 0, 104, 0, -1);
    gGameSelectInfo->infoPaneRank = func_0804d160(D_03005380, anim, 0, 228, 116, 0x800, 1, 0, 0x8000);
    func_0804d8c4(D_03005380, gGameSelectInfo->infoPaneRank, game_select_rank_palette[levelState]);
    gGameSelectInfo->infoPaneIsClear = FALSE;
}


// Update Level Info Pane
void game_select_process_info_pane(void) {
    struct Vector2 *bgOfs = &D_03004b10.BG_OFS[BG_LAYER_1];
    s32 campaign;

    switch (gGameSelectInfo->infoPaneTask) {
        case INFO_PANE_TASK_DELAY:
            if (--gGameSelectInfo->infoPaneDelay == 0) {
                gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_PRINT_NAME;
            }
            break;

        case INFO_PANE_TASK_PRINT_NAME:
            game_select_print_level_name(gGameSelectInfo->infoPaneLevelData);
            gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_PRINT_RANK;
            break;

        case INFO_PANE_TASK_PRINT_RANK:
            if (gGameSelectInfo->infoPaneLevelData->type != 2) {
                game_select_print_level_rank(gGameSelectInfo->infoPaneLevelState);
            }
            gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_PRINT_DESC;
            break;

        case INFO_PANE_TASK_PRINT_DESC:
            game_select_print_level_desc(gGameSelectInfo->infoPaneLevelData);
            gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_RENDER;
            break;

        case INFO_PANE_TASK_RENDER:
            if (!text_printer_is_busy(gGameSelectInfo->infoPaneDesc)) {
                func_0804d770(D_03005380, gGameSelectInfo->infoPaneName, TRUE);
                func_0804db44(D_03005380, gGameSelectInfo->infoPaneName, &bgOfs->x, &bgOfs->y);
                func_0804d770(D_03005380, gGameSelectInfo->infoPaneRank, TRUE);
                func_0804db44(D_03005380, gGameSelectInfo->infoPaneRank, &bgOfs->x, &bgOfs->y);

                campaign = get_campaign_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);
                if ((campaign >= 0) && D_030046a8->data.campaignsCleared[campaign]) {
                    func_0804d770(D_03005380, gGameSelectInfo->perfectClearedSprite, TRUE);
                }

                gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_NONE;
            }
            break;
    }
}


// Set Level Info Pane
void game_select_set_info_pane(s32 id, s32 state, s32 delay) {
    game_select_clear_info_pane();
    if (id < 0) {
        gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_NONE;
    } else {
        gGameSelectInfo->infoPaneLevelID = id;
        gGameSelectInfo->infoPaneLevelState = state;
        gGameSelectInfo->infoPaneDelay = delay;
        gGameSelectInfo->infoPaneLevelData = &level_data_table[id];
        gGameSelectInfo->infoPaneTask = INFO_PANE_TASK_DELAY;
    }
}


// Update Level Info Pane
void game_select_update_info_pane(void) {
    game_select_process_info_pane();
    text_printer_update(gGameSelectInfo->infoPaneDesc);
}


// Calculate Flow?
u32 func_080152b0(u32 *outMod, u32 *outScore) {
    struct TengokuSaveData *saveData;
    u32 totalGames, totalScore;
    u32 i, score;
    u32 modifier, modifiedScore;

    saveData = &D_030046a8->data;
    totalGames = 0;
    totalScore = 0;
    for (i = 0; i < 55; i++) {
        score = saveData->levelScores[i];
        if (score != (u16) -1) {
            totalGames++;
            totalScore += score;
        }
    }

    if (totalGames == 0) return 0;

    modifier = (INT_TO_FIXED((totalGames + 48) * 7)) / 480u;
    modifiedScore = (FIXED_TO_INT(modifier * totalScore)) / totalGames;
    if (outMod != NULL) {
        *outMod = modifier;
    }
    if (outScore != NULL) {
        *outScore = totalScore / totalGames;
    }
    return modifiedScore;
}


// Unused Flow Calculation
u32 func_08015338(void) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    u32 totalGames = 0;
    u32 totalScore = 0;
    u32 i;
    s24_8 multiplier;
    u32 baseScore;

    for (i = 0; i < 55; i++) {
        u32 score = saveData->levelScores[i];

        if (score != (u16)-1) {
            totalGames++;
            totalScore += score;
        }
    }

    if (totalGames == 0) {
        return 0;
    }

    // Min = 0.7 (<4 games cleared); Max = 1.4 (28 games cleared)
    multiplier = INT_TO_FIXED(0.7) + (INT_TO_FIXED(clamp_int32(totalGames - 3, 0, 25) * 7) / 25 / 10);

    // Min = 30 (avg. <= 300); Max = 100 (avg. >= 995)
    baseScore = clamp_int32((5 + (totalScore / totalGames)) / 10, 30, 100);

    // Min = 30 * 0.7 (21); Max = 100 * 1.4 (140)
    return FIXED_TO_INT(baseScore * multiplier);
}


// Set Flow?
u32 func_080153a8(void) {
    struct TengokuSaveData *saveData;
    struct FlowDisplay *flow;
    u32 scoreModifier, averageScore;
    u32 prevModifiedScoreAvg;
    u32 newModifiedScoreAvg;
    u32 newScore, prevScore, finalScore;
    u32 scoreIncrement;
    u32 medalWasObtained;
    u32 recentLevelState;
    s8 x, y;
    s32 id;
    u32 i;

    saveData = &D_030046a8->data;
    flow = &gGameSelectInfo->flowDisplay;
    medalWasObtained = FALSE;
    newScore = saveData->previousLevelScore;

    if (newScore == (u16) -1) {
        flow->previousScore = D_030046a8->data.currentFlow;
        flow->currentScore = D_030046a8->data.currentFlow;
        return 0;
    }

    x = saveData->recentLevelX;
    y = saveData->recentLevelY;
    id = get_level_id_from_grid_xy(x, y);
    recentLevelState = saveData->recentLevelState;

    if ((get_level_state_from_grid_xy(x, y) < LEVEL_STATE_MEDAL_OBTAINED)
     && (recentLevelState == LEVEL_STATE_MEDAL_OBTAINED)) {
        medalWasObtained = TRUE;
    }

    if (medalWasObtained) {
        prevModifiedScoreAvg = func_080152b0(NULL, NULL);
    }

    if (id >= 0) {
        prevScore = saveData->levelScores[id];
        if (prevScore == (u16) -1) {
            prevScore = newScore;
        } else if (prevScore < newScore) {
            prevScore = (prevScore + (newScore * 3)) / 4;
        } else {
            prevScore = (((newScore + (prevScore * 3)) / 4) << 8) >> 8;
        }
        saveData->levelScores[id] = prevScore;
    }
    saveData->previousLevelScore = -1;
    newModifiedScoreAvg = func_080152b0(&scoreModifier, &averageScore);

    if (medalWasObtained) {
        if (newModifiedScoreAvg < prevModifiedScoreAvg) {
            scoreIncrement = ((INT_TO_FIXED(prevModifiedScoreAvg)) / scoreModifier) - averageScore + 1;
            for (i = 0; i < 55; i++) {
                prevScore = saveData->levelScores[i];
                if (prevScore != (u16) -1) {
                    saveData->levelScores[i] = clamp_int32(prevScore + scoreIncrement, 0, 1000);
                }
            }
        }
        newModifiedScoreAvg = func_080152b0(NULL, NULL);
    }

    finalScore = newModifiedScoreAvg / 10;
    if (finalScore < 9) finalScore = 9;

    flow->previousScore = saveData->currentFlow;
    saveData->currentFlow = finalScore;
    flow->currentScore = saveData->currentFlow;
}


// Initialise Flow Display
void func_080154f0(void) {
    struct FlowDisplay *flow;
    struct Vector2 *vector;
    u32 i;
    u32 temp;
    u32 score;

    flow = &gGameSelectInfo->flowDisplay;
    vector = &D_03004b10.BG_OFS[BG_LAYER_1];

    for (i = 0; i < 3; i++) {
        flow->numberSprites[i] = func_0804d160(D_03005380, anim_game_select_flow_num, 10, 208 - (i * 8), 128, 0, 0, 0, 0);
        func_0804db44(D_03005380, flow->numberSprites[i], &vector->x, &vector->y);
    }

    flow->textSprite = func_0804d160(D_03005380, anim_game_select_flow_text, 0, 128, 128, 0, 0, 0, 0);
    func_0804db44(D_03005380, flow->textSprite, &vector->x, &vector->y);

    flow->arrowSprite = func_0804d160(D_03005380, anim_game_select_flow_arrow, 0, 224, 128, 0, 0, 0, 0x8000);
    func_0804db44(D_03005380, flow->arrowSprite, &vector->x, &vector->y);
    temp = func_080153a8();
    score = flow->previousScore;

    if (score != 0) {
        for (i = 0; i < 3; i++) {
            func_0804cebc(D_03005380, flow->numberSprites[i], ((score != 0) ? (score % 10) : 10));
            score /= 10;
        }
    }

    flow->unkA = ((flow->currentScore != 0) && (temp != 0));
    flow->unkC = 60;
    if (D_030046a8->data.gameSelectUnk5 != 0) {
        flow->unkC = 180;
    }
}


#include "asm/game_select/asm_08015660.s"


// Scene Stop
void game_select_scene_stop(s32 unused) {
    func_08008628();
    func_08003f28();
    func_08004058();
    func_08006d80();
    func_08007014(0);
}


void func_080158f0_stub(void) {
}


// Init. Level Icon Overlays
void game_select_init_icon_overlays(void) {
    u32 i;

    dma3_fill(0, BG_TILESET_BASE(0xA000), 0x20, 0x20, 0x200);

    for (i = 0; level_icon_overlay_data[i] != NULL; i++) {
        game_select_animate_icon(level_icon_overlay_data[i], 2, 1 + (i * 9) + 0x100);
    }
}


void func_0801593c_stub(void) {
}


// Init. Level Icon Overlay Animator Task
struct LevelIconAnimatorTask *game_select_init_icon_animator(struct LevelIconAnimatorTask *inputs) {
    struct LevelIconAnimatorTask *task;

    task = mem_heap_alloc(sizeof(struct LevelIconAnimatorTask));
    task->tilesetBase = inputs->tilesetBase;
    task->texture = inputs->texture;
    task->frameData = inputs->frameData;
    task->size = inputs->size;
    task->currentFrame = 0;
    task->timeUntilNext = task->frameData[1];

    dma3_set(task->texture + (task->frameData[0] * task->size), task->tilesetBase, task->size, 0x20, 0x200);

    return task;
}


// Update Level Icon Overlay Animator Task
u32 game_select_update_icon_animator(struct LevelIconAnimatorTask *task) {
    s32 frame;

    if (--task->timeUntilNext == 0) {
        task->currentFrame++;
        frame = task->frameData[task->currentFrame * 2];

        if (frame == LEVEL_ICON_ANIM_STOP) {
            return TRUE;
        }

        if (frame == LEVEL_ICON_ANIM_LOOP) {
            task->currentFrame = 0;
            frame = task->frameData[0];
        }

        task->timeUntilNext = task->frameData[(task->currentFrame * 2) + 1];
        dma3_set(&task->texture[frame * task->size], task->tilesetBase, task->size, 0x20, 0x200);
    }

    return FALSE;
}


// Start new Level Icon Overlay Animator Task
s32 game_select_start_new_icon_animator(u16 memID, const void *texture, u16 *tilesetBase, u32 size, const s8 *frameData) {
    struct LevelIconAnimatorTask inputs;

    inputs.texture = texture;
    inputs.tilesetBase = tilesetBase;
    inputs.size = size;
    inputs.frameData = frameData;

    return start_new_task(memID, &D_089cfab8, &inputs, NULL, 0);
}


// Animate Level Icon Overlay Texture
s32 game_select_animate_icon(struct GameSelectOverlay *overlay, u32 tilesetNum, u32 baseTileNum) {
    void *tilesetBase = BG_TILESET_BASE((tilesetNum * 0x4000) + (baseTileNum * 0x20));

    return game_select_start_new_icon_animator(get_current_mem_id(), overlay->texture, tilesetBase, overlay->width * overlay->height * 0x20, overlay->animData);
}


// (https://decomp.me/scratch/WoPP9)
#include "asm/game_select/asm_08015a5c.s"


// Write Level Icon Map
void game_select_print_icon_maps(u32 baseMap, u32 mapSize, u32 tileX, u32 tileY, u32 width, u32 height, u32 tileNum, u32 palette) {
    u32 x, y, w, h, num;

    // MAP 0 - Upper-Left Corner
    if ((tileX < 0x20) && (tileY < 0x20)) {
        if ((tileX + width) > 0x20) {
            w = 0x20 - tileX;
        } else {
            w = width;
        }

        if ((tileY + height) > 0x20) {
            h = 0x20 - tileY;
        } else {
            h = height;
        }

        game_select_print_icon_map(baseMap, mapSize, tileX, tileY, w, h, width, tileNum, palette);
    }

    if (mapSize == 0) {
        return;
    }

    // MAP 1 - Upper-Right Corner
    if ((mapSize & 1) && (tileX + width > 0x20) && (tileX < 0x40) && (tileY < 0x20)) {
        x = tileX;
        num = tileNum;

        w = width;
        if (tileX < 0x20) {
            x = 0x20;
            w += tileX - 0x20;
            num += 0x20 - tileX;
        }
        if (tileX + width > 0x40) {
            w += 0x40 - (tileX + width);
        }

        if (tileY + height > 0x20) {
            h = 0x20 - tileY;
        } else {
            h = height;
        }

        game_select_print_icon_map(baseMap, mapSize, x, tileY, w, h, width, num, palette);
    }

    // MAP 2 - Lower-Left Corner
    if ((mapSize & 2) && (tileX < 0x20) && (tileY + height > 0x20) && (tileY < 0x40)) {
        y = tileY;
        num = tileNum;

        w = 0;
        if (tileX + width > 0x20) {
            w = 0x20 - tileX;
        } else {
            w = width;
        }

        h = height;
        if (tileY < 0x20) {
            y = 0x20;
            h += tileY - 0x20;
            num += width * (0x20 - tileY);
        }
        if (tileY + height > 0x40) {
            h += 0x40 - (tileY + height);
        }

        game_select_print_icon_map(baseMap, mapSize, tileX, y, w, h, width, num, palette);
    }

    // MAP 3 - Lower-Right Corner
    if ((mapSize == 3) && (tileX + width > 0x20) && (tileX < 0x40) && (tileY + height > 0x20) && (tileY < 0x40)) {
        x = tileX;
        y = tileY;
        num = tileNum;

        w = width;
        if (tileX < 0x20) {
            x = 0x20;
            w += tileX - 0x20;
            num += 0x20 - tileX;
        }
        if (tileX + width > 0x40) {
            w += 0x40 - (tileX + width);
        }

        h = height;
        if (tileY < 0x20) {
            y = 0x20;
            h += tileY - 0x20;
            num += width * (0x20 - tileY);
        }
        if (tileY + height > 0x40) {
            h += 0x40 - (tileY + height);
        }

        game_select_print_icon_map(baseMap, mapSize, x, y, w, h, width, num, palette);
    }
}


// Write Level Icon Texture to VRAM
void game_select_print_icon_texture(const void *texture, u32 tileset, u32 tileNum) {
    dma3_set(texture, BG_TILESET_BASE((tileset * 0x4000) + (tileNum * 0x20)), 0x20 * 3 * 3, 0x20, 0x200);
}


// Initialise BG Squares
void func_08015cf4(void) {
    struct Vector2 *vector;
    s32 x, y;
    u32 i;
    s8 temp;

    x = 544;
    y = 384;

    for (i = 0; i < 16; i++) {
        vector = &gGameSelectInfo->squareVectors[i];
        vector->x = agb_random(x);
        vector->y = agb_random(y);
        gGameSelectInfo->squareSprites[i] = func_0804d294(D_03005380, anim_game_select_bg_square_large, agb_random(6), 0, 0, 0xc800, -1, 0x7f, 0, 4);
        func_0804dcb8(D_03005380, gGameSelectInfo->squareSprites[i], agb_random(INT_TO_FIXED(1.0)) + INT_TO_FIXED(1.0));
    }

    x *= 2;
    y *= 2;

    for (i = 16; i < 50; i++) {
        vector = &gGameSelectInfo->squareVectors[i];
        vector->x = agb_random(x);
        vector->y = agb_random(y);
        gGameSelectInfo->squareSprites[i] = func_0804d294(D_03005380, anim_game_select_bg_square_small, agb_random(6), 0, 0, 0xc800, -1, 0x7f, 0, 4);
        func_0804dcb8(D_03005380, gGameSelectInfo->squareSprites[i], agb_random(INT_TO_FIXED(1.0)) + INT_TO_FIXED(1.0));
    }

    D_03004b10.BLDMOD = (BLDMOD_BG0_TGT | BLDMOD_BG1_TGT | BLDMOD_BG2_TGT | BLDMOD_BG3_TGT | BLDMOD_BACKDROP_TGT);
    D_03004b10.COLEV = (COLEV_SRC_PIXEL(0x10) | COLEV_TGT_PIXEL(0x10));

    for (i = 0; i < 10; i++) {
        gGameSelectInfo->unk198[i].unk0 = 0;
    }
}


#include "asm/game_select/asm_08015ea4.s"

#include "asm/game_select/asm_0801616c.s"

#include "asm/game_select/asm_0801626c.s"

#include "asm/game_select/asm_08016290.s"

#include "asm/game_select/asm_080162bc.s"

#include "asm/game_select/asm_080162c8.s"
