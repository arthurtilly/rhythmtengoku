#include "global.h"
#include "cafe.h"
#include "graphics/cafe/cafe_graphics.h"

#include "levels.h"
#include "src/scenes/game_select.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

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


/* CAFE */


#include "asm/cafe/asm_080107a8.s"

#include "asm/cafe/asm_080107c8.s"

#include "asm/cafe/asm_080107dc.s"

#include "asm/cafe/asm_0801082c.s"

#include "asm/cafe/asm_08010854.s"

#include "asm/cafe/asm_080108a0.s"

#include "asm/cafe/asm_080108c8.s"

#include "asm/cafe/asm_080108e8.s"


// Init. ?
void func_08010904(u32 arg0, u32 arg1) {
    u32 i;

    for (i = 0; i < 5; i++) {
        if (D_030055a0.unk0[i].levelID == (u8)LEVEL_NULL) {
            continue;
        }
        if (arg0 - D_030055a0.unk0[i].unk4 > arg1) {
            D_030055a0.unk0[i].levelID = LEVEL_NULL;
        }
    }
}


// ?
void func_08010938(void) {
    struct CafeSub *r10 = D_030055a0.unk0;
    u8 *r12 = gCafeInfo->unk10;
    s32 total = 0;
    s32 i, j;

    for (i = 0; i < 5; i++) {
        if (r10[i].levelID != (u8)LEVEL_NULL) {
            r12[total] = i;
            total++;
        }
    }

    gCafeInfo->unkE = total;

    for (i = 0; i < (total - 1); i++) {
        for (j = (i + 1); j < total; j++) {
            if (r10[r12[i]].unk4 < r10[r12[j]].unk4) {
                u32 iPrev = r12[i];
                u32 jPrev = r12[j];

                r12[i] = jPrev;
                r12[j] = iPrev;
            }
        }
    }
}


// Init. ?
void func_080109cc(void) {
    s32 temp = func_0800b60c(0xE10);

    gCafeInfo->unk16 = temp - D_030055a0.unk2C;
    D_030055a0.unk2C = temp;
    gCafeInfo->unk18 = temp;
    gCafeInfo->unk1A = func_0800b60c(0x80000000 | 0xE10);
}


// Remove Level if (unk2 != 0)
void func_08010a04(void) {
    u32 i;

    for (i = 0; i < 5; i++) {
        if (D_030055a0.unk0[i].unk2 != 0) {
            D_030055a0.unk0[i].levelID = LEVEL_NULL;
        }
    }
}


// Init. ?
void func_08010a28(void) {
    gCafeInfo->nextDialogueTask = 0;
    gCafeInfo->unkC = 0;
}


#include "asm/cafe/asm_08010a3c.s"

#include "asm/cafe/asm_08010ae0.s"


// Check if Barista Can Clear Level
u32 func_08010bc0(s32 levelID) {
    u8 *deniedLevels;

    for (deniedLevels = cafe_barista_denied_levels; *deniedLevels != (u8)LEVEL_NULL; deniedLevels++) {
        if (levelID == *deniedLevels) {
            return FALSE;
        }
    }

    return TRUE;
}


// Start of Loop
void func_08010be4(void) {
    struct CafeSub *r6;
    const char **dialogue;
    const char *string;
    char *str;
    const char *levelName;
    u32 unk18;
    u32 topic;
    u32 i;
    s32 x, y;
    u32 dialogueTask = gCafeInfo->nextDialogueTask;
    u8 dialogueExhausted = FALSE;

    if (gCafeInfo->unkD) {
        return;
    }

    gCafeInfo->unk1C = 0;
    gCafeInfo->unk1D = 0;
    gCafeInfo->unk1E = 0;
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
                func_08010a04();
                D_030046a8->data.unk294[9] = FALSE;
                dialogueTask = CAFE_EVENT_ALL_CAMPAIGNS_CLEAR_00;
                break;
            }
            if (gCafeInfo->unk16 == 0) {
                dialogue = cafe_dialogue_come_back_later;
                break;
            }

            unk18 = gCafeInfo->unk18;

            if (unk18 <= 20) {
                // Are you making progress?
                // Please do your best!
                string = "\n"
                         "ゲーム　すすんでますか？\n"
                         "がんばって　くださいね～。\n"
                         "\n";
            } else if (unk18 <= 60) {
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

            while ((topic == CAFE_TOPIC_RANDOM) && (i < gCafeInfo->unkE)) {
                r6 = &D_030055a0.unk0[gCafeInfo->unk10[i]];

                if (r6->unk2 != 0) {
                    topic = CAFE_TOPIC_CAMPAIGN_CLEAR;
                    continue;
                }

                switch (D_030046a8->data.levelStates[r6->levelID]) {
                    case LEVEL_STATE_OPEN:
                        if ((r6->unk1 >= D_030046a8->data.unk290)
                          && func_08010bc0(r6->levelID)) {
                            topic = CAFE_TOPIC_TROUBLE_CLEARING_LEVEL;
                        }
                        break;

                    case LEVEL_STATE_CLEARED:
                        if (r6->unk1 > 2) {
                            topic = CAFE_TOPIC_TROUBLE_GETTING_MEDAL;
                        }
                        break;

                    case LEVEL_STATE_HAS_MEDAL:
                        if ((D_030046a8->data.unk235 < 48)
                          && !D_030046a8->data.campaignsCleared[get_campaign_from_level_id(r6->levelID)]
                          && (r6->unk1 > 2)) {
                            topic = CAFE_TOPIC_TROUBLE_CLEARING_CAMPAIGN;
                        }
                        break;
                }

                i++;
            }

            if (topic != CAFE_TOPIC_RANDOM) {
                if (gCafeInfo->unk18 - r6->unk4 > 20) {
                    topic = CAFE_TOPIC_REMEMBERING;
                }
                levelName = game_select_get_level_name(r6->levelID);
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
                    str = gCafeInfo->string;
                    memcpy(str, "", 1);
                    strcat(str, "\n");
                    strcat(str, "そうそう、");
                    strcat(str, "\0051" "\0015");
                    strcat(str, levelName);
                    strcat(str, "\0054" "\0018" "で\n");
                    strcat(str, "パーフェクト　だしたんだって！？");
                    string = str;
                    r6->levelID = LEVEL_NULL;
                    dialogueTask = CAFE_EVENT_CAMPAIGN_CLEAR_00;
                    break;

                case CAFE_TOPIC_TROUBLE_CLEARING_LEVEL:
                    // You're still on [...].
                    // Are you having trouble?
                    str = gCafeInfo->string;
                    memcpy(str, "", 1);
                    strcat(str, "\n");
                    strcat(str, "そういえば、");
                    strcat(str, "\0051" "\0015");
                    strcat(str, levelName);
                    strcat(str, "\0054" "\0018" "で\n");
                    strcat(str, "行きづまってませんか？\n" "\n");
                    string = str;
                    gCafeInfo->unk20 = r6->levelID;
                    r6->levelID = LEVEL_NULL;
                    dialogueTask = CAFE_EVENT_OFFER_CLEAR_00;
                    break;

                case CAFE_TOPIC_TROUBLE_GETTING_MEDAL:
                    // Hmm... is [...] giving you trouble earning that medal?
                    str = gCafeInfo->string;
                    memcpy(str, "", 1);
                    strcat(str, "\n");
                    strcat(str, "う～む…　");
                    strcat(str, "\0051" "\0015");
                    strcat(str, levelName);
                    strcat(str, "\0054" "\0018" "に\n");
                    strcat(str, "てこずってるんですねぇ。\n" "\n");
                    string = str;
                    dialogue = cafe_dialogue_keep_trying;
                    r6->levelID = LEVEL_NULL;
                    break;

                case CAFE_TOPIC_TROUBLE_CLEARING_CAMPAIGN:
                    // Rumor has it [...] was doing a perfect campaign.
                    // Weren't you playing it just now?
                    str = gCafeInfo->string;
                    memcpy(str, "", 1);
                    strcat(str, "\n");
                    strcat(str, "ウワサを　きいたんですけど、\n");
                    strcat(str, "\0051" "\0015");
                    strcat(str, levelName);
                    strcat(str, "\0054" "\0018" "　ばかり\n");
                    strcat(str, "してるみたいですね。");
                    string = str;
                    r6->levelID = LEVEL_NULL;
                    dialogueTask = CAFE_EVENT_CAMPAIGN_ADVICE_00;
                    break;

                case CAFE_TOPIC_REMEMBERING:
                    r6->unk4 = gCafeInfo->unk18;
                    // Ah! Wait, I remember!
                    string = "\n"
                             "\n"
                             "あ、　ちょっと　思い出しました！\n"
                             "\n";
                    break;

                case CAFE_TOPIC_UPCOMING_CAMPAIGN:
                    // Hey, here's a tip! Soon [...] is going to be having a perfect campaign.
                    str = gCafeInfo->string;
                    memcpy(str, "", 1);
                    strcat(str, "そうそう、\n"
                                "もうすぐ");
                    strcat(str, "\0051" "\0015");
                    strcat(str, levelName);
                    strcat(str, "\0054" "\0018" "で、\n"
                                "パーフェクトキャンペーンを\n"
                                "するそうですヨ。");
                    string = str;
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
            gCafeInfo->unk1C = 1;
            gCafeInfo->unk1D = 4;
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
            gCafeInfo->unk1E = 1;
            gCafeInfo->unk1F = 0;
            dialogueTask++;
            break;

        case CAFE_EVENT_OFFER_CLEAR_01:
            if (gCafeInfo->unk1F == 0) {
                // <Leave it to me!>
                string = "\n"
                         "\n"
                         "\0032" "\001l" "\0051" "\0015" "まかせとき！" "\0030" "\001s" "\0054" "\0018";
                gCafeInfo->unk1D = 3;
                gCafeInfo->unk1C = 2;
                dialogueTask = CAFE_EVENT_OFFER_CLEAR_02_Y;
                get_grid_xy_from_level_id(gCafeInfo->unk20, &x, &y);
                D_030046a8->data.recentLevelX = x;
                D_030046a8->data.recentLevelY = y;
                D_030046a8->data.recentLevelState = LEVEL_STATE_CLEARED;
                D_030046a8->data.recentLevelClearedByBarista = TRUE;
                D_030046a8->data.unk290 = clamp_int32(D_030046a8->data.unk290 + 1, 2, 7);
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
            gCafeInfo->unk1E = 1;
            gCafeInfo->unk1F = 0;
            dialogueTask++;
            break;

        case CAFE_EVENT_CAMPAIGN_ADVICE_01:
            if (gCafeInfo->unk1F == 0) {
                string = cafe_dialogue_shouts_cheer[agb_random(5)];
                gCafeInfo->unk1D = 3;
                gCafeInfo->unk1C = 3;
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
            gCafeInfo->unk1C = 3;
            gCafeInfo->unk1D = 4;
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


#include "asm/cafe/asm_080112dc.s"


// Show Text Box
void func_080112e8(void) {
    scene_show_bg_layer(BG_LAYER_1);
}


// Hide Text Box
void func_080112f4(void) {
    scene_hide_bg_layer(BG_LAYER_1);
}


// Init. Text Printer
void func_08011300(void) {
    struct TextPrinter *printer;

    printer = text_printer_create_new(get_current_mem_id(), 6, 176, 32);
    text_printer_set_x_y(printer, 32, 64);
    text_printer_set_layer(printer, 0x800);
    text_printer_set_palette(printer, 8);
    text_printer_set_colors(printer, 0);
    text_printer_center_by_content(printer, TRUE);
    text_printer_run_func_on_finish(printer, func_080112e8, 0);
    text_printer_run_func_on_clear(printer, func_080112f4, 0);
    gCafeInfo->printer = printer;
    gCafeInfo->textAdvIcon = func_0804d160(D_03005380, anim_cafe_text_adv_icon, 0, 64, 64, 0x700, 1, 0, 0x8000);
    gCafeInfo->unk1D = 0;
}


#include "asm/cafe/asm_080113a8.s"

#include "asm/cafe/asm_080113b4.s"


// Init. Static Variables
void cafe_scene_init_static_var(void) {
    func_08010854();
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
    func_08007324(0);
    func_080073f0();
    cafe_scene_init_gfx1();
    func_08011300();
    func_08010a28();
    func_080109cc();
    func_08010904(gCafeInfo->unk18, 60);
    func_08010938();
    gCafeInfo->scriptIsReady = FALSE;
    gCafeInfo->unkD = 0;
    gCafeInfo->unk20 = LEVEL_NULL;
}


// Scene Update (Paused)
void cafe_scene_paused(void *sceneVar, s32 dataArg) {
}


// Scene Update (Active)
#include "asm/cafe/asm_080114d4.s"


// Communicate with Script
u32 cafe_scene_script_is_ready(void) {
    if (gCafeInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Load Texture (Script Function)
void func_08011510(struct CompressedGraphics *texture) {
    func_08003eb8(texture, (VRAMBase + 0xF000));
}


// Scene Stop
void cafe_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}
