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

static u8 sPlayAltBGM; // If set, play "Game Select 2" music
static u16 D_0300131e_padding; // unused
static s8 sCurrentCampaign; // Current Perfect Campaign ID
static u16 D_03001322_padding; // unused
static u8 D_03001324; // ?

extern u32 D_03005590; // ?
extern u32 D_030055d4; // ?

extern struct Scene D_089d77e4; // Results (Level-Type)
extern struct Scene D_089d7c18; // Results (Epilogue..?)
extern struct Scene D_089d7964; // Results (Score-Type)
extern struct Scene D_089cdf08; // Game Select


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
        if (D_030046a8->data.playsUntilNextPerfectCampaign > 0) {
            D_030046a8->data.playsUntilNextPerfectCampaign--;
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
        if (D_030046a8->data.unk236[i] == 0) {
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
    D_030046a8->data.perfectAttemptsRemaining = 3;
    D_030046a8->data.playsUntilNextPerfectCampaign = playsUntilNewCampaign;
    D_030046a8->data.perfectCampaignID = notice->unk454[agb_random(notice->unk453)];
    D_030046a8->data.unk26A = 0;
    D_030046a8->data.unk291 = 0;
}


// ?
void func_080129e8(void) {
    struct CampaignNotice *notice = &gGameSelectInfo->campaignNotice;

    if (D_030046a8->data.playsUntilNextPerfectCampaign != 0)
        return;

    D_030046a8->data.unk266 = 2;
    notice->id = D_030046a8->data.perfectCampaignID;
    notice->x = campaign_gifts_table[notice->id].x;
    notice->y = campaign_gifts_table[notice->id].y;
    notice->unk0 = 1;
}


// Initialise Perfect Campaign Notice
void init_campaign_notice(void) {
    struct CampaignNotice *notice;
    struct Vector2 *vector;

    notice = &gGameSelectInfo->campaignNotice;
    vector = &D_03004b10.BG_OFS[BG_LAYER_1];

    notice->borderSprite = func_0804d160(D_03005380, anim_game_select_border_perfect3, 0, 48, 72, 0x8878, 1, 0, 0x8000);
    func_080140f8(notice->borderSprite);
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
    notice->unk0 = 0;
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
            if ((D_030046a8->data.perfectAttemptsRemaining != 0)
             && (D_030046a8->data.unk26A < 3)
             && (D_030046a8->data.unk236[D_030046a8->data.perfectCampaignID] == 0)) {
                notice->id = D_030046a8->data.perfectCampaignID;
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
        case CAMPAIGN_GIFT_TYPE_SONG:
            if (shortenSongTitle) {
                return studio_song_table[giftID].shortTitle;
            } else {
                return studio_song_table[giftID].fullTitle;
            }

        case CAMPAIGN_GIFT_TYPE_DRUM_KIT:
            return studio_drum_kit_names[giftID];

        case CAMPAIGN_GIFT_TYPE_READING_MATERIAL:
            return reading_material_table[giftID].title;

        case CAMPAIGN_GIFT_TYPE_NEW_GAME: // Reward is New Game
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

    if (giftType == CAMPAIGN_GIFT_TYPE_SONG) {
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
    gGameSelectInfo->unk0 = 3;
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
            game_select_scroll_bg_grid(x, y, 240);
            game_select_scroll_bg_desc_box(0, 0x100, 240);
            gGameSelectInfo->unk8_b1 = TRUE;
        }
        denyInputs = TRUE;
    }

    if (gGameSelectInfo->gridIsMoving) {
        denyInputs = TRUE;
    }

    if (gGameSelectInfo->descBoxIsMoving) {
        denyInputs = TRUE;
    }

    if (text_printer_is_printing(notice->printer)) {
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
            game_select_scroll_bg_grid(x, y, 220);
            game_select_scroll_bg_desc_box(0, 0, 220);
            func_0804d770(D_03005380, notice->textAdvSprite, FALSE);
            func_0804d770(D_03005380, gGameSelectInfo->selectionBorderSprite, TRUE);
            gGameSelectInfo->unk8_b1 = FALSE;
            play_sound(&s_menu_kettei2_seqData);
            scene_interpolate_music_volume(0x100, beats_to_ticks(0x18));
            gGameSelectInfo->unk0 = 2;
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
    func_0804d8f8(D_03005380, notice->borderSprite, campaign_icon_borders[clamp_int32(D_030046a8->data.perfectAttemptsRemaining, 1, 3) - 1], 0, 1, 0, 0);
    func_0804d5d4(D_03005380, notice->borderSprite, spriteX, spriteY);
    func_0804d770(D_03005380, notice->borderSprite, TRUE);
}


#include "asm/game_select/asm_08013068.s"

#include "asm/game_select/asm_08013090.s"

#include "asm/game_select/asm_080130b0.s"

#include "asm/game_select/asm_080130e4.s"


// Get Level ID by Grid XY
s32 get_level_id_from_grid_xy(s32 x, s32 y) {
    if ((x < GAME_SELECT_GRID_WIDTH) && (y < GAME_SELECT_GRID_HEIGHT)) {
        return game_select_grid_data[x + (y * GAME_SELECT_GRID_WIDTH)].id;
    }

    return -1;
}


// Get Level Data by ID
struct LevelData *get_level_data_from_id(s32 id) {
    if (id < 0) {
        return NULL;
    }

    return &level_data_table[id];
}


// Get Level Completion State by ID
s32 get_level_state_from_id(s32 id) {
    struct TengokuSaveData *saveData = &D_030046a8->data;

    if (id < 0) {
        return -1;
    }

    return saveData->rhythmGameCompletion[id];
}


// Get Level Data by Grid XY
struct LevelData *get_level_data_from_grid_xy(s32 x, s32 y) {
    return get_level_data_from_id(get_level_id_from_grid_xy(x, y));
}


// Get Level Completion State by Grid XY
s32 get_level_state_from_grid_xy(s32 x, s32 y) {
    return get_level_state_from_id(get_level_id_from_grid_xy(x, y));
}


// Get Screen Coordinates from Level ID
void get_pixel_xy_from_level_id(s32 id, s32 *xReq, s32 *yReq) {
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
        game_select_print_icon_texture(game_select_icon_texture_table[i], 0, tileNum);
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
                levelState = saveData->rhythmGameCompletion[levelID];
                overlay = D_089cfaac[levelType][levelState];
                if (levelState != LEVEL_STATE_HIDDEN) {
                    tileNum = 1 + (levelData->icon * 3 * 3);
                    palette = D_089cf90c[levelData->icon];
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


#include "asm/game_select/asm_08013348.s"


// Initialise unk1C
void func_0801338c(void) {
    struct GameSelectUnk1C *unk1C;
    u32 i;

    for (i = 0; i < 2; i++) {
        unk1C = &gGameSelectInfo->unk1C[i];
        unk1C->unk3 = 31;
        unk1C->unk2 = 31;
        unk1C->unk1 = 31;
        unk1C->unk6 = 31;
        unk1C->unk5 = 31;
        unk1C->unk4 = 31;
        unk1C->unk0 = 0;
        unk1C->unk8 = 1;
        unk1C->unkA = (i == 0) ? 0xfe : 0xff;
    }
}


#include "asm/game_select/asm_080133cc.s"


#include "asm/game_select/asm_080134ec.s"


// Init. Static Variables
void game_select_init_static_var(void) {
    D_030055d4 = 0;
    D_03005590 = 0;
    clear_current_campaign();
    func_08013994();
    disable_game_select_2_bgm();
}


// Graphics Init. 4
void game_select_init_gfx4(void) {
    func_0800c604(0);
    pause_beatscript_scene(FALSE);
    func_080041d0(0xFE, 0xFF, 0);
    func_0800425c(0x10, 0x90);
    init_game_select_grid_gfx();
    func_080158f4();
    gGameSelectInfo->unk8_b0 = FALSE;
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
    s16 BG_OFSX, BG_OFSY;
    s32 cursorX, cursorY;
    struct TengokuSaveData *saveData;
    s32 recentCompletionLevel, previousCompletionLevel;

    saveData = &D_030046a8->data;
    gGameSelectInfo->unk8_b0 = TRUE;
    func_08007324(FALSE);
    func_080073f0();
    game_select_init_gfx1();
    func_0801338c();
    func_080158f0();
    gGameSelectInfo->cursorX = D_030046a8->data.gameSelectCursorX;
    gGameSelectInfo->cursorY = D_030046a8->data.gameSelectCursorY;
    get_pixel_xy_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY, &BG_OFSX, &BG_OFSY);
    scene_set_bg_layer_pos(BG_LAYER_3, BG_OFSX, BG_OFSY);
    scene_set_bg_layer_pos(BG_LAYER_2, BG_OFSX, BG_OFSY);
    gGameSelectInfo->selectionBorderSprite = func_0804d160(D_03005380, anim_game_select_border_target, 0, 48, 72, 0x4800, 1, 0, 0);
    gGameSelectInfo->cursorSprite = func_0804d160(D_03005380, anim_game_select_cursor, 0, 64, 64, 0x47ff, 1, 0, 0);
    func_080140f8(gGameSelectInfo->selectionBorderSprite);
    func_080140f8(gGameSelectInfo->cursorSprite);
    func_08013b98(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);
    gGameSelectInfo->gridIsMoving = FALSE;
    gGameSelectInfo->gridPrevX = gGameSelectInfo->gridNextX = BG_OFSX;
    gGameSelectInfo->gridPrevY = gGameSelectInfo->gridNextY = BG_OFSY;
    gGameSelectInfo->descBoxIsMoving = FALSE;
    gGameSelectInfo->descBoxNextX = 0;
    gGameSelectInfo->descBoxPrevX = 0;
    gGameSelectInfo->descBoxNextY = 0;
    gGameSelectInfo->descBoxPrevY = 0;
    gGameSelectInfo->stageTitleSprite = func_0804d160(D_03005380, anim_game_select_stage1, 0x7f, 60, 140, 0x479c, 1, 0x7f, 0);
    gGameSelectInfo->stageTitleBoxSprite = func_0804d294(D_03005380, anim_game_select_stage_box, 0, 60, 140, 0x479d, 0, 0, 0, 0);
    gGameSelectInfo->unk16 = 140;
    gGameSelectInfo->unk18 = 0;
    gGameSelectInfo->unk8_b1 = FALSE;
    gGameSelectInfo->unk1A = 0;
    func_080140a4(gGameSelectInfo->cursorX);
    init_campaign_notice();
    func_08014c10();
    func_08015cf4();
    gGameSelectInfo->unk4 = 0;
    func_08014df0();
    func_08013f9c();
    func_080154f0();
    gGameSelectInfo->unk2DA = 0;
    gGameSelectInfo->unk2DB = 0;
    gGameSelectInfo->unk2DC = 0;
    gGameSelectInfo->unk320 = 0;
    cursorX = saveData->gameSelectPosX;
    cursorY = saveData->gameSelectPosY;
    recentCompletionLevel = saveData->recentGameCompletionLevel;
    previousCompletionLevel = get_level_state_from_grid_xy(cursorX, cursorY);
    gGameSelectInfo->unk4F4 = 0;
    gGameSelectInfo->unk4F8 = 0;
    if (recentCompletionLevel > previousCompletionLevel) {
        func_08014938(60);
        func_080141f8(cursorX, cursorY, recentCompletionLevel);
        if (saveData->gameSelectUnk5 != 0) {
            gGameSelectInfo->unk4F4 = 1;
            gGameSelectInfo->unk4F5 = cursorX;
            gGameSelectInfo->unk4F6 = cursorY;
            gGameSelectInfo->unk4F8 = 60;
        }
        if ((get_level_id_from_grid_xy(cursorX, cursorY) == LEVEL_REMIX_6) && (recentCompletionLevel >= LEVEL_STATE_CLEARED)) {
            enable_game_select_2_bgm();
        }
    } else {
        gGameSelectInfo->unk2D8 = 0;
        gGameSelectInfo->unk2D9 = 0;
        write_game_save_data();
        if (gGameSelectInfo->campaignNotice.unk0 != 0) {
            start_campaign_notice(D_030046a8->data.perfectCampaignID);
            gGameSelectInfo->campaignNotice.unk0 = 0;
        } else {
            gGameSelectInfo->unk0 = 2;
        }
    }
    saveData->recentGameCompletionLevel = -1;
    saveData->gameSelectUnk5 = 0;
    func_080191ac(TRUE);
    func_08013994();
    get_pixel_xy_from_level_id(LEVEL_STAFF_CREDIT, &cursorX, &cursorY);
    if (get_level_state_from_grid_xy(cursorX, cursorY) > 3) {
        enable_game_select_2_bgm();
    }
    func_080006b0(&D_089d77e4, &D_089d7c18); // Results (Level), Results (Epilogue)
    func_080006b0(&D_089d7964, &D_089cdf08); // Results (Score), Game Select
    func_080006b0(&D_089d7c18, &D_089cdf08); // Results (Epilogue), Game Select
}


// Clear D_03001324
void func_08013994(void) {
    D_03001324 = 0;
}


// Get D_03001324
u32 func_080139a0(void) {
    return D_03001324;
}


// Scene Update (Paused)
void game_select_scene_paused(s32 unused) {
}


// Scroll Start - Grid
void game_select_scroll_bg_grid(s32 x, s32 y, s24_8 rate) {
    gGameSelectInfo->gridIsMoving = TRUE;
    gGameSelectInfo->gridPrevX = gGameSelectInfo->gridNextX;
    gGameSelectInfo->gridPrevY = gGameSelectInfo->gridNextY;
    gGameSelectInfo->gridNextX = x;
    gGameSelectInfo->gridNextY = y;
    gGameSelectInfo->gridMotionDecay = rate;
    gGameSelectInfo->gridMotionProgress = INT_TO_FIXED(1.0);
}


// Scroll Start - Description Box
void game_select_scroll_bg_desc_box(s32 x, s32 y, s24_8 rate) {
    gGameSelectInfo->descBoxIsMoving = TRUE;
    gGameSelectInfo->descBoxPrevX = gGameSelectInfo->descBoxNextX;
    gGameSelectInfo->descBoxPrevY = gGameSelectInfo->descBoxNextY;
    gGameSelectInfo->descBoxNextX = x;
    gGameSelectInfo->descBoxNextY = y;
    gGameSelectInfo->descBoxMotionDecay = rate;
    gGameSelectInfo->descBoxMotionProgress = INT_TO_FIXED(1.0);
}


// Update Screen Scroll
void game_select_update_bg_scroll(void) {
    s24_8 x, y;

    if (gGameSelectInfo->gridIsMoving) {
        gGameSelectInfo->gridMotionProgress = FIXED_POINT_MUL(gGameSelectInfo->gridMotionProgress, gGameSelectInfo->gridMotionDecay);
        x = func_08008f04(gGameSelectInfo->gridNextX, gGameSelectInfo->gridPrevX, gGameSelectInfo->gridMotionProgress, INT_TO_FIXED(1.0));
        y = func_08008f04(gGameSelectInfo->gridNextY, gGameSelectInfo->gridPrevY, gGameSelectInfo->gridMotionProgress, INT_TO_FIXED(1.0));
        scene_set_bg_layer_pos(BG_LAYER_3, x, y);
        scene_set_bg_layer_pos(BG_LAYER_2, x, y);
        if (gGameSelectInfo->gridMotionProgress == 0) {
            gGameSelectInfo->gridIsMoving = FALSE;
        }
    }
    if (gGameSelectInfo->descBoxIsMoving) {
        gGameSelectInfo->descBoxMotionProgress = FIXED_POINT_MUL(gGameSelectInfo->descBoxMotionProgress, gGameSelectInfo->descBoxMotionDecay);
        x = func_08008f04(gGameSelectInfo->descBoxNextX, gGameSelectInfo->descBoxPrevX, gGameSelectInfo->descBoxMotionProgress, INT_TO_FIXED(1.0));
        y = func_08008f04(gGameSelectInfo->descBoxNextY, gGameSelectInfo->descBoxPrevY, gGameSelectInfo->descBoxMotionProgress, INT_TO_FIXED(1.0));
        scene_set_bg_layer_pos(BG_LAYER_1, x, y);
        if (gGameSelectInfo->descBoxMotionProgress == 0) {
            gGameSelectInfo->descBoxIsMoving = FALSE;
        }
    }
}


// Set... something to do with the selection border sprite
void func_08013b48(void) {
    if (get_level_state_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY) == 5) {
        func_0804d67c(D_03005380, gGameSelectInfo->selectionBorderSprite, 0x8800);
    } else {
        func_0804d67c(D_03005380, gGameSelectInfo->selectionBorderSprite, 0x4800);
    }
}


// Set Position for Cursor and Selection Border
void func_08013b98(s32 x, s32 y) {
    s16 offsetX;
    s16 offsetY;

    gGameSelectInfo->cursorX = x;
    gGameSelectInfo->cursorY = y;

    get_pixel_xy_from_grid_xy(x, y, &offsetX, &offsetY);

    offsetX += 47; // x coordinate of top left of menu
    offsetY += 68; // y coordinate of top left of menu

    func_0804d5d4(D_03005380, gGameSelectInfo->selectionBorderSprite, offsetX, offsetY);
    func_0804d5d4(D_03005380, gGameSelectInfo->cursorSprite, offsetX, offsetY);
    func_08013b48();
}


#include "asm/game_select/asm_08013c04.s"

#include "asm/game_select/asm_08013c64.s"

#include "asm/game_select/asm_08013d18.s"

#include "asm/game_select/asm_08013d1c.s"

#include "asm/game_select/asm_08013d20.s"


// Set Current Level
void func_08013f9c(void) {
    s32 levelState = get_level_state_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);

    switch (levelState) {
        case (LEVEL_STATE_NULL):
        case (LEVEL_STATE_HIDDEN):
        case (LEVEL_STATE_CLOSED):
            game_select_set_current_level(-1, LEVEL_STATE_HIDDEN, 10);
            break;

        case (LEVEL_STATE_AVAILABLE):
        case (LEVEL_STATE_CLEARED):
        case (LEVEL_STATE_MEDAL_OBTAINED):
            game_select_set_current_level(get_level_id_from_grid_xy(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY), levelState, 10);
            break;
    }
}


#include "asm/game_select/asm_0801401c.s"


// Set Stage Title Text
void func_080140a4(s32 x) {
    func_0804d8f8(D_03005380, gGameSelectInfo->stageTitleSprite, game_select_column_title_anim[x], 0, 1, 0x7f, 0);
    gGameSelectInfo->unk1A = 100;
}


#include "asm/game_select/asm_080140ec.s"


// Link Sprite Position to BG
void func_080140f8(s16 sprite) {
    func_0804db44(D_03005380, sprite, &D_03004b10.BG_OFS[BG_LAYER_3].x, &D_03004b10.BG_OFS[BG_LAYER_3].y);
}


// [func_08014118] Scene Main
void game_select_scene_update(s32 unused) {
    s16 BG_OFSX, BG_OFSY;

    if (!gGameSelectInfo->unk8_b0) {
        BG_OFSX = D_03004b10.BG_OFS[BG_LAYER_3].x;
        BG_OFSY = D_03004b10.BG_OFS[BG_LAYER_3].y;
        switch (gGameSelectInfo->unk0) {
            case 1:
                func_08014978();
                break;
            case 2:
                func_08013d20();
                break;
            case 3: // Update Perfect Campaign Notice
                update_campaign_notice();
                break;
        }
        func_080134ec();
        func_0801593c();
        func_08015298();
        game_select_update_bg_scroll();
        func_080140ec();
        BG_OFSX -= D_03004b10.BG_OFS[BG_LAYER_3].x;
        BG_OFSY -= D_03004b10.BG_OFS[BG_LAYER_3].y;
        func_080162bc(BG_OFSX - 1, BG_OFSY);
        func_0801626c();
        func_08015660();
        func_08014db0();
    }
}


#include "asm/game_select/asm_080141a4.s"

#include "asm/game_select/asm_080141c0.s"

#include "asm/game_select/asm_080141d4.s"

#include "asm/game_select/asm_080141d8.s"


// ?
void func_080141f8(s32 x, s32 y, s32 completionLevel) {
    struct LevelStateData *data;
    s32 id;

    if (completionLevel == -1) {
        return;
    }

    id = get_level_state_from_grid_xy(x, y);
    if ((id >= 0) && (id < completionLevel)) {
        data = &gGameSelectInfo->unk2E0[gGameSelectInfo->unk2DC];
        data->x = x;
        data->y = y;
        data->completion = completionLevel;

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
    gGameSelectInfo->unk0 = 1;
}


#include "asm/game_select/asm_08014978.s"

#include "asm/game_select/asm_08014b68.s"

#include "asm/game_select/asm_08014c10.s"

#include "asm/game_select/asm_08014d40.s"

#include "asm/game_select/asm_08014db0.s"

#include "asm/game_select/asm_08014dbc.s"


// Initialise... Game Description Boxes?
void func_08014df0(void) {
    s16 *vector;

    vector = &D_03004b10.BG_OFS[BG_LAYER_1].x;
    gGameSelectInfo->unk34 = -1;
    gGameSelectInfo->unk3C = -1;
    gGameSelectInfo->unk38 = text_printer_create_new((u16) get_current_mem_id(), 4, 104, 32);
    text_printer_set_x_y(gGameSelectInfo->unk38, 128, 55);
    text_printer_set_layer(gGameSelectInfo->unk38, 0x800);
    text_printer_set_colors(gGameSelectInfo->unk38, 0);
    text_printer_set_palette(gGameSelectInfo->unk38, 8);
    text_printer_set_line_spacing(gGameSelectInfo->unk38, 14);
    text_printer_center_by_content(gGameSelectInfo->unk38, 1);
    text_printer_set_x_y_controller(gGameSelectInfo->unk38, &vector[0], &vector[1]);
    text_printer_set_shadow_colors(gGameSelectInfo->unk38, -1);
    gGameSelectInfo->perfectClearedSprite = func_0804d160(D_03005380, anim_game_select_perfect_rank, 0, 138, 115, 0x80a, 1, 0, 0x8000);
    func_0804db44(D_03005380, gGameSelectInfo->perfectClearedSprite, &vector[0], &vector[1]);
    gGameSelectInfo->unk3E = TRUE;
    gGameSelectInfo->unk41 = 0;
}


// Set... something to do with game description box sprites?
void func_08014ef8(s16 *ptr) {
    s16 sprite = *ptr;

    if (sprite < 0) return;

    text_printer_delete_anim((void *)func_0804ddb0(D_03005380, sprite, 7));
    func_0804d504(D_03005380, sprite);
    *ptr = -1;
}


// Initialise... Current Game Description Box?
void func_08014f30(void) {
    if (gGameSelectInfo->unk3E) return;

    text_printer_fill_vram_tiles(0, 24, 32, 8, 0);
    func_08014ef8(&gGameSelectInfo->unk34);
    func_08014ef8(&gGameSelectInfo->unk3C);
    text_printer_clear(gGameSelectInfo->unk38);
    func_0804d770(D_03005380, gGameSelectInfo->perfectClearedSprite, FALSE);
    gGameSelectInfo->unk3E = TRUE;
}


#include "asm/game_select/asm_08014f98.s"

#include "asm/game_select/asm_08015020.s"

#include "asm/game_select/asm_08015044.s"

#include "asm/game_select/asm_08015108.s"


// Set Current Level
void game_select_set_current_level(s32 id, s32 state, s32 arg2) {
    func_08014f30();
    if (id < 0) {
        gGameSelectInfo->unk41 = 0;
    } else {
        gGameSelectInfo->currentLevelID = id;
        gGameSelectInfo->currentLevelState = state;
        gGameSelectInfo->unk40 = arg2;
        gGameSelectInfo->currentLevelData = &level_data_table[id];
        gGameSelectInfo->unk41 = 1;
    }
}


#include "asm/game_select/asm_08015298.s"


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
        score = saveData->rhythmGameScores[i];
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


#include "asm/game_select/asm_08015338.s"


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
    u32 previousCompletionLevel;
    s8 x, y;
    s32 id;
    u32 i;

    saveData = &D_030046a8->data;
    flow = &gGameSelectInfo->flowDisplay;
    medalWasObtained = FALSE;
    newScore = saveData->recentGameScore;

    if (newScore == (u16) -1) {
        flow->previousScore = D_030046a8->data.currentFlow;
        flow->currentScore = D_030046a8->data.currentFlow;
        return 0;
    }

    x = saveData->gameSelectPosX;
    y = saveData->gameSelectPosY;
    id = get_level_id_from_grid_xy(x, y);
    previousCompletionLevel = saveData->recentGameCompletionLevel;

    if ((get_level_state_from_grid_xy(x, y) < LEVEL_STATE_MEDAL_OBTAINED)
     && (previousCompletionLevel == LEVEL_STATE_MEDAL_OBTAINED)) {
        medalWasObtained = TRUE;
    }

    if (medalWasObtained) {
        prevModifiedScoreAvg = func_080152b0(NULL, NULL);
    }

    if (id >= 0) {
        prevScore = saveData->rhythmGameScores[id];
        if (prevScore == (u16) -1) {
            prevScore = newScore;
        } else if (prevScore < newScore) {
            prevScore = (prevScore + (newScore * 3)) / 4;
        } else {
            prevScore = (((newScore + (prevScore * 3)) / 4) << 8) >> 8;
        }
        saveData->rhythmGameScores[id] = prevScore;
    }
    saveData->recentGameScore = -1;
    newModifiedScoreAvg = func_080152b0(&scoreModifier, &averageScore);

    if (medalWasObtained) {
        if (newModifiedScoreAvg < prevModifiedScoreAvg) {
            scoreIncrement = ((INT_TO_FIXED(prevModifiedScoreAvg)) / scoreModifier) - averageScore + 1;
            for (i = 0; i < 55; i++) {
                prevScore = saveData->rhythmGameScores[i];
                if (prevScore != (u16) -1) {
                    saveData->rhythmGameScores[i] = clamp_int32(prevScore + scoreIncrement, 0, 1000);
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

#include "asm/game_select/asm_080158d4.s"


void func_080158f0(void) {
}


#include "asm/game_select/asm_080158f4.s"


void func_0801593c(void) {
}


#include "asm/game_select/asm_08015940.s"

#include "asm/game_select/asm_08015988.s"

#include "asm/game_select/asm_080159f4.s"

#include "asm/game_select/asm_08015a24.s"

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
