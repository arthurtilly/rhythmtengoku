#include "global.h"
#include "scenes/game_select.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/memory_heap.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "scenes/reading.h"
#include "scenes/studio.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

// For readability.
#define gGameSelectInfo ((struct GameSelectSceneInfo *)D_030046a4)

static u8 D_0300131c; // If set, play "Game Select 2" music
static u8 D_0300131d; // unused
static u8 D_0300131e; // unused
static u8 D_0300131f; // unused
static s8 D_03001320; // ?
static s32 D_03001324; // ?

extern const struct Scene D_089d77e4; // Results (Level-Type)
extern const struct Scene D_089d7c18; // Results (Epilogue..?)
extern const struct Scene D_089d7964; // Results (Score-Type)
extern const struct Scene D_089cdf08; // Game Select


/* GAME SELECT */


// Clear D_0300131c
void func_080127fc(void) {
    D_0300131c = FALSE;
}


// Set D_0300131c
void func_08012808(void) {
    D_0300131c = TRUE;
}


// Play Game Select Music
void func_08012814(void) {
    if (D_0300131c) {
        set_beatscript_tempo(105); // Set Tempo
        scene_set_music(&s_shibafu2_bgm_seqData); // Play Music
        D_0300131c = FALSE;
    } else {
        set_beatscript_tempo(152); // Set Tempo
        scene_set_music(&s_menu_bgm_seqData); // Play Music
    }
}


// "Clear" D_03001320 (set to -1)
void func_08012850(void) {
    D_03001320 = -1;
}


// Set D_03001320
void func_08012860(s32 arg) {
    D_03001320 = arg;
}


// Get D_03001320
s32 func_0801286c(void) {
    return D_03001320;
}


#include "asm/game_select/asm_0801287c.s"

#include "asm/game_select/asm_080128b8.s"


// ?
void func_08012928(void) {
    struct GameSelectSceneInfo *sceneInfo;
    u32 playsUntilNewCampaign;

    sceneInfo = gGameSelectInfo;
    func_080128b8();
    if (sceneInfo->unk453 == 0) return;

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
    D_030046a8->data.perfectCampaignID = sceneInfo->unk454[agb_random(sceneInfo->unk453)];
    D_030046a8->data.unk26A = 0;
    D_030046a8->data.unk291 = 0;
}


// ?
void func_080129e8(void) {
    struct PerfectCampaignNotice *notice = &gGameSelectInfo->perfectCampaignNotice;

    if (D_030046a8->data.playsUntilNextPerfectCampaign != 0)
        return;

    D_030046a8->data.unk266 = 2;
    notice->id = D_030046a8->data.perfectCampaignID;
    notice->x = D_089cdf24[notice->id].x;
    notice->y = D_089cdf24[notice->id].y;
    notice->unk0 = 1;
}


// Initialise Perfect Campaign Notice
void func_08012a58(void) {
    struct PerfectCampaignNotice *notice;
    struct Vector2 *vector;

    notice = &gGameSelectInfo->perfectCampaignNotice;
    vector = &D_03004b10.BG_OFS[BG_LAYER_1];

    notice->perfectBorderSprite = func_0804d160(D_03005380, anim_game_select_border_perfect3, 0, 48, 72, 0x8878, 1, 0, 0x8000);
    func_080140f8(notice->perfectBorderSprite);
    notice->aButtonSprite = func_0804d160(D_03005380, anim_game_select_text_button, 0, 64, 64, 0x800, 1, 0, 0x8000);
    func_0804db44(D_03005380, notice->aButtonSprite, &vector->x, &vector->y);
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
                notice->x = D_089cdf24[notice->id].x;
                notice->y = D_089cdf24[notice->id].y;
                func_08012fcc(notice->x, notice->y);
            } else {
                D_030046a8->data.unk266 = 0;
                func_08012928();
                if (D_030046a8->data.unk266 == 1) {
                    func_080129e8();
                }
                break;
            }
    }
    func_08012850();
}


// Get Perfect Campaign Reward Text
const char *func_08012c24(s32 id, s32 shortenSongTitle) {
    u32 rewardID, rewardType;

    if (id < 0) return D_08050bcc; // ""

    rewardType = D_089cdf24[id].rewardType;
    rewardID = D_089cdf24[id].rewardID;

    switch (rewardType) {
        case PERFECT_REWARD_TYPE_MUSIC:
            if (shortenSongTitle) {
                return D_089d81b4[rewardID].shortTitle;
            } else {
                return D_089d81b4[rewardID].fullTitle;
            }

        case PERFECT_REWARD_TYPE_DRUM_KIT:
            return D_089d83d0[rewardID];

        case PERFECT_REWARD_TYPE_READING_MATERIAL:
            return D_089d7e74[rewardID].title;

        case PERFECT_REWARD_TYPE_NEW_GAME: // Reward is New Game
            return D_08050bd0; // "新ゲーム"
    }
}


// Set Perfect Campaign Notice..?
void func_08012cb4(s32 id) {
    const struct GameSelectSceneEntry *entry;
    struct PerfectCampaignNotice *notice;
    char *string;
    u32 r9;
    u32 rewardIsMusic;
    u32 rewardType, rewardID, temp;

    notice = &gGameSelectInfo->perfectCampaignNotice;
    r9 = FALSE;
    rewardIsMusic = FALSE;

    rewardType = D_089cdf24[id].rewardType;
    rewardID = D_089cdf24[id].rewardID;
    if (rewardType == PERFECT_REWARD_TYPE_MUSIC) {
        rewardIsMusic = TRUE;
        if (rewardID < 7) {
            temp = 5;
            if (rewardID >= temp) {
                rewardIsMusic = FALSE;
                r9 = TRUE;
            }
        }
    }
    notice->x = D_089cdf24[id].x;
    notice->y = D_089cdf24[id].y;

    entry = func_0801316c(notice->x, notice->y);
    string = notice->text;
    memcpy(string, D_08050bdc, 11); // "ただいま「"
    func_080081a8(string, entry->name); // "<game_name>"
    func_080081a8(string, D_08050be8); // "」でパーフェクトを達成すると"
    if (!r9) {
        func_080081a8(string, D_08050c08); // "もれなく"
    }
    func_080081a8(string, D_08050c14); // "「"
    func_080081a8(string, func_08012c24(id, FALSE)); // "<reward>"
    func_080081a8(string, D_08050c18); // "」"
    if (rewardIsMusic) {
        func_080081a8(string, D_08050c1c); // "の曲"
    }
    func_080081a8(string, D_08050c24); // "をプレゼント!!"
    text_printer_set_string(notice->printer, string);

    func_0804d770(D_03005380, gGameSelectInfo->selectionBorderSprite, FALSE);
    notice->unk8 = 10;
    notice->unkA = 60;
    scene_interpolate_music_volume(100, beats_to_ticks(0x18));
    gGameSelectInfo->unk0 = 3;
}


#include "asm/game_select/asm_08012de0.s"

#include "asm/game_select/asm_08012e24.s"


// Display Perfect Campaign Border
void func_08012fcc(s32 x, s32 y) {
    struct PerfectCampaignNotice *notice;
    s16 x2, y2;

    notice = &gGameSelectInfo->perfectCampaignNotice;
    func_0801332c(x, y, &x2, &y2);
    x2 += 47;
    y2 += 68;
    func_0804d8f8(D_03005380, notice->perfectBorderSprite, D_089ce0a4[clamp_int32(D_030046a8->data.perfectAttemptsRemaining, 1, 3) - 1], 0, 1, 0, 0);
    func_0804d5d4(D_03005380, notice->perfectBorderSprite, x2, y2);
    func_0804d770(D_03005380, notice->perfectBorderSprite, TRUE);
}


#include "asm/game_select/asm_08013068.s"

#include "asm/game_select/asm_08013090.s"

#include "asm/game_select/asm_080130b0.s"

#include "asm/game_select/asm_080130e4.s"


// Get Game Select Scene Entry ID
s32 func_08013100(u32 x, u32 y) {
    if ((x < GAME_SELECT_GRID_WIDTH) && (y < GAME_SELECT_GRID_HEIGHT)) {
        return D_089ceafc[x + (y * GAME_SELECT_GRID_WIDTH)].id;
    }
    return -1;
}


// Get Game Scene Entry
const struct GameSelectSceneEntry *func_08013130(s32 id) {
    if (id < 0) return NULL;

    return &D_089ce344[id];
}


// Get Completion State for a Game
s32 func_0801314c(s32 gameID) {
    struct TengokuSaveData *saveData = &D_030046a8->data;

    if (gameID < 0) return -1;

    return saveData->rhythmGameCompletion[gameID];
}


// Get Game Scene Entry from Grid Position
const struct GameSelectSceneEntry *func_0801316c(s32 x, s32 y) {
    return func_08013130(func_08013100(x, y));
}


// Get Completion State for a Game at Grid Position
s32 func_0801317c(s32 x, s32 y) {
    return func_0801314c(func_08013100(x, y));
}


// Set X/Y from Game Select Grid Data
void func_0801318c(s32 id, s32 *x, s32 *y) {
    u32 i, j;

    if (id < 0) {
        *x = -1;
        *y = -1;
        return;
    }

    for (i = 0; i < GAME_SELECT_GRID_HEIGHT; i++) {
        for (j = 0; j < GAME_SELECT_GRID_WIDTH; j++) {
            if (D_089ceafc[j + (i * GAME_SELECT_GRID_WIDTH)].id == id) {
                *x = j;
                *y = i;
                return;
            }
        }
    }
}


#include "asm/game_select/asm_080131e8.s"


// calculate something
void func_0801332c(s32 inputX, s32 inputY, s16 *outputX, s16 *outputY) {
    *outputX = (inputX * 40) - 39;
    *outputY = (inputY * 24) - 36;
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

#include "asm/game_select/asm_0801350c.s"


// [func_08013530] Graphics Init. 3
void func_08013530(void) {
    func_0800c604(0);
    pause_beatscript_scene(FALSE);
    func_080041d0((u8) -2, (u8) -1, 0);
    func_0800425c(0x10, 0x90);
    func_080131e8();
    func_080158f4();
    gGameSelectInfo->unk8_b0 = FALSE;
}


// [func_08013570] Graphics Init. 2
void func_08013570(void) {
    s32 task;

    func_0800c604(0);
    task = func_080087b4(get_current_mem_id(), D_089cf9a8);
    run_func_after_task(task, func_08013530, 0);
}


// [func_0801359c] Graphics Init. 1
void func_0801359c(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), D_089cf948, 0x3000);
    run_func_after_task(task, func_08013570, 0);
}


// [func_080135cc] Graphics Init. 0
void func_080135cc(void) {
    func_0800856c(get_current_mem_id(), func_0801359c, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 2, 22, 0x8000);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 2, 24, 0xc001);
    scene_set_bg_layer_display(BG_LAYER_3, TRUE, 0, 0, 0, 28, 0xc002);
}


// [func_08013644] Scene Init.
void game_select_scene_start(s32 unused) {
    s16 BG_OFSX, BG_OFSY;
    s32 cursorX, cursorY;
    struct TengokuSaveData *saveData;
    s32 recentCompletionLevel, previousCompletionLevel;

    saveData = &D_030046a8->data;
    gGameSelectInfo->unk8_b0 = TRUE;
    func_08007324(FALSE);
    func_080073f0();
    func_080135cc(); // gfx init. stuff
    func_0801338c();
    func_080158f0();
    gGameSelectInfo->cursorX = D_030046a8->data.gameSelectCursorX;
    gGameSelectInfo->cursorY = D_030046a8->data.gameSelectCursorY;
    func_0801332c(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY, &BG_OFSX, &BG_OFSY);
    scene_set_bg_layer_pos(BG_LAYER_3, BG_OFSX, BG_OFSY);
    scene_set_bg_layer_pos(BG_LAYER_2, BG_OFSX, BG_OFSY);
    gGameSelectInfo->selectionBorderSprite = func_0804d160(D_03005380, anim_game_select_border_target, 0, 48, 72, 0x4800, 1, 0, 0);
    gGameSelectInfo->cursorSprite = func_0804d160(D_03005380, anim_game_select_cursor, 0, 64, 64, 0x47ff, 1, 0, 0);
    func_080140f8(gGameSelectInfo->selectionBorderSprite);
    func_080140f8(gGameSelectInfo->cursorSprite);
    func_08013b98(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);
    gGameSelectInfo->unk4E = 0;
    gGameSelectInfo->unk50 = gGameSelectInfo->unk54 = BG_OFSX;
    gGameSelectInfo->unk52 = gGameSelectInfo->unk56 = BG_OFSY;
    gGameSelectInfo->unk5C = 0;
    gGameSelectInfo->unk62 = 0;
    gGameSelectInfo->unk5E = 0;
    gGameSelectInfo->unk64 = 0;
    gGameSelectInfo->unk60 = 0;
    gGameSelectInfo->stageTitleSprite = func_0804d160(D_03005380, anim_game_select_stage1, 0x7f, 60, 140, 0x479c, 1, 0x7f, 0);
    gGameSelectInfo->stageTitleBoxSprite = func_0804d294(D_03005380, anim_game_select_stage_box, 0, 60, 140, 0x479d, 0, 0, 0, 0);
    gGameSelectInfo->unk16 = 140;
    gGameSelectInfo->unk18 = 0;
    gGameSelectInfo->unk8_b1 = FALSE;
    gGameSelectInfo->unk1A = 0;
    func_080140a4(gGameSelectInfo->cursorX);
    func_08012a58();
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
    previousCompletionLevel = func_0801317c(cursorX, cursorY);
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
        if ((func_08013100(cursorX, cursorY) == SCENE_ENTRY_REMIX_6) && (recentCompletionLevel >= RHYTHM_GAME_STATE_CLEARED)) {
            func_08012808();
        }
    } else {
        gGameSelectInfo->unk2D8 = 0;
        gGameSelectInfo->unk2D9 = 0;
        func_08010478();
        if (gGameSelectInfo->perfectCampaignNotice.unk0 != 0) {
            func_08012cb4(D_030046a8->data.perfectCampaignID);
            gGameSelectInfo->perfectCampaignNotice.unk0 = 0;
        } else {
            gGameSelectInfo->unk0 = 2;
        }
    }
    saveData->recentGameCompletionLevel = -1;
    saveData->gameSelectUnk5 = 0;
    func_080191ac(TRUE);
    func_08013994();
    func_0801318c(SCENE_ENTRY_STAFF_CREDIT, &cursorX, &cursorY);
    if (func_0801317c(cursorX, cursorY) > 3) {
        func_08012808();
    }
    func_080006b0(&D_089d77e4, &D_089d7c18); // Results (Level), Results (Epilogue)
    func_080006b0(&D_089d7964, &D_089cdf08); // Results (Score), Game Select
    func_080006b0(&D_089d7c18, &D_089cdf08); // Results (Epilogue), Game Select
}


#include "asm/game_select/asm_08013994.s"

#include "asm/game_select/asm_080139a0.s"

#include "asm/game_select/asm_080139ac.s"

#include "asm/game_select/asm_080139b0.s"

#include "asm/game_select/asm_080139f4.s"

#include "asm/game_select/asm_08013a38.s"


// Set... something to do with the selection border sprite
void func_08013b48(void) {
    if (func_0801317c(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY) == 5) {
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

    func_0801332c(x, y, &offsetX, &offsetY);

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


// Set Current Game Scene Entry
void func_08013f9c(void) {
    s32 completionLevel;

    completionLevel = func_0801317c(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY);

    switch (completionLevel + 1) {
        case (RHYTHM_GAME_STATE_NONE + 1):
        case (RHYTHM_GAME_STATE_HIDDEN + 1):
        case (RHYTHM_GAME_STATE_CLOSED + 1):
            func_08015244(-1, RHYTHM_GAME_STATE_HIDDEN, 10);
            break;
        case (RHYTHM_GAME_STATE_AVAILABLE + 1):
        case (RHYTHM_GAME_STATE_CLEARED + 1):
        case (RHYTHM_GAME_STATE_MEDAL_OBTAINED + 1):
            func_08015244(func_08013100(gGameSelectInfo->cursorX, gGameSelectInfo->cursorY), completionLevel, 10);
            break;
    }
}


#include "asm/game_select/asm_0801401c.s"


// Set Stage Title Text
void func_080140a4(s32 x) {
    func_0804d8f8(D_03005380, gGameSelectInfo->stageTitleSprite, D_089cf9ac[x], 0, 1, 0x7f, 0);
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
                func_08012e24();
                break;
        }
        func_080134ec();
        func_0801593c();
        func_08015298();
        func_08013a38();
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
    struct RhythmGameCompletionData *data;
    s32 id;

    if (completionLevel == -1) {
        return;
    }

    id = func_0801317c(x, y);
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


// Set Current Game Scene Entry
void func_08015244(s32 gameID, s32 completionState, s32 arg2) {
    func_08014f30();
    if (gameID < 0) {
        gGameSelectInfo->unk41 = 0;
    } else {
        gGameSelectInfo->currentGameID = gameID;
        gGameSelectInfo->currentGameCompletionState = completionState;
        gGameSelectInfo->unk40 = arg2;
        gGameSelectInfo->currentGameEntry = &D_089ce344[gameID];
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
    id = func_08013100(x, y);
    previousCompletionLevel = saveData->recentGameCompletionLevel;

    if ((func_0801317c(x, y) < RHYTHM_GAME_STATE_MEDAL_OBTAINED)
     && (previousCompletionLevel == RHYTHM_GAME_STATE_MEDAL_OBTAINED)) {
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

#include "asm/game_select/asm_08015a5c.s"

#include "asm/game_select/asm_08015afc.s"

#include "asm/game_select/asm_08015ccc.s"


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
