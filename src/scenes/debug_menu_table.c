#include "global.h"
#include "debug_menu.h"


/* DEBUG MENU TABLE */


// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* Drum LIVE */ {
        /* Scene */ &scene_drum_live,
        /* Label */ "ライブ"
    },
    /* Sick Beats Endless */ {
        /* Scene */ &scene_sick_beats_endless,
        /* Label */ "バイキン　はかせ　ＳＰ"
    },
    /* Quiz Show Endless */ {
        /* Scene */ &scene_quiz_show_endless,
        /* Label */ "クイズ（スペシャル）"
    },
    /* Mannequin Factory */ {
        /* Scene */ &scene_mannequin_factory,
        /* Label */ "マネキンこうじょう"
    },
    /* Mr. Upbeat */ {
        /* Scene */ &scene_mr_upbeat,
        /* Label */ "ウラおとこ"
    },
    /* Remix 8 */ {
        /* Scene */ &scene_remix_8,
        /* Label */ "リミックス　８"
    },
    /* Remix 7 */ {
        /* Scene */ &scene_remix_7,
        /* Label */ "リミックス　７"
    },
    /* Remix 6 */ {
        /* Scene */ &scene_remix_6,
        /* Label */ "リミックス　６"
    },
    /* Remix 5 */ {
        /* Scene */ &scene_remix_5,
        /* Label */ "リミックス　５"
    },
    /* Remix 4 */ {
        /* Scene */ &scene_remix_4,
        /* Label */ "リミックス　４"
    },
    /* Remix 3 */ {
        /* Scene */ &scene_remix_3,
        /* Label */ "リミックス　３"
    },
    /* Remix 2 */ {
        /* Scene */ &scene_remix_2,
        /* Label */ "リミックス　２"
    },
    /* Remix 1 */ {
        /* Scene */ &scene_remix_1,
        /* Label */ "リミックス　１"
    },
    /* The Bon Odori */ {
        /* Scene */ &scene_bon_odori,
        /* Label */ "ぼんおどり"
    },
    /* Bon Dance */ {
        /* Scene */ &scene_bon_dance,
        /* Label */ "ボンダンス"
    },
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &scene_cat_machine,
        /* Label */ "こえマシン（ネコ）"
    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &scene_love_machine,
        /* Label */ "こえマシン（ラブ）"
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &scene_rap_machine,
        /* Label */ "こえマシン（ラップ）"
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &scene_drum_lesson_short_1,
        /* Label */ "レッスン（イージー）"
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &scene_drum_lesson_short_4,
        /* Label */ "レッスン（ハード１）"
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &scene_drum_lesson_short_8,
        /* Label */ "レッスン（ハード２）"
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &scene_drum_lesson_short_5,
        /* Label */ "レッスン（キメパターン１）"
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &scene_drum_lesson_short_7,
        /* Label */ "レッスン（キメパターン２）"
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &scene_drum_lesson_short_6,
        /* Label */ "レッスン（デスコビート）"
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &scene_drum_lesson_short_9,
        /* Label */ "レッスン（ボッサ）"
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &scene_drum_lesson_basic_1,
        /* Label */ "レッスン（スネア）"
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &scene_drum_lesson_basic_2,
        /* Label */ "レッスン（バスとスネア）"
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &scene_drum_lesson_short_2,
        /* Label */ "レッスン（はやい８ビート）"
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &scene_drum_lesson_short_3,
        /* Label */ "レッスン（スネアテクニック）"
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &scene_drum_lesson_long_4,
        /* Label */ "レッスン（じっせん１）"
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &scene_drum_lesson_long_2,
        /* Label */ "レッスン（じっせん２）"
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &scene_drum_lesson_long_3,
        /* Label */ "レッスン（じっせん３）"
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &scene_drum_lesson_long_1,
        /* Label */ "レッスン（じっせん４）"
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &scene_drum_lesson_long_5,
        /* Label */ "レッスン（じっせん５）"
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &scene_drum_lesson_long_6,
        /* Label */ "レッスン（じっせん６）"
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_1,
        /* Label */ "レッスン（じっせん７）"
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_2,
        /* Label */ "レッスン（じっせん８）"
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver0,
        /* Label */ "スタジオドラマー"
    },
    /* Rhythm Test (Click) */ {
        /* Scene */ &scene_rhythm_test_click,
        /* Label */ "チェックマシン　（クリック）"
    },
    /* Rhythm Test (Cue) */ {
        /* Scene */ &scene_rhythm_test_cue,
        /* Label */ "チェックマシン　（キューフ）"
    },
    /* Rhythm Test (Trick) */ {
        /* Scene */ &scene_rhythm_test_trick,
        /* Label */ "チェックマシン　（トリッキー）"
    },
    /* Rhythm Test (Total) */ {
        /* Scene */ &scene_rhythm_test_opening,
        /* Label */ "チェックマシン　（トータル）"
    },
    /* Reading Material */ {
        /* Scene */ &scene_reading,
        /* Label */ "テキスト"
    },
    /* Quiz Show */ {
        /* Scene */ &scene_quiz_show,
        /* Label */ "クイズ"
    },
    /* Rap Men */ {
        /* Scene */ &scene_rap_men,
        /* Label */ "ラップメン"
    },
    /* Rap Women (by YONE) */ {
        /* Scene */ &scene_rap_women,
        /* Label */ "ラップ　ウィメン（ｂｙ　ＹＯＮＥ）"
    },
    /* Rap Women (by KAZU) */ {
        /* Scene */ &scene_rap_women_unused,
        /* Label */ "ラップ　ウィメン（ｂｙ　ＫＡＺＵ）"
    },
    /* Space Dance */ {
        /* Scene */ &scene_space_dance,
        /* Label */ "スペースダンス"
    },
    /* Cosmic Dance */ {
        /* Scene */ &scene_cosmic_dance,
        /* Label */ "コスモダンス"
    },
    /* Showtime */ {
        /* Scene */ &scene_showtime,
        /* Label */ "ショータイム"
    },
    /* RIQ Data Check */ {
        /* Scene */ &scene_data_check,
        /* Label */ "ＲＩＱデータチェック"
    },
    /* Opening (B Type) */ {
        /* Scene */ &scene_drum_samurai_opening_cutscene,
        /* Label */ "オープニング　（Ｂ　Ｔｙｐｅ）"
    },
    /* Opening (A Type) */ {
        /* Scene */ &scene_drum_samurai_demo_cutscene,
        /* Label */ "オープニング　（Ａ　Ｔｙｐｅ）"
    },
    /* Tram & Pauline */ {
        /* Scene */ &scene_tram_pauline,
        /* Label */ "トランとポリン"
    },
    /* Toss Boys */ {
        /* Scene */ &scene_toss_boys,
        /* Label */ "トスボーイズ"
    },
    /* Toss Boys 2 */ {
        /* Scene */ &scene_toss_boys_2,
        /* Label */ "トスボーイズ　２"
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &scene_drum_girls_live_unused,
        /* Label */ "ドラムガールズ"
    },
    /* Power Calligraphy */ {
        /* Scene */ &scene_power_calligraphy,
        /* Label */ "リズム　おしゅうじ"
    },
    /* Rat Race */ {
        /* Scene */ &scene_rat_race,
        /* Label */ "こっそりラット"
    },
    /* Flash Memory Test */ {
        /* Scene */ &scene_flash_mem_test,
        /* Label */ "フラッシュメモリテスト"
    },
    /* Fireworks */ {
        /* Scene */ &scene_fireworks,
        /* Label */ "ハナビ"
    },
    /* Metronome */ {
        /* Scene */ &scene_metronome,
        /* Label */ "メトロノーム"
    },
    /* Bunny Hop */ {
        /* Scene */ &scene_bunny_hop,
        /* Label */ "ウサギとび"
    },
    /* Dance Lesson 1 */ {
        /* Scene */ &scene_remix_1_unused,
        /* Label */ "ダンスレッスン　１"
    },
    /* Wizard's Waltz */ {
        /* Scene */ &scene_wizards_waltz,
        /* Label */ "まほうつかい"
    },
    /* Marching Orders */ {
        /* Scene */ &scene_marching_orders,
        /* Label */ "マーチャ"
    },
    /* Marching Orders 2 */ {
        /* Scene */ &scene_marching_orders_2,
        /* Label */ "マーチャ　２"
    },
    /* Mechanical Horse */ {
        /* Scene */ &scene_mechanical_horse,
        /* Label */ "うま（スピード）"
    },
    /* Tap Trial */ {
        /* Scene */ &scene_tap_trial,
        /* Label */ "タップダンズ"
    },
    /* Tap Trial 2 */ {
        /* Scene */ &scene_tap_trial_2,
        /* Label */ "スーパータップ"
    },
    /* Samurai Slice */ {
        /* Scene */ &scene_samurai_slice,
        /* Label */ "いあいぎり"
    },
    /* Spaceball */ {
        /* Scene */ &scene_spaceball,
        /* Label */ "エアーバッター"
    },
    /* Spaceball 2 */ {
        /* Scene */ &scene_spaceball_2,
        /* Label */ "エアーバッター２"
    },
    /* Sneaky Spirits */ {
        /* Scene */ &scene_sneaky_spirits,
        /* Label */ "しろいおばけ"
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &scene_sneaky_spirits_2,
        /* Label */ "しろいおばけ　２"
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &scene_ninja_bodyguard,
        /* Label */ "ニンジャ"
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &scene_ninja_reincarnate,
        /* Label */ "ニンジャ　２"
    },
    /* Bouncy Road */ {
        /* Scene */ &scene_bouncy_road,
        /* Label */ "ホッピングロード"
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &scene_bouncy_road_2,
        /* Label */ "ホッピングロード　２"
    },
    /* Sick Beats */ {
        /* Scene */ &scene_sick_beats,
        /* Label */ "バイキン　はかせ"
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &scene_rhythm_tweezers,
        /* Label */ "リズムだつもう"
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &scene_rhythm_tweezers_2,
        /* Label */ "リズムだつもう　２"
    },
    /* Night Walk */ {
        /* Scene */ &scene_night_walk,
        /* Label */ "ナイト　ウォーク"
    },
    /* Night Walk 2 */ {
        /* Scene */ &scene_night_walk_2,
        /* Label */ "ナイト　ウォーク　２"
    },
    /* Polyrhythm */ {
        /* Scene */ &scene_polyrhythm,
        /* Label */ "ポリリズム"
    },
    /* Polyrhythm 2 */ {
        /* Scene */ &scene_polyrhythm_2,
        /* Label */ "ポリリズム　２"
    },
    /* The Clappy Trio */ {
        /* Scene */ &scene_clappy_trio,
        /* Label */ "パチパチ３にんしゅう"
    },
    /* The Snappy Trio */ {
        /* Scene */ &scene_snappy_trio,
        /* Label */ "バリバリ３にんしゅう"
    },
    /* Karate Man */ {
        /* Scene */ &scene_karate_man,
        /* Label */ "カラテカ"
    },
    /* Karate Man 2 */ {
        /* Scene */ &scene_karate_man_2,
        /* Label */ "カラテカ　２"
    },
    /* R-IQ (Title Screen) */ {
        /* Scene */ &scene_title,
        /* Label */ "Ｒ－ＩＱ　（タイトル）"
    },
    /* R-IQ (Main Menu) */ {
        /* Scene */ &scene_main_menu,
        /* Label */ "Ｒ－ＩＱ　（メニュー）"
    },
    /* R-IQ (Game Select) */ {
        /* Scene */ &scene_game_select,
        /* Label */ "Ｒ－ＩＱ　（ゲーム）"
    },
    /* R-IQ (Rhythm Data Room) */ {
        /* Scene */ &scene_data_room,
        /* Label */ "Ｒ－ＩＱ　（しりょうしつ）"
    },
    /* R-IQ (Studio) */ {
        /* Scene */ &scene_studio,
        /* Label */ "Ｒ－ＩＱ　（スタジオ）"
    },
    /* R-IQ (Options) */ {
        /* Scene */ &scene_options_menu,
        /* Label */ "Ｒ－ＩＱ　（オプション）"
    },
    /* R-IQ (Result 1) */ {
        /* Scene */ &scene_results_ver_debug,
        /* Label */ "Ｒ－ＩＱ　（リザルト）"
    },
    /* R-IQ (Result 2) */ {
        /* Scene */ &scene_results_ver_rank,
        /* Label */ "Ｒ－ＩＱ　（リザルト２）"
    },
    /* R-IQ (Result 3) */ {
        /* Scene */ &scene_results_ver_score,
        /* Label */ "Ｒ－ＩＱ　（リザルト３）"
    },
    /* R-IQ (Result 4) */ {
        /* Scene */ &scene_epilogue,
        /* Label */ "Ｒ－ＩＱ　（リザルト４）"
    },
    /* R-IQ (Rhythm Library) */ {
        /* Scene */ &scene_arrival,
        /* Label */ "Ｒ－ＩＱ　（にゅうか）"
    },
    /* R-IQ (Perfect) */ {
        /* Scene */ &scene_perfect,
        /* Label */ "Ｒ－ＩＱ　（パーフェクト）"
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "Ｒ－ＩＱ　（カウンセラー）"
    },
    /* R-IQ (Endless Games) */ {
        /* Scene */ &scene_endless_menu,
        /* Label */ "Ｒ－ＩＱ　（ミニゲーム）"
    },
    /* R-IQ (Drum Lessons) */ {
        /* Scene */ &scene_lessons_menu,
        /* Label */ "Ｒ－ＩＱ　（ドラムレッスン）"
    },
    /* R-IQ (Rhythm Toys) */ {
        /* Scene */ &scene_toys_menu,
        /* Label */ "Ｒ－ＩＱ　（おもちゃ）"
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "Ｒ－ＩＱ　（カウンセラー）"
    },
    /* Ending (from clearing Remix 6) */ {
        /* Scene */ &scene_staff_credit_remix_6,
        /* Label */ "エンディング（クリアご）"
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &scene_staff_credit,
        /* Label */ "エンディング（おまけから）"
    },
    /* Data Clear */ {
        /* Scene */ &scene_data_clear,
        /* Label */ "データクリア"
    },
    END_OF_DEBUG_ENTRIES
};


// [D_089ddf60] Page Number Digits
char debug_menu_counter_digits[] = "０１２３４５６７８９ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ";


// Render Text
void debug_menu_render_table(s32 targetPage, s32 targetRow) {
    char string[100];
    s32 totalPages;
    u32 i, j;

    totalPages = (gDebugMenu->totalEntries - 1) / 8;

    if (targetPage < 0) {
        targetPage = totalPages;
    }

    if (targetPage > totalPages) {
        targetPage = 0;
    }

    if ((targetPage * 8) + targetRow >= gDebugMenu->totalEntries) {
        targetRow = (gDebugMenu->totalEntries - 1) - (totalPages * 8);
    }

    if (targetPage != gDebugMenu->page) {
        struct PrintedTextAnim *textAnim;

        for (i = 0; i < 8; i++) {
            if (gDebugMenu->textLines[i] > -1) {
                delete_bmp_font_obj_text_anim(gDebugMenu->objFont, gDebugMenu->textLines[i]);
                sprite_delete(gSpriteHandler, gDebugMenu->textLines[i]);
                gDebugMenu->textLines[i] = -1;
            }
        }

        for (j = 0, i = (targetPage * 8); (i < (targetPage * 8) + 8) && (i < gDebugMenu->totalEntries); j++, i++) {
            textAnim = bmp_font_obj_print_l(gDebugMenu->objFont, debug_menu_entry_table[i].label, 1, 0);
            gDebugMenu->textLines[j] = sprite_create(gSpriteHandler, textAnim->frames, 0, 32, (j * 16) + 32, 0x800, 0, 0, 0);
        }

        delete_bmp_font_obj_text_anim(gDebugMenu->objFont, gDebugMenu->counter);
        strncpy(string, &debug_menu_counter_digits[(targetPage + 1) * 2], 2);
        string[2] = '\0';
        strcat(string, "／");
        strncat(string, &debug_menu_counter_digits[(totalPages + 1) * 2], 2);
        textAnim = bmp_font_obj_print_r(gDebugMenu->objFont, string, 1, 4);
        sprite_set_anim(gSpriteHandler, gDebugMenu->counter, textAnim->frames, 0, 0, 0, 0);
    }

    gDebugMenu->page = targetPage;
    gDebugMenu->row = targetRow;

    for (i = 0; i < 8; i++) {
        if (gDebugMenu->textLines[i] > -1) {
            sprite_set_base_palette(gSpriteHandler, gDebugMenu->textLines[i], 0);
        }
    }

    sprite_set_base_palette(gSpriteHandler, gDebugMenu->textLines[gDebugMenu->row], 7);
    sprite_set_x_y(gSpriteHandler, gDebugMenu->cursor, 16, (gDebugMenu->row * 16) + 32);
}
