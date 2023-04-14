#include "global.h"
#include "cafe.h"
#include "graphics/cafe/cafe_graphics.h"

#include "levels.h"
#include "src/scenes/game_select.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/time_keeper.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"


// For readability.
#define gCafeInfo ((struct CafeSceneInfo *)D_030046a4)

enum CafeDialogueTasksEnum {
    /* 00 */ CAFE_EVENT_INITIALISE_DIALOGUE,
    /* 01 */ CAFE_EVENT_START_TOPIC,
    /* 02 */ CAFE_EVENT_UNUSED_02,
    /* 03 */ CAFE_EVENT_UNUSED_03,
    /* 04 */ CAFE_EVENT_UNUSED_04,
    /* 05 */ CAFE_EVENT_UNUSED_05,
    /* 06 */ CAFE_EVENT_CAMPAIGN_CLEAR_00,
    /* 07 */ CAFE_EVENT_CAMPAIGN_CLEAR_01,
    /* 08 */ CAFE_EVENT_UNUSED_08,
    /* 09 */ CAFE_EVENT_UNUSED_09,
    /* 10 */ CAFE_EVENT_UNUSED_10,
    /* 11 */ CAFE_EVENT_OFFER_CLEAR_00,
    /* 12 */ CAFE_EVENT_OFFER_CLEAR_01,
    /* 13 */ CAFE_EVENT_OFFER_CLEAR_02_Y,
    /* 14 */ CAFE_EVENT_OFFER_CLEAR_02_N,
    /* 15 */ CAFE_EVENT_UNUSED_15,
    /* 16 */ CAFE_EVENT_UNUSED_16,
    /* 17 */ CAFE_EVENT_UNUSED_17,
    /* 18 */ CAFE_EVENT_UNUSED_18,
    /* 19 */ CAFE_EVENT_UNUSED_19,
    /* 20 */ CAFE_EVENT_UNUSED_20,
    /* 21 */ CAFE_EVENT_CAMPAIGN_ADVICE_00,
    /* 22 */ CAFE_EVENT_CAMPAIGN_ADVICE_01,
    /* 23 */ CAFE_EVENT_UNUSED_23,
    /* 24 */ CAFE_EVENT_UNUSED_24,
    /* 25 */ CAFE_EVENT_UNUSED_25,
    /* 26 */ CAFE_EVENT_UPCOMING_CAMPAIGN_00,
    /* 27 */ CAFE_EVENT_ALL_CAMPAIGNS_CLEAR_00,
    /* 28 */ CAFE_EVENT_ALL_CAMPAIGNS_CLEAR_01,
    /* 29 */ CAFE_EVENT_UNUSED_29,
    /* 30 */ CAFE_EVENT_UNUSED_30,
    /* 31 */ CAFE_EVENT_UNUSED_31,
    /* 32 */ CAFE_EVENT_CONTINUE_DIALOGUE
};

enum CafeDialogueTopicsEnum {
    /* 00 */ CAFE_TOPIC_RANDOM,
    /* 01 */ CAFE_TOPIC_CAMPAIGN_CLEAR,
    /* 02 */ CAFE_TOPIC_TROUBLE_CLEARING_LEVEL,
    /* 03 */ CAFE_TOPIC_TROUBLE_GETTING_MEDAL,
    /* 04 */ CAFE_TOPIC_TROUBLE_CLEARING_CAMPAIGN,
    /* 05 */ CAFE_TOPIC_REMEMBERING,
    /* 06 */ CAFE_TOPIC_UPCOMING_CAMPAIGN,
};

enum CafeBgEventsEnum {
    /* 00 */ CAFE_BG_EVENT_NONE,
    /* 01 */ CAFE_BG_EVENT_CHEER_01,
    /* 02 */ CAFE_BG_EVENT_HELPING,
    /* 03 */ CAFE_BG_EVENT_CHEER_02,
};

enum CafeOptionResultsEnum {
    /* 00 */ CAFE_OPTION_YES,
    /* 01 */ CAFE_OPTION_NO
};

extern struct SequenceData s_f_cafe_send_mes_seqData;


/* CAFE */


// Set Level Session Play Time
void cafe_init_level_session_playtime(struct LevelPlayActivity *activity) {
    activity->timeOfLastPlay = get_total_playtime(T_MINUTE);
    activity->activeTimeOfLastPlay = get_active_playtime(T_MINUTE);
}


// Init. Level Session
void cafe_init_level_session(struct LevelPlayActivity *activity, s32 levelID) {
    activity->levelID = levelID;
    activity->totalStalePlays = 0;
    activity->justGotPerfect = FALSE;
    cafe_init_level_session_playtime(activity);
}


// Allocate Level Session
struct LevelPlayActivity *cafe_alloc_level_session(s32 levelID) {
    struct LevelPlayActivity *current = gSessionInfo.lastPlayedLevels;
    struct LevelPlayActivity *free = NULL;
    struct LevelPlayActivity *oldest = current;
    s32 i;

    for (i = 0; i < 5; i++, current++) {
        if (current->levelID == levelID) {
            return current;
        }
        if (current->levelID == (u8)LEVEL_NULL) {
            free = current;
        }
        if (current->timeOfLastPlay <= oldest->timeOfLastPlay) {
            oldest = current;
        }
    }

    if (free != NULL) {
        cafe_init_level_session(free, levelID);
        return free;
    } else {
        cafe_init_level_session(oldest, levelID);
        return oldest;
    }
}


// Get Level Session
struct LevelPlayActivity *cafe_get_level_session(s32 levelID) {
    struct LevelPlayActivity *activity = gSessionInfo.lastPlayedLevels;
    s32 i;

    for (i = 0; i < 5; i++, activity++) {
        if (activity->levelID == levelID) {
            return activity;
        }
    }

    return NULL;
}


// Init. Play Session Info
void cafe_init_session_info(void) {
    u32 i;

    for (i = 0; i < 5; i++) {
        gSessionInfo.lastPlayedLevels[i].levelID = LEVEL_NULL;
    }

    gSessionInfo.unused = 0;
    gSessionInfo.currentFlow = D_030046a8->data.currentFlow;
    gSessionInfo.totalMedals = D_030046a8->data.totalMedals;
    gSessionInfo.timeOfLastCafeVisit = 0;
}


// Add Level to Play Session Info
void cafe_add_level_to_session(s32 levelID) {
    struct LevelPlayActivity *activity;

    if (levelID < 0) {
        return;
    }

    activity = cafe_alloc_level_session(levelID);

    if (!activity->justGotPerfect) {
        if (activity->totalStalePlays < 255) {
            activity->totalStalePlays++;
        }
        cafe_init_level_session_playtime(activity);
    }
}


// Remove Level from Play Session Info
void cafe_remove_level_from_session(s32 levelID) {
    struct LevelPlayActivity *activity;

    if (levelID < 0) {
        return;
    }

    activity = cafe_get_level_session(levelID);

    if (activity == NULL) {
        return;
    }

    if (!activity->justGotPerfect) {
        activity->levelID = LEVEL_NULL;
    }
}


// Add Level with Perfect Just Cleared to Session Info
void cafe_add_perfect_level_to_session(s32 levelID) {
    struct LevelPlayActivity *activity;

    if (levelID < 0) {
        return;
    }

    activity = cafe_alloc_level_session(levelID);
    activity->justGotPerfect = TRUE;
    activity->totalStalePlays = 0;
    cafe_init_level_session_playtime(activity);
}


// Remove Very Old Level Play Activity Sessions
void cafe_remove_old_levels_from_session(u32 totalPlayTime, u32 inactivityThreshold) {
    u32 i;

    for (i = 0; i < 5; i++) {
        if (gSessionInfo.lastPlayedLevels[i].levelID == (u8)LEVEL_NULL) {
            continue;
        }
        if (totalPlayTime - gSessionInfo.lastPlayedLevels[i].timeOfLastPlay > inactivityThreshold) {
            gSessionInfo.lastPlayedLevels[i].levelID = LEVEL_NULL;
        }
    }
}


// Init. Level Play Activity Indexes
void cafe_init_session_indexes(void) {
    struct LevelPlayActivity *levelSessions = gSessionInfo.lastPlayedLevels;
    u8 *indexes = gCafeInfo->sessionIndexes;
    s32 total = 0;
    s32 older, newer;
    s32 i, j;

    for (i = 0; i < 5; i++) {
        if (levelSessions[i].levelID != (u8)LEVEL_NULL) {
            indexes[total] = i;
            total++;
        }
    }

    gCafeInfo->totalLevelsThisSession = total;

    for (i = 0; i < (total - 1); i++) {
        for (j = (i + 1); j < total; j++) {
            if (levelSessions[indexes[i]].timeOfLastPlay < levelSessions[indexes[j]].timeOfLastPlay) {
                older = indexes[i];
                newer = indexes[j];
                indexes[i] = newer;
                indexes[j] = older;
            }
        }
    }
}


// Init. Session Play Time
void cafe_init_session_playtime(void) {
    s32 playtime = get_total_playtime(T_MINUTE);

    gCafeInfo->timeSinceLastVisit = playtime - gSessionInfo.timeOfLastCafeVisit;
    gSessionInfo.timeOfLastCafeVisit = playtime;
    gCafeInfo->totalPlayTime = playtime;
    gCafeInfo->totalActivePlayTime = get_active_playtime(T_MINUTE);
}


// Remove Level Play Activity with Perfect
void cafe_remove_perfect_level_sessions(void) {
    u32 i;

    for (i = 0; i < 5; i++) {
        if (gSessionInfo.lastPlayedLevels[i].justGotPerfect) {
            gSessionInfo.lastPlayedLevels[i].levelID = LEVEL_NULL;
        }
    }
}


// Init. Dialogue Text
void cafe_init_dialogue(void) {
    gCafeInfo->nextDialogueTask = CAFE_EVENT_INITIALISE_DIALOGUE;
    gCafeInfo->textAdvReady = FALSE;
}


// Start Text Advance Options (Script Function)
void cafe_start_dialogue_inputs(void) {
    struct Animation *anim;
    s16 x, y;

    if (gCafeInfo->disableTextUpdates) {
        return;
    }

    text_printer_get_x_y(gCafeInfo->printer, &x, &y);
    func_0804d5d4(D_03005380, gCafeInfo->textAdvIcon, x, y);
    func_0804d770(D_03005380, gCafeInfo->textAdvIcon, TRUE);

    if (gCafeInfo->queryEnabled) {
        anim = cafe_cursor_option_anim[gCafeInfo->queryResult];
    } else {
        anim = anim_cafe_text_adv_icon;
    }

    func_0804d8f8(D_03005380, gCafeInfo->textAdvIcon, anim, 0, 1, 0, 0);
    gCafeInfo->textAdvReady = TRUE;
    set_pause_beatscript_scene(TRUE);
}


// Update Text Advance Options
void cafe_update_dialogue_inputs(void) {
    if (!cafe_scene_script_is_ready() || !gCafeInfo->textAdvReady) {
        return;
    }

    if (gCafeInfo->queryEnabled) {
        s8 choice = gCafeInfo->queryResult;

        if (D_03004afc & DPAD_UP) {
            gCafeInfo->queryResult--;
        }
        if (D_03004afc & DPAD_DOWN) {
            gCafeInfo->queryResult++;
        }
        gCafeInfo->queryResult = clamp_int32(gCafeInfo->queryResult, CAFE_OPTION_YES, CAFE_OPTION_NO);

        if (choice != gCafeInfo->queryResult) {
            func_0804d8f8(D_03005380, gCafeInfo->textAdvIcon, cafe_cursor_option_anim[gCafeInfo->queryResult], 0, 1, 0, 0);
        }
    }

    if (D_03004afc & A_BUTTON) {
        text_printer_set_string(gCafeInfo->printer, NULL);
        func_0804d770(D_03005380, gCafeInfo->textAdvIcon, FALSE);
        play_sound(&s_f_cafe_send_mes_seqData);
        gCafeInfo->textAdvReady = FALSE;
        set_pause_beatscript_scene(FALSE);
    }
}


// Check if Barista Can Clear Level
u32 barista_can_clear_level(s32 levelID) {
    u8 *deniedLevels;

    for (deniedLevels = cafe_barista_denied_levels; *deniedLevels != (u8)LEVEL_NULL; deniedLevels++) {
        if (levelID == *deniedLevels) {
            return FALSE;
        }
    }

    return TRUE;
}


// Start of Loop (Script Function)
void cafe_print_dialogue(void) {
    struct LevelPlayActivity *activity;
    const char **dialogue;
    const char *string;
    const char *levelName;
    char *s;
    u32 playtime;
    u32 topic;
    u32 i;
    s32 x, y;
    u32 dialogueTask = gCafeInfo->nextDialogueTask;
    u8 dialogueExhausted = FALSE;

    if (gCafeInfo->disableTextUpdates) {
        return;
    }

    gCafeInfo->bgEvent = CAFE_BG_EVENT_NONE;
    gCafeInfo->textAdvHold = 0;
    gCafeInfo->queryEnabled = FALSE;
    string = NULL;
    dialogue = NULL;

    switch (dialogueTask) {
        case CAFE_EVENT_INITIALISE_DIALOGUE:
            if (D_030046a8->data.unk28F) {
                D_030046a8->data.unk28F = FALSE;
                dialogue = cafe_dialogue_first_visit;
                break;
            }
            if (D_030046a8->data.unk294[9]) {
                // Oh! You're here, you're here!
                // I've been waiting, you know!!
                string = "\n"
                         "お、きたきた！\n"
                         "待ってたヨ～！！\n"
                         "\n";
                cafe_remove_perfect_level_sessions();
                D_030046a8->data.unk294[9] = FALSE;
                dialogueTask = CAFE_EVENT_ALL_CAMPAIGNS_CLEAR_00;
                break;
            }
            if (gCafeInfo->timeSinceLastVisit == 0) {
                dialogue = cafe_dialogue_come_back_later;
                break;
            }

            playtime = gCafeInfo->totalPlayTime;
            if (playtime <= 20) {
                // Are you making progress?
                // Please do your best!
                string = "\n"
                         "ゲーム　すすんでますか？\n"
                         "がんばって　くださいね～。\n"
                         "\n";
            } else if (playtime <= 60) {
                // Aren't you getting tired?
                // Don't forget to rest now and then.
                string = "\n"
                         "だいぶ　つかれたのでは　ないですか？\n"
                         "ときどき　休んだほうが　よいですよ。\n"
                         "\n";
            } else {
                // You've been at this a while,
                // haven't you? Please rest a little.
                string = "\n"
                         "かなり　はまってますねぇ。\n"
                         "すこしは　休んでくださいね。\n"
                         "\n";
            }
            dialogueTask = CAFE_EVENT_START_TOPIC;
            break;

        case CAFE_EVENT_START_TOPIC:
            topic = CAFE_TOPIC_RANDOM;
            i = 0;

            while ((topic == CAFE_TOPIC_RANDOM) && (i < gCafeInfo->totalLevelsThisSession)) {
                activity = &gSessionInfo.lastPlayedLevels[gCafeInfo->sessionIndexes[i]];

                if (activity->justGotPerfect) {
                    topic = CAFE_TOPIC_CAMPAIGN_CLEAR;
                    continue;
                }

                switch (D_030046a8->data.levelStates[activity->levelID]) {
                    case LEVEL_STATE_OPEN:
                        if ((activity->totalStalePlays >= D_030046a8->data.minFailsForBaristaHelp)
                          && barista_can_clear_level(activity->levelID)) {
                            topic = CAFE_TOPIC_TROUBLE_CLEARING_LEVEL;
                        }
                        break;

                    case LEVEL_STATE_CLEARED:
                        if (activity->totalStalePlays > 2) {
                            topic = CAFE_TOPIC_TROUBLE_GETTING_MEDAL;
                        }
                        break;

                    case LEVEL_STATE_HAS_MEDAL:
                        if ((D_030046a8->data.totalPerfects < TOTAL_PERFECT_CAMPAIGNS)
                          && !D_030046a8->data.campaignsCleared[get_campaign_from_level_id(activity->levelID)]
                          && (activity->totalStalePlays > 2)) {
                            topic = CAFE_TOPIC_TROUBLE_CLEARING_CAMPAIGN;
                        }
                        break;
                }

                i++;
            }

            if (topic != CAFE_TOPIC_RANDOM) {
                if ((gCafeInfo->totalPlayTime - activity->timeOfLastPlay) > 20) {
                    topic = CAFE_TOPIC_REMEMBERING;
                }
                levelName = game_select_get_level_name(activity->levelID);
            } else {
                if ((D_030046a8->data.campaignState == CAMPAIGN_STATE_AVAILABLE)
                  && (D_030046a8->data.playsUntilNextCampaign < 3)
                  && !D_030046a8->data.unk291) {
                    levelName = get_level_name_from_campaign(D_030046a8->data.currentCampaign);
                    topic = CAFE_TOPIC_UPCOMING_CAMPAIGN;
                }
            }

            switch (topic) {
                case CAFE_TOPIC_CAMPAIGN_CLEAR:
                    // Was that you on [...]?
                    // I heard you just got a Perfect!?
                    s = gCafeInfo->string;
                    memcpy(s, "", 1);
                    strcat(s, "\n");
                    strcat(s, "そうそう、");
                    strcat(s, "\0051" "\0015");
                    strcat(s, levelName);
                    strcat(s, "\0054" "\0018" "で\n");
                    strcat(s, "パーフェクト　だしたんだって！？");
                    string = s;
                    activity->levelID = LEVEL_NULL;
                    dialogueTask = CAFE_EVENT_CAMPAIGN_CLEAR_00;
                    break;

                case CAFE_TOPIC_TROUBLE_CLEARING_LEVEL:
                    // You're still on [...].
                    // Are you having trouble?
                    s = gCafeInfo->string;
                    memcpy(s, "", 1);
                    strcat(s, "\n");
                    strcat(s, "そういえば、");
                    strcat(s, "\0051" "\0015");
                    strcat(s, levelName);
                    strcat(s, "\0054" "\0018" "で\n");
                    strcat(s, "行きづまってませんか？\n" "\n");
                    string = s;
                    gCafeInfo->levelToClear = activity->levelID;
                    activity->levelID = LEVEL_NULL;
                    dialogueTask = CAFE_EVENT_OFFER_CLEAR_00;
                    break;

                case CAFE_TOPIC_TROUBLE_GETTING_MEDAL:
                    // Hmm... is [...] giving you trouble earning that medal?
                    s = gCafeInfo->string;
                    memcpy(s, "", 1);
                    strcat(s, "\n");
                    strcat(s, "う～む…　");
                    strcat(s, "\0051" "\0015");
                    strcat(s, levelName);
                    strcat(s, "\0054" "\0018" "に\n");
                    strcat(s, "てこずってるんですねぇ。\n" "\n");
                    string = s;
                    dialogue = cafe_dialogue_keep_trying;
                    activity->levelID = LEVEL_NULL;
                    break;

                case CAFE_TOPIC_TROUBLE_CLEARING_CAMPAIGN:
                    // Rumor has it [...] was doing a perfect campaign.
                    // Weren't you playing it just now?
                    s = gCafeInfo->string;
                    memcpy(s, "", 1);
                    strcat(s, "\n");
                    strcat(s, "ウワサを　きいたんですけど、\n");
                    strcat(s, "\0051" "\0015");
                    strcat(s, levelName);
                    strcat(s, "\0054" "\0018" "　ばかり\n");
                    strcat(s, "してるみたいですね。");
                    string = s;
                    activity->levelID = LEVEL_NULL;
                    dialogueTask = CAFE_EVENT_CAMPAIGN_ADVICE_00;
                    break;

                case CAFE_TOPIC_REMEMBERING:
                    activity->timeOfLastPlay = gCafeInfo->totalPlayTime;
                    // Ah! Wait, I remember!
                    string = "\n"
                             "\n"
                             "あ、　ちょっと　思い出しました！\n"
                             "\n";
                    break;

                case CAFE_TOPIC_UPCOMING_CAMPAIGN:
                    // Hey, here's a tip! Soon [...] is going to be having a perfect campaign.
                    s = gCafeInfo->string;
                    memcpy(s, "", 1);
                    strcat(s, "そうそう、\n"
                              "もうすぐ");
                    strcat(s, "\0051" "\0015");
                    strcat(s, levelName);
                    strcat(s, "\0054" "\0018" "で、\n"
                              "パーフェクトキャンペーンを\n"
                              "するそうですヨ。");
                    string = s;
                    dialogueTask = CAFE_EVENT_UPCOMING_CAMPAIGN_00;
                    D_030046a8->data.unk291 = TRUE;
                    break;

                default:
                    dialogue = cafe_random_conversation_pool[agb_random(10)];
                    break;
            }
            break;

        case CAFE_EVENT_CAMPAIGN_CLEAR_00:
            string = cafe_dialogue_shouts_praise[agb_random(5)];
            gCafeInfo->bgEvent = CAFE_BG_EVENT_CHEER_01;
            gCafeInfo->textAdvHold = 4;
            dialogueTask++;
            break;

        case CAFE_EVENT_CAMPAIGN_CLEAR_01:
            // Please keep on working hard.
            // I'll be here rooting for you~!
            string = "\n"
                     "これからも　がんばってね。\n"
                     "おうえん　してるからね～！\n"
                     "\n";
            dialogueExhausted = TRUE;
            break;

        case CAFE_EVENT_OFFER_CLEAR_00:
            // If you like, I could let you
            // <skip that game> if you want to...
            //
            // "Please skip it."
            // "No, thank you."
            string = "う～ん、もし　よければ　なんだけどね、\n"
                     "\0051" "\0015" "進めるようにしておく" "\0054" "\0018" "けど…？\n"
                     "\n"
                     "　　　　　　　　「おねがいします」\n"
                     "　　　　　　　　「けっこうです」";
            gCafeInfo->queryEnabled = TRUE;
            gCafeInfo->queryResult = CAFE_OPTION_YES;
            dialogueTask++;
            break;

        case CAFE_EVENT_OFFER_CLEAR_01:
            if (gCafeInfo->queryResult == CAFE_OPTION_YES) {
                // <Leave it to me!>
                string = "\n"
                         "\n"
                         "\0032" "\001l" "\0051" "\0015" "まかせとき！" "\0030" "\001s" "\0054" "\0018";
                gCafeInfo->textAdvHold = 3;
                gCafeInfo->bgEvent = CAFE_BG_EVENT_HELPING;
                dialogueTask = CAFE_EVENT_OFFER_CLEAR_02_Y;
                get_grid_xy_from_level_id(gCafeInfo->levelToClear, &x, &y);
                D_030046a8->data.recentLevelX = x;
                D_030046a8->data.recentLevelY = y;
                D_030046a8->data.recentLevelState = LEVEL_STATE_CLEARED;
                D_030046a8->data.recentLevelClearedByBarista = TRUE;
                D_030046a8->data.minFailsForBaristaHelp = clamp_int32(D_030046a8->data.minFailsForBaristaHelp + 1, 2, 7);
                write_game_save_data();
            } else {
                // Oh, is that so?
                // You're determined to beat
                // it with your own strength.
                // Excellent!
                string = "そうですか。\n"
                         "じぶんの　チカラで\n"
                         "がんばるんですね。\n"
                         "エライ！！";
                dialogueTask = CAFE_EVENT_OFFER_CLEAR_02_N;
            }
            break;

        case CAFE_EVENT_OFFER_CLEAR_02_Y:
            // I hope the next game will go
            // much better for you.
            // Tell me about it next time.
            string = "\n"
                     "次のゲーム　どんなのでしょうね。\n"
                     "うまくできると　いいね～。\n"
                     "ではまた。";
            dialogueExhausted = TRUE;
            break;

        case CAFE_EVENT_OFFER_CLEAR_02_N:
            // Well then, please
            // do your best!
            string = "\n"
                     "\n"
                     "では　がんばってくださいね～。\n"
                     "\n";
            dialogueExhausted = TRUE;
            break;

        case CAFE_EVENT_CAMPAIGN_ADVICE_00:
            // Were you practicing for the
            // <Perfect Campaign>?
            //
            //         "That's right."
            //         "Not right now."
            string = "\0051" "\0015" "パーフェクト　キャンペーン" "\0054" "\0018" "　に　そなえて　れんしゅうですか？\n"
                     "\n"
                     "　　　　　　　　「そうなんです」\n"
                     "　　　　　　　　「ちがいますヨ」";
            gCafeInfo->queryEnabled = TRUE;
            gCafeInfo->queryResult = CAFE_OPTION_YES;
            dialogueTask++;
            break;

        case CAFE_EVENT_CAMPAIGN_ADVICE_01:
            if (gCafeInfo->queryResult == CAFE_OPTION_YES) {
                string = cafe_dialogue_shouts_cheer[agb_random(5)];
                gCafeInfo->textAdvHold = 3;
                gCafeInfo->bgEvent = CAFE_BG_EVENT_CHEER_02;
                dialogue = cafe_dialogue_practicing_perfect;
            } else {
                dialogue = cafe_dialogue_not_practicing_perfect;
            }
            break;

        case CAFE_EVENT_UPCOMING_CAMPAIGN_00:
            // Just try your best and
            // go get that Perfect!
            string = "\n"
                     "がんばって　パーフェクト、\n"
                     "とってくださいネ！\n"
                     "\n";
            dialogueExhausted = TRUE;
            break;

        case CAFE_EVENT_ALL_CAMPAIGNS_CLEAR_00:
            // At long last...
            // You have completed
            // the Perfect Campaign!
            string = "\n"
                     "とうとう、\n"
                     "パーフェクト　キャンペーンを\n"
                     "コンプリートしたんだって！？";
            dialogueTask++;
            break;

        case CAFE_EVENT_ALL_CAMPAIGNS_CLEAR_01:
            // Crazy awesome!!
            string = "\0032" "\001l" "\0051" "\0015" "\n"
                     "\n"
                     "めちゃすごーい!!" "\0030" "\001s" "\0054" "\0018";
            gCafeInfo->bgEvent = CAFE_BG_EVENT_CHEER_02;
            gCafeInfo->textAdvHold = 4;
            dialogue = cafe_dialogue_all_perfects_clear;
            break;

        case CAFE_EVENT_CONTINUE_DIALOGUE:
            string = *gCafeInfo->dialogue;
            if (*(gCafeInfo->dialogue + 1) != NULL) {
                gCafeInfo->dialogue++;
            } else {
                dialogueExhausted = TRUE;
            }
            break;
    }

    if (dialogue != NULL) {
        if (string == NULL) {
            string = *dialogue++;
            if (*dialogue != NULL) {
                gCafeInfo->dialogue = dialogue;
                dialogueTask = CAFE_EVENT_CONTINUE_DIALOGUE;
            } else {
                dialogueExhausted = TRUE;
            }
        } else {
            gCafeInfo->dialogue = dialogue;
            dialogueTask = CAFE_EVENT_CONTINUE_DIALOGUE;
        }
    }

    text_printer_show_text(gCafeInfo->printer, TRUE);
    text_printer_set_string(gCafeInfo->printer, string);

    if (dialogueExhausted) {
        beatscript_disable_loops();
    }

    gCafeInfo->nextDialogueTask = dialogueTask;
}


// Get BG Event (Script Function)
s32 cafe_get_bg_event(void) {
    return gCafeInfo->bgEvent;
}


// Show Text Box
void cafe_text_printer_show_box(void) {
    scene_show_bg_layer(BG_LAYER_1);
}


// Hide Text Box
void cafe_text_printer_hide_box(void) {
    scene_hide_bg_layer(BG_LAYER_1);
}


// Init. Text Printer
void cafe_init_text_printer(void) {
    struct TextPrinter *printer;

    printer = text_printer_create_new(get_current_mem_id(), 6, 176, 32);
    text_printer_set_x_y(printer, 32, 64);
    text_printer_set_layer(printer, 0x800);
    text_printer_set_palette(printer, 8);
    text_printer_set_colors(printer, 0);
    text_printer_center_by_content(printer, TRUE);
    text_printer_run_func_on_finish(printer, cafe_text_printer_show_box, 0);
    text_printer_run_func_on_clear(printer, cafe_text_printer_hide_box, 0);
    gCafeInfo->printer = printer;
    gCafeInfo->textAdvIcon = func_0804d160(D_03005380, anim_cafe_text_adv_icon, 0, 64, 64, 0x700, 1, 0, 0x8000);
    gCafeInfo->textAdvHold = 0;
}


// Get Text Advance Hold Time (Script Function)
s32 cafe_get_dialogue_hold_time(void) {
    return gCafeInfo->textAdvHold;
}


// Hide Text (Script Function)
void cafe_clear_dialogue(void) {
    scene_hide_bg_layer(BG_LAYER_1);
    text_printer_show_text(gCafeInfo->printer, FALSE);
}


// Init. Static Variables
void cafe_scene_init_static_var(void) {
    cafe_init_session_info();
}


// Init. Graphics 3
void cafe_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), cafe_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Init. Graphics 2
void cafe_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), cafe_gfx_table, 0x3000);
    run_func_after_task(task, cafe_scene_init_gfx3, 0);
}


// Init. Graphics 1
void cafe_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), cafe_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, FALSE, 0, 0, 0, 29, BGCNT_PRIORITY(1));
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, BGCNT_PRIORITY(2));
}


// Scene Start
void cafe_scene_start(void *sceneVar, s32 dataArg) {
    func_08007324(FALSE);
    func_080073f0();
    cafe_scene_init_gfx1();
    cafe_init_text_printer();
    cafe_init_dialogue();
    cafe_init_session_playtime();
    cafe_remove_old_levels_from_session(gCafeInfo->totalPlayTime, 60);
    cafe_init_session_indexes();

    gCafeInfo->scriptIsReady = FALSE;
    gCafeInfo->disableTextUpdates = FALSE;
    gCafeInfo->levelToClear = LEVEL_NULL;
}


// Scene Update (Paused)
void cafe_scene_paused(void *sceneVar, s32 dataArg) {
}


// Scene Update (Active)
void cafe_scene_update(void *sceneVar, s32 dataArg) {
    if (cafe_scene_script_is_ready()) {
        cafe_update_dialogue_inputs();
    }

    text_printer_update(gCafeInfo->printer);
}


// Communicate with Script
u32 cafe_scene_script_is_ready(void) {
    if (gCafeInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Load BG Event Map (Script Function)
void cafe_load_bg_event_map(struct CompressedGraphics *map) {
    func_08003eb8(map, (VRAMBase + 0xF000));
}


// Scene Stop
void cafe_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}
