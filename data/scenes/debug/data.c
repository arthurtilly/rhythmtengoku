#include "global.h"
#include "graphics.h"
#include "src/scenes/debug_menu.h"


  /* DEBUG MENU - MISC. DATA */


extern const struct Scene D_089d6f44;
extern const struct Scene D_089d6c8c;
extern const struct Scene D_089d6ba4;
extern const struct Scene D_089d69e0;
extern const struct Scene D_089d6804;
extern const struct Scene D_089d74fc;
extern const struct Scene D_089d712c;
extern const struct Scene D_089d7408;
extern const struct Scene D_089d7220;
extern const struct Scene D_089d671c;
extern const struct Scene D_089d7038;
extern const struct Scene D_089d6628;
extern const struct Scene D_089d2764;
extern const struct Scene D_089d6088;
extern const struct Scene D_089d7314;
extern const struct Scene D_089d5dc4;
extern const struct Scene D_089d5eac;
extern const struct Scene D_089d5f94;
extern const struct Scene D_089d4c8c;
extern const struct Scene D_089d4d74;
extern const struct Scene D_089d4e5c;
extern const struct Scene D_089d4f44;
extern const struct Scene D_089d502c;
extern const struct Scene D_089d51fc;
extern const struct Scene D_089d5114;
extern const struct Scene D_089d52e4;
extern const struct Scene D_089d53cc;
extern const struct Scene D_089d54b4;
extern const struct Scene D_089d559c;
extern const struct Scene D_089d5684;
extern const struct Scene D_089d576c;
extern const struct Scene D_089d5854;
extern const struct Scene D_089d593c;
extern const struct Scene D_089d5a24;
extern const struct Scene D_089d5b0c;
extern const struct Scene D_089d5bf4;
extern const struct Scene D_089d5cdc;
extern const struct Scene D_089d48ec;
extern const struct Scene D_089d4464;
extern const struct Scene D_089d454c;
extern const struct Scene D_089d4634;
extern const struct Scene D_089d4804;
extern const struct Scene D_089d80d0;
extern const struct Scene D_089d42a0;
extern const struct Scene D_089d40d0;
extern const struct Scene D_089d6440;
extern const struct Scene D_089d6534;
extern const struct Scene D_089d3e18;
extern const struct Scene D_089d68f8;
extern const struct Scene D_089d3c48;
extern const struct Scene D_089cdad8;
extern const struct Scene D_089d3a6c;
extern const struct Scene D_089d3984;
extern const struct Scene D_089d35fc;
extern const struct Scene D_089d3268;
extern const struct Scene D_089d3174;
extern const struct Scene D_089d2f98;
extern const struct Scene D_089d2dd4;
extern const struct Scene D_089d2c04;
extern const struct Scene D_089de05c;
extern const struct Scene D_089d2a34;
extern const struct Scene D_089d2940;
extern const struct Scene D_089d2858;
extern const struct Scene D_089d2670;
extern const struct Scene D_089d24a0;
extern const struct Scene D_089d21dc;
extern const struct Scene D_089d23ac;
extern const struct Scene D_089d1f18;
extern const struct Scene D_089d1c6c;
extern const struct Scene D_089d6258;
extern const struct Scene D_089d15f0;
extern const struct Scene D_089d18cc;
extern const struct Scene D_089d19c0;
extern const struct Scene D_089d132c;
extern const struct Scene D_089d14fc;
extern const struct Scene D_089d1068;
extern const struct Scene D_089d1238;
extern const struct Scene D_089d0da4;
extern const struct Scene D_089d0f74;
extern const struct Scene D_089d0ae0;
extern const struct Scene D_089d081c;
extern const struct Scene D_089d09ec;
extern const struct Scene D_089d0540;
extern const struct Scene D_089d0634;
extern const struct Scene D_089d0358;
extern const struct Scene D_089d044c;
extern const struct Scene D_089d0188;
extern const struct Scene D_089d634c;
extern const struct Scene D_089cfed0;
extern const struct Scene D_089d0728;
extern const struct Scene scene_riq_title;
extern const struct Scene scene_main_menu;
extern const struct Scene scene_game_select;
extern const struct Scene scene_data_room;
extern const struct Scene scene_studio;
extern const struct Scene scene_options_menu;
extern const struct Scene scene_results_ver_debug;
extern const struct Scene scene_results_ver_rank;
extern const struct Scene scene_results_ver_score;
extern const struct Scene scene_epilogue;
extern const struct Scene D_089cd2cc;
extern const struct Scene scene_perfect;
extern const struct Scene scene_cafe;
extern const struct Scene scene_endless_menu;
extern const struct Scene scene_lessons_menu;
extern const struct Scene scene_toys_menu;
extern const struct Scene D_089d6d74;
extern const struct Scene D_089d6e5c;
extern const struct Scene scene_data_clear;


// Sequence Test
const char D_0805966c[] = "シーケンス　テスト";


// Asterisk
const char D_08059680[] = "＊";


// 1/1
const char D_08059684[] = "１／１";


// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* LIVE */ {
        /* Scene */ &D_089d6f44,
        /* Label */ "ライブ"
    },
    /* Sick Beats Endless */ {
        /* Scene */ &D_089d6c8c,
        /* Label */ "バイキン　はかせ　ＳＰ"
    },
    /* Quiz Show Endless */ {
        /* Scene */ &D_089d6ba4,
        /* Label */ "クイズ（スペシャル）"
    },
    /* Mannequin Factory */ {
        /* Scene */ &D_089d69e0,
        /* Label */ "マネキンこうじょう"
    },
    /* Mr. Upbeat */ {
        /* Scene */ &D_089d6804,
        /* Label */ "ウラおとこ"
    },
    /* Remix 8 */ {
        /* Scene */ &D_089d74fc,
        /* Label */ "リミックス　８"
    },
    /* Remix 7 */ {
        /* Scene */ &D_089d712c,
        /* Label */ "リミックス　７"
    },
    /* Remix 6 */ {
        /* Scene */ &D_089d7408,
        /* Label */ "リミックス　６"
    },
    /* Remix 5 */ {
        /* Scene */ &D_089d7220,
        /* Label */ "リミックス　５"
    },
    /* Remix 4 */ {
        /* Scene */ &D_089d671c,
        /* Label */ "リミックス　４"
    },
    /* Remix 3 */ {
        /* Scene */ &D_089d7038,
        /* Label */ "リミックス　３"
    },
    /* Remix 2 */ {
        /* Scene */ &D_089d6628,
        /* Label */ "リミックス　２"
    },
    /* Remix 1 */ {
        /* Scene */ &D_089d2764,
        /* Label */ "リミックス　１"
    },
    /* The Bon Odori */ {
        /* Scene */ &D_089d6088,
        /* Label */ "ぼんおどり"
    },
    /* Bon Dance */ {
        /* Scene */ &D_089d7314,
        /* Label */ "ボンダンス"
    },
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &D_089d5dc4,
        /* Label */ "こえマシン（ネコ）"
    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &D_089d5eac,
        /* Label */ "こえマシン（ラブ）"
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &D_089d5f94,
        /* Label */ "こえマシン（ラップ）"
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &D_089d4c8c,
        /* Label */ "レッスン（イージー）"
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &D_089d4d74,
        /* Label */ "レッスン（ハード１）"
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &D_089d4e5c,
        /* Label */ "レッスン（ハード２）"
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &D_089d4f44,
        /* Label */ "レッスン（キメパターン１）"
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &D_089d502c,
        /* Label */ "レッスン（キメパターン２）"
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &D_089d51fc,
        /* Label */ "レッスン（デスコビート）"
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &D_089d5114,
        /* Label */ "レッスン（ボッサ）"
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &D_089d52e4,
        /* Label */ "レッスン（スネア）"
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &D_089d53cc,
        /* Label */ "レッスン（バスとスネア）"
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &D_089d54b4,
        /* Label */ "レッスン（はやい８ビート）"
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &D_089d559c,
        /* Label */ "レッスン（スネアテクニック）"
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &D_089d5684,
        /* Label */ "レッスン（じっせん１）"
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &D_089d576c,
        /* Label */ "レッスン（じっせん２）"
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &D_089d5854,
        /* Label */ "レッスン（じっせん３）"
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &D_089d593c,
        /* Label */ "レッスン（じっせん４）"
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &D_089d5a24,
        /* Label */ "レッスン（じっせん５）"
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &D_089d5b0c,
        /* Label */ "レッスン（じっせん６）"
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &D_089d5bf4,
        /* Label */ "レッスン（じっせん７）"
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &D_089d5cdc,
        /* Label */ "レッスン（じっせん８）"
    },
    /* Studio Drummer */ {
        /* Scene */ &D_089d48ec,
        /* Label */ "スタジオドラマー"
    },
    /* Check Machine (Click) */ {
        /* Scene */ &D_089d4464,
        /* Label */ "チェックマシン　（クリック）"
    },
    /* Rhythm Test (Cue) */ {
        /* Scene */ &D_089d454c,
        /* Label */ "チェックマシン　（キューフ）"
    },
    /* Rhythm Test (Trick) */ {
        /* Scene */ &D_089d4634,
        /* Label */ "チェックマシン　（トリッキー）"
    },
    /* Rhythm Test (Total) */ {
        /* Scene */ &D_089d4804,
        /* Label */ "チェックマシン　（トータル）"
    },
    /* Reading Material */ {
        /* Scene */ &D_089d80d0,
        /* Label */ "テキスト"
    },
    /* Quiz Show */ {
        /* Scene */ &D_089d42a0,
        /* Label */ "クイズ"
    },
    /* Rap Men */ {
        /* Scene */ &D_089d40d0,
        /* Label */ "ラップメン"
    },
    /* Rap Women (by YONE) */ {
        /* Scene */ &D_089d6440,
        /* Label */ "ラップ　ウィメン（ｂｙ　ＹＯＮＥ）"
    },
    /* Rap Women (by KAZU) */ {
        /* Scene */ &D_089d6534,
        /* Label */ "ラップ　ウィメン（ｂｙ　ＫＡＺＵ）"
    },
    /* Space Dance */ {
        /* Scene */ &D_089d3e18,
        /* Label */ "スペースダンス"
    },
    /* Cosmic Dance */ {
        /* Scene */ &D_089d68f8,
        /* Label */ "コスモダンス"
    },
    /* Showtime */ {
        /* Scene */ &D_089d3c48,
        /* Label */ "ショータイム"
    },
    /* RIQ Data Check */ {
        /* Scene */ &D_089cdad8,
        /* Label */ "ＲＩＱデータチェック"
    },
    /* Opening (B Type) */ {
        /* Scene */ &D_089d3a6c,
        /* Label */ "オープニング　（Ｂ　Ｔｙｐｅ）"
    },
    /* Opening (A Type) */ {
        /* Scene */ &D_089d3984,
        /* Label */ "オープニング　（Ａ　Ｔｙｐｅ）"
    },
    /* Tram & Pauline */ {
        /* Scene */ &D_089d35fc,
        /* Label */ "トランとポリン"
    },
    /* Toss Boys */ {
        /* Scene */ &D_089d3268,
        /* Label */ "トスボーイズ"
    },
    /* Toss Boys 2 */ {
        /* Scene */ &D_089d3174,
        /* Label */ "トスボーイズ　２"
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &D_089d2f98,
        /* Label */ "ドラムガールズ"
    },
    /* Power Calligraphy */ {
        /* Scene */ &D_089d2dd4,
        /* Label */ "リズム　おしゅうじ"
    },
    /* Rat Race */ {
        /* Scene */ &D_089d2c04,
        /* Label */ "こっそりラット"
    },
    /* Flash Memory Test */ {
        /* Scene */ &D_089de05c,
        /* Label */ "フラッシュメモリテスト"
    },
    /* Fireworks */ {
        /* Scene */ &D_089d2a34,
        /* Label */ "ハナビ"
    },
    /* Metronome */ {
        /* Scene */ &D_089d2940,
        /* Label */ "メトロノーム"
    },
    /* Bunny Hop */ {
        /* Scene */ &D_089d2858,
        /* Label */ "ウサギとび"
    },
    /* Dance Lesson 1 */ {
        /* Scene */ &D_089d2670,
        /* Label */ "ダンスレッスン　１"
    },
    /* Wizard's Waltz */ {
        /* Scene */ &D_089d24a0,
        /* Label */ "まほうつかい"
    },
    /* Marching Orders */ {
        /* Scene */ &D_089d21dc,
        /* Label */ "マーチャ"
    },
    /* Marching Orders 2 */ {
        /* Scene */ &D_089d23ac,
        /* Label */ "マーチャ　２"
    },
    /* Horse Machine */ {
        /* Scene */ &D_089d1f18,
        /* Label */ "うま（スピード）"
    },
    /* Tap Trial */ {
        /* Scene */ &D_089d1c6c,
        /* Label */ "タップダンズ"
    },
    /* Tap Trial 2 */ {
        /* Scene */ &D_089d6258,
        /* Label */ "スーパータップ"
    },
    /* Samurai Slice */ {
        /* Scene */ &D_089d15f0,
        /* Label */ "いあいぎり"
    },
    /* Spaceball */ {
        /* Scene */ &D_089d18cc,
        /* Label */ "エアーバッター"
    },
    /* Spaceball 2 */ {
        /* Scene */ &D_089d19c0,
        /* Label */ "エアーバッター２"
    },
    /* Sneaky Spirits */ {
        /* Scene */ &D_089d132c,
        /* Label */ "しろいおばけ"
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &D_089d14fc,
        /* Label */ "しろいおばけ　２"
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &D_089d1068,
        /* Label */ "ニンジャ"
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &D_089d1238,
        /* Label */ "ニンジャ　２"
    },
    /* Bouncy Road */ {
        /* Scene */ &D_089d0da4,
        /* Label */ "ホッピングロード"
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &D_089d0f74,
        /* Label */ "ホッピングロード　２"
    },
    /* Sick Beats */ {
        /* Scene */ &D_089d0ae0,
        /* Label */ "バイキン　はかせ"
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &D_089d081c,
        /* Label */ "リズムだつもう"
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &D_089d09ec,
        /* Label */ "リズムだつもう　２"
    },
    /* Night Walk */ {
        /* Scene */ &D_089d0540,
        /* Label */ "ナイト　ウォーク"
    },
    /* Night Walk 2 */ {
        /* Scene */ &D_089d0634,
        /* Label */ "ナイト　ウォーク　２"
    },
    /* Polyrhythm */ {
        /* Scene */ &D_089d0358,
        /* Label */ "ポリリズム"
    },
    /* Polyrhythm 2 */ {
        /* Scene */ &D_089d044c,
        /* Label */ "ポリリズム　２"
    },
    /* The Clappy Trio */ {
        /* Scene */ &D_089d0188,
        /* Label */ "パチパチ３にんしゅう"
    },
    /* The Snappy Trio */ {
        /* Scene */ &D_089d634c,
        /* Label */ "バリバリ３にんしゅう"
    },
    /* Karate Man */ {
        /* Scene */ &D_089cfed0,
        /* Label */ "カラテカ"
    },
    /* Karate Man 2 */ {
        /* Scene */ &D_089d0728,
        /* Label */ "カラテカ　２"
    },
    /* R-IQ (Title Screen) */ {
        /* Scene */ &scene_riq_title,
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
    /* R-IQ (Result [1]) */ {
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
        /* Scene */ &D_089cd2cc,
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
        /* Scene */ &D_089d6d74,
        /* Label */ "エンディング（クリアご）"
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &D_089d6e5c,
        /* Label */ "エンディング（おまけから）"
    },
    /* Data Clear */ {
        /* Scene */ &scene_data_clear,
        /* Label */ "データクリア"
    },
    END_OF_DEBUG_ENTRIES
};


// Backslash
const char D_08059f8c[] = "／";


// [D_089ddf60] Fullwidth Arabic Numerals and Uppercase Latin Alphabet Characters
char debug_menu_fullwidth_char[] = "０１２３４５６７８９ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ";
