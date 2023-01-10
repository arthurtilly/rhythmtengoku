#include "global.h"
#include "text.h"
#include "debug_text.h"


/* Debug Menu */


// Underscore
const char D_08059668[] = "＿";

// Sequence Test
const char D_0805966c[] = "シーケンス　テスト";

// Asterisk
const char D_08059680[] = "＊";

// 1/1
const char D_08059684[] = "１／１";

// Data Clear
const char text_debug_menu_data_clear[] = "データクリア";

// Ending (from Medal Corner)
const char text_debug_menu_credits_again[] = "エンディング（おまけから）";

// Ending (from clearing Remix 6)
const char text_debug_menu_credits_first_time[] = "エンディング（クリアご）";

// R-IQ (Rhythm Toys)
const char text_debug_menu_riq_rhythm_toys[] = "Ｒ－ＩＱ　（おもちゃ）";

// R-IQ (Drum Lessons)
const char text_debug_menu_riq_drum_lessons[] = "Ｒ－ＩＱ　（ドラムレッスン）";

// R-IQ (Endless Games)
const char text_debug_menu_riq_endless_games[] = "Ｒ－ＩＱ　（ミニゲーム）";

// R-IQ (Cafe)
const char text_debug_menu_riq_cafe[] = "Ｒ－ＩＱ　（カウンセラー）";

// R-IQ (Perfect)
const char text_debug_menu_riq_perfect[] = "Ｒ－ＩＱ　（パーフェクト）";

// R-IQ (Rhythm Library)
const char text_debug_menu_riq_library[] = "Ｒ－ＩＱ　（にゅうか）";

// R-IQ (Result 4)
const char text_debug_menu_riq_results4[] = "Ｒ－ＩＱ　（リザルト４）";

// R-IQ (Result 3)
const char text_debug_menu_riq_results3[] = "Ｒ－ＩＱ　（リザルト３）";

// R-IQ (Result 2)
const char text_debug_menu_riq_results2[] = "Ｒ－ＩＱ　（リザルト２）";

// R-IQ (Result [1])
const char text_debug_menu_riq_results[] = "Ｒ－ＩＱ　（リザルト）";

// R-IQ (Options)
const char text_debug_menu_riq_options[] = "Ｒ－ＩＱ　（オプション）";

// R-IQ (Studio)
const char text_debug_menu_riq_studio[] = "Ｒ－ＩＱ　（スタジオ）";

// R-IQ (Rhythm Data Room)
const char text_debug_menu_riq_data_room[] = "Ｒ－ＩＱ　（しりょうしつ）";

// R-IQ (Game Select)
const char text_debug_menu_riq_game_select[] = "Ｒ－ＩＱ　（ゲーム）";

// R-IQ (Main Menu)
const char text_debug_menu_riq_main_menu[] = "Ｒ－ＩＱ　（メニュー）";

// R-IQ (Title Screen)
const char text_debug_menu_riq_title[] = "Ｒ－ＩＱ　（タイトル）";

// Karate Man 2
const char D_0805987c[] = "カラテカ　２";

// Karate Man
const char D_0805988c[] = "カラテカ";

// The Snappy Trio
const char D_08059898[] = "バリバリ３にんしゅう";

// The Clappy Trio
const char D_080598b0[] = "パチパチ３にんしゅう";

// Polyrhythm 2
const char D_080598c8[] = "ポリリズム　２";

// Polyrhythm
const char D_080598d8[] = "ポリリズム";

// Night Walk 2
const char D_080598e4[] = "ナイト　ウォーク　２";

// Night Walk
const char D_080598fc[] = "ナイト　ウォーク";

// Rhythm Tweezers 2
const char D_08059910[] = "リズムだつもう　２";

// Rhythm Tweezers
const char D_08059924[] = "リズムだつもう";

// Sick Beats
const char D_08059934[] = "バイキン　はかせ";

// Bouncy Road 2
const char D_08059948[] = "ホッピングロード　２";

// Bouncy Road
const char D_08059960[] = "ホッピングロード";

// Ninja Bodyguard 2
const char D_08059974[] = "ニンジャ　２";

// Ninja Bodyguard
const char D_08059984[] = "ニンジャ";

// Sneaky Spirits 2
const char D_08059990[] = "しろいおばけ　２";

// Sneaky Spirits
const char D_080599a4[] = "しろいおばけ";

// Spaceball 2
const char D_080599b4[] = "エアーバッター２";

// Spaceball
const char D_080599c8[] = "エアーバッター";

// Samurai Slice
const char D_080599d8[] = "いあいぎり";

// Tap Trial 2
const char D_080599e4[] = "スーパータップ";

// Tap Trial
const char D_080599f4[] = "タップダンズ";

// Horse Machine
const char D_08059a04[] = "うま（スピード）";

// Marching Orders 2
const char D_08059a18[] = "マーチャ　２";

// Marching Orders
const char D_08059a28[] = "マーチャ";

// Wizard's Waltz
const char D_08059a34[] = "まほうつかい";

// Dance Lesson 1
const char D_08059a44[] = "ダンスレッスン　１";

// Bunny Hop
const char D_08059a58[] = "ウサギとび";

// Metronome
const char D_08059a64[] = "メトロノーム";

// Fireworks
const char D_08059a74[] = "ハナビ";

// Flash Memory Test
const char D_08059a7c[] = "フラッシュメモリテスト";

// Rat Race
const char D_08059a94[] = "こっそりラット";

// Power Calligraphy
const char D_08059aa4[] = "リズム　おしゅうじ";

// Drum Girls LIVE
const char D_08059ab8[] = "ドラムガールズ";

// Toss Boys 2
const char D_08059ac8[] = "トスボーイズ　２";

// Toss Boys
const char D_08059adc[] = "トスボーイズ";

// Tram & Pauline
const char D_08059aec[] = "トランとポリン";

// Opening (A Type)
const char D_08059afc[] = "オープニング　（Ａ　Ｔｙｐｅ）";

// Opening (B Type)
const char D_08059b1c[] = "オープニング　（Ｂ　Ｔｙｐｅ）";

// RIQ Data Check
const char D_08059b3c[] = "ＲＩＱデータチェック";

// Showtime
const char D_08059b54[] = "ショータイム";

// Cosmic Dance
const char D_08059b64[] = "コスモダンス";

// Space Dance
const char D_08059b74[] = "スペースダンス";

// Rap Women (by KAZU)
const char D_08059b84[] = "ラップ　ウィメン（ｂｙ　ＫＡＺＵ）";

// Rap Women (by YONE)
const char D_08059ba8[] = "ラップ　ウィメン（ｂｙ　ＹＯＮＥ）";

// Rap Men
const char D_08059bcc[] = "ラップメン";

// Quiz Show
const char D_08059bd8[] = "クイズ";

// Reading Material
const char D_08059be0[] = "テキスト";

// Rhythm Test (Total)
const char D_08059bec[] = "チェックマシン　（トータル）";

// Rhythm Test (Trick)
const char D_08059c0c[] = "チェックマシン　（トリッキー）";

// Rhythm Test (Cue)
const char D_08059c2c[] = "チェックマシン　（キューフ）";

// Check Machine (Click)
const char D_08059c4c[] = "チェックマシン　（クリック）";

// Studio Drummer
const char D_08059c6c[] = "スタジオドラマー";

// Lesson (High-Tech 2)
const char D_08059c80[] = "レッスン（じっせん８）";

// Lesson (High-Tech 1)
const char D_08059c98[] = "レッスン（じっせん７）";

// Lesson (Long 6)
const char D_08059cb0[] = "レッスン（じっせん６）";

// Lesson (Long 5)
const char D_08059cc8[] = "レッスン（じっせん５）";

// Lesson (Long 1)
const char D_08059ce0[] = "レッスン（じっせん４）";

// Lesson (Long 3)
const char D_08059cf8[] = "レッスン（じっせん３）";

// Lesson (Long 2)
const char D_08059d10[] = "レッスン（じっせん２）";

// Lesson (Long 4)
const char D_08059d28[] = "レッスン（じっせん１）";

// Lesson (Short 3)
const char D_08059d40[] = "レッスン（スネアテクニック）";

// Lesson (Short 2)
const char D_08059d60[] = "レッスン（はやい８ビート）";

// Lesson (Basic 2)
const char D_08059d7c[] = "レッスン（バスとスネア）";

// Lesson (Basic 1)
const char D_08059d98[] = "レッスン（スネア）";

// Lesson (Short 9)
const char D_08059dac[] = "レッスン（ボッサ）";

// Lesson (Short 6)
const char D_08059dc0[] = "レッスン（デスコビート）";

// Lesson (Short 7)
const char D_08059ddc[] = "レッスン（キメパターン２）";

// Lesson (Short 5)
const char D_08059df8[] = "レッスン（キメパターン１）";

// Lesson (Short 8)
const char D_08059e14[] = "レッスン（ハード２）";

// Lesson (Short 4)
const char D_08059e2c[] = "レッスン（ハード１）";

// Lesson (Short 1)
const char D_08059e44[] = "レッスン（イージー）";

// Rhythm Toys (Rap Machine)
const char D_08059e5c[] = "こえマシン（ラップ）";

// Rhythm Toys (Confession Machine)
const char D_08059e74[] = "こえマシン（ラブ）";

// Rhythm Toys (Cat Machine)
const char D_08059e88[] = "こえマシン（ネコ）";

// Bon Dance
const char D_08059e9c[] = "ボンダンス";

// Bon Odori
const char D_08059ea8[] = "ぼんおどり";

// Remix 1
const char D_08059eb4[] = "リミックス　１";

// Remix 2
const char D_08059ec4[] = "リミックス　２";

// Remix 3
const char D_08059ed4[] = "リミックス　３";

// Remix 4
const char D_08059ee4[] = "リミックス　４";

// Remix 5
const char D_08059ef4[] = "リミックス　５";

// Remix 6
const char D_08059f04[] = "リミックス　６";

// Remix 7
const char D_08059f14[] = "リミックス　７";

// Remix 8
const char D_08059f24[] = "リミックス　８";

// Mr. Upbeat
const char D_08059f34[] = "ウラおとこ";

// Mannequin Factory
const char D_08059f40[] = "マネキンこうじょう";

// Quiz Show Endless
const char D_08059f54[] = "クイズ（スペシャル）";

// Sick Beats Endless
const char D_08059f6c[] = "バイキン　はかせ　ＳＰ";

// LIVE
const char D_08059f84[] = "ライブ";

// Backslash
const char D_08059f8c[] = "／";
