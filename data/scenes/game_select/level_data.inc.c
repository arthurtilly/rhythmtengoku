#include "level_data.h"

// Level Data
struct LevelData level_data_table[] = {
    /* KARATE_MAN */ {
        /* Entry Scene   */ &D_089cfed0,
        /* Game Name     */ "カラテ家",
        /* Game Desc.    */ "とんでくるモノを\n"
                            "Aボタンでパンチ！\n"
                            "よくあるゲーム？\n"
                            "…かもね。",
        /* Icon ID       */ 8,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_karate_man_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "明日が あるさ。",
            /* OK        */ "とりあえず、ごはん 食べとこう！",
            /* SUPERB    */ "こんなに ブッとばしちゃった！！"
        }
    },
    /* KARATE_MAN_2 */ {
        /* Entry Scene   */ &D_089d0728,
        /* Game Name     */ "カラテ家 ２",
        /* Game Desc.    */ "とんでくるモノを\n"
                            "Aボタンでパンチ！\n"
                            "でも、 スピードが\n"
                            "ヘンテコだヨ。",
        /* Icon ID       */ 0,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_karate_man_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "テンポが なんだー！！",
            /* OK        */ "ま、さておき。 ごはん 食べよう！",
            /* SUPERB    */ "ざっと こんなモンだぜー！！"
        }
    },
    /* CLAPPY_TRIO */ {
        /* Entry Scene   */ &D_089d0188,
        /* Game Name     */ "パチパチ三人衆",
        /* Game Desc.    */ "順番に拍手をするヨ！\n"
                            "あなたは３番目。\n"
                            "前の2人をよく見てネ！",
        /* Icon ID       */ 4,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_clappy_trio_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "仲間が帰っちゃった！",
            /* OK        */ "満足するのは まだ早いかもね。",
            /* SUPERB    */ "この三人衆、 息ピッタリだ！！"
        }
    },
    /* SNAPPY_TRIO */ {
        /* Entry Scene   */ &D_089d634c,
        /* Game Name     */ "バリバリ三人衆",
        /* Game Desc.    */ "ラフだった彼らが\n"
                            "バリっとスーツを\n"
                            "着てきたヨ！\n"
                            "カッコイイ！！",
        /* Icon ID       */ 10,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_snappy_trio_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "キャー！ ゆるしてー！！",
            /* OK        */ "あとチョットなんだけどね…",
            /* SUPERB    */ "息ピッタリでーす！ イェーイ！"
        }
    },
    /* POLYRHYTHM */ {
        /* Entry Scene   */ &D_089d0358,
        /* Game Name     */ "ポリリズム",
        /* Game Desc.    */ "十\\字ボタンとＡボタンの同時押しをマスターだ！けっこうカンタンだ。たぶん…",
        /* Icon ID       */ 3,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_polyrhythm_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "赤いモノ、量産は たいへんだなぁ…",
            /* OK        */ "どんどん 赤いモノを 生産だ！",
            /* SUPERB    */ "赤いモノを 生産しまくりだネ！！"
        }
    },
    /* POLYRHYTHM_2 */ {
        /* Entry Scene   */ &D_089d044c,
        /* Game Name     */ "ポリリズム ２",
        /* Game Desc.    */ "これぞ左右独立！\n"
                            "テンポよく こなして\n"
                            "レッツ ポリリズム！\n"
                            "イェーイ！",
        /* Icon ID       */ 51,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_polyrhythm_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "赤いモノ、もっと生産しなきゃ…",
            /* OK        */ "もっともっと 赤いモノを 生産だ！",
            /* SUPERB    */ "赤いモノを じゃんじゃん生産しちゃうヨ！！"
        }
    },
    /* NIGHT_WALK */ {
        /* Entry Scene   */ &D_089d0540,
        /* Game Name     */ "ナイトウォーク",
        /* Game Desc.    */ "音楽にあわせて\n"
                            "ジャンプしてネ！\n"
                            "星たちが あつまって\n"
                            "あなたも夜空へ…",
        /* Icon ID       */ 7,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_night_walk_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "つぎは もっと がんばってネ…",
            /* OK        */ "夜空の おさんぽ、 たのしいな。",
            /* SUPERB    */ "星たちが かんげいしてるヨ！"
        }
    },
    /* NIGHT_WALK_2 */ {
        /* Entry Scene   */ &D_089d0634,
        /* Game Name     */ "ナイトウォーク ２",
        /* Game Desc.    */ "音楽にあわせて\n"
                            "ジャンプしてネ！\n"
                            "ビリビリウオに\n"
                            "気をつけよう。",
        /* Icon ID       */ 41,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_night_walk_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "うひゃー！ しっぱいしちゃった！！",
            /* OK        */ "夜風が とっても きもちいいな。",
            /* SUPERB    */ "星たちと おともだちだヨ！"
        }
    },
    /* RHYTHM_TWEEZERS */ {
        /* Entry Scene   */ &D_089d081c,
        /* Game Name     */ "リズム脱毛",
        /* Game Desc.    */ "どんどん生えてくる\n"
                            "うっとうしい「毛」！\n"
                            "ぬいちゃえ、 \n"
                            "ぬいちゃえ！",
        /* Icon ID       */ 14,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_rhythm_tweezers_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "これじゃ 売りものに ならん！",
            /* OK        */ "なんで うちのヤサイは 毛がはえるんだ？",
            /* SUPERB    */ "スッキリそうかい！ 空気がうまい！！"
        }
    },
    /* RHYTHM_TWEEZERS_2 */ {
        /* Entry Scene   */ &D_089d09ec,
        /* Game Name     */ "リズム脱毛 ２",
        /* Game Desc.    */ "またしても生えてくる\n"
                            "うっとうしい「毛」！\n"
                            "ぬいちゃえ、 \n"
                            "ぬいちゃえ！",
        /* Icon ID       */ 25,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_rhythm_tweezers_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "なんで 毛が はえるんだー！？",
            /* OK        */ "しかしなんで うちのヤサイだけに 毛が…？",
            /* SUPERB    */ "スッキリそうかい！ 空気がうますぎ！！"
        }
    },
    /* SICK_BEATS */ {
        /* Entry Scene   */ &D_089d0ae0,
        /* Game Name     */ "バイキン はかせ",
        /* Game Desc.    */ "助手からの知らせ\n"
                            "「大変です！\n"
                            "バイキン発生です！！\n"
                            "先生、たすけて～」",
        /* Icon ID       */ 13,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_sick_beats_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "研究は失敗だ。",
            /* OK        */ "失敗は成功のもとカモ！",
            /* SUPERB    */ "ものすごいクスリができた！！"
        }
    },
    /* BOUNCY_ROAD */ {
        /* Entry Scene   */ &D_089d0da4,
        /* Game Name     */ "ホッピングロード",
        /* Game Desc.    */ "とんでくる丸い玉。\n"
                            "あれはイイやつです。\n"
                            "落とさないでネ！",
        /* Icon ID       */ 12,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_bouncy_road_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "なかなか ムズカシー！",
            /* OK        */ "けっこうな コンビネーションだったネ！",
            /* SUPERB    */ "かんたん かんたん♪"
        }
    },
    /* BOUNCY_ROAD_2 */ {
        /* Entry Scene   */ &D_089d0f74,
        /* Game Name     */ "ホッピングロード２",
        /* Game Desc.    */ "とんでくる丸い玉。\n"
                            "ほんとにイイやつ\n"
                            "なんですヨ～。\n"
                            "落とさないでネ！",
        /* Icon ID       */ 50,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_bouncy_road_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "エーン！ しっぱい！！",
            /* OK        */ "なかなか がんばっていたネ！",
            /* SUPERB    */ "らくちん らくちん♪"
        }
    },
    /* NINJA_BODYGUARD */ {
        /* Entry Scene   */ &D_089d1068,
        /* Game Name     */ "忍者",
        /* Game Desc.    */ "敵襲(てきしゅう)だ！\n"
                            "十\\字ボタンとAボタンで応戦(おうせん)だ！\n"
                            "フジヤマ（ふじさん）！！",
        /* Icon ID       */ 5,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_ninja_bodyguard_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ゲッ！ トノが きぜつしてる！！",
            /* OK        */ "トノ！ ごめんなさ～い。",
            /* SUPERB    */ "アッパレって 言われちゃったゼ！！"
        }
    },
    /* NINJA_REINCARNATE */ {
        /* Entry Scene   */ &D_089d1238,
        /* Game Name     */ "忍者の子孫",
        /* Game Desc.    */ "オレのじいちゃんの\n"
                            "じいちゃんの\n"
                            "じいちゃんは\n"
                            "忍者なんだぜ。",
        /* Icon ID       */ 38,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_ninja_reincarnate_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "まけるな！ おまえが頼りなのだー！！",
            /* OK        */ "うむ、スジは良いな。がんばれ！",
            /* SUPERB    */ "オヌシは強い。お幸せに…！"
        }
    },
    /* SNEAKY_SPIRITS */ {
        /* Entry Scene   */ &D_089d132c,
        /* Game Name     */ "しろいおばけ",
        /* Game Desc.    */ "白いヤツが こちらを\n"
                            "バカにしている！\n"
                            "ムキーッ！！\n"
                            "こらしめちゃおう！",
        /* Icon ID       */ 1,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_sneaky_spirits_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "逃げたヤツにイタズラされた！",
            /* OK        */ "しとめた！",
            /* SUPERB    */ "いっぱい しとめた！！"
        }
    },
    /* SNEAKY_SPIRITS_2 */ {
        /* Entry Scene   */ &D_089d14fc,
        /* Game Name     */ "しろいおばけ ２",
        /* Game Desc.    */ "白いヤツが こちらを\n"
                            "ナメきっている！\n"
                            "ムカムカーッ！！\n"
                            "こらしめちゃおう！",
        /* Icon ID       */ 53,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_sneaky_spirits_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "うわー！ やられほうだいだ！",
            /* OK        */ "おばけ「ナ、ナンダヨ～」",
            /* SUPERB    */ "みんな、反省してネ！"
        }
    },
    /* SAMURAI_SLICE */ {
        /* Entry Scene   */ &D_089d15f0,
        /* Game Name     */ "ゐあひ斬り",
        /* Game Desc.    */ "そこのけ そこのけ\n"
                            "奴らが通る。\n"
                            "おぬしは サムライ、\n"
                            "斬り捨て 御免！",
        /* Icon ID       */ 18,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_samurai_slice_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "刃こぼれしちまった！",
            /* OK        */ "さらに精進（しょうじん）すべし！",
            /* SUPERB    */ "切れあじ、 サイコーだ！！"
        }
    },
    /* SPACEBALL */ {
        /* Entry Scene   */ &D_089d18cc,
        /* Game Name     */ "エアーバッター",
        /* Game Desc.    */ "ズームをきにするな！\n"
                            "心でボールを打て！\n"
                            "視覚に頼るな！\n"
                            "どんと行け～！",
        /* Icon ID       */ 9,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_spaceball_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "これで ゆるしてください。",
            /* OK        */ "さらに上を目指して練習だ！",
            /* SUPERB    */ "こんなの もらっちゃったー！"
        }
    },
    /* SPACEBALL_2 */ {
        /* Entry Scene   */ &D_089d19c0,
        /* Game Name     */ "エアーバッター ２",
        /* Game Desc.    */ "ズームをきにするな！\n"
                            "心でボールを打て！\n"
                            "視覚に頼るな！\n"
                            "涙もふくな～！",
        /* Icon ID       */ 52,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_spaceball_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ナニスルノデスカー！",
            /* OK        */ "こんなところで 終われない！",
            /* SUPERB    */ "みんな、見て見てー！"
        }
    },
    /* TAP_TRIAL */ {
        /* Entry Scene   */ &D_089d1c6c,
        /* Game Name     */ "タップダンズ",
        /* Game Desc.    */ "あなたは女の子。\n"
                            "となりのサルたちに\n"
                            "合わせてタップを\n"
                            "きざむッス！",
        /* Icon ID       */ 6,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_tap_trial_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "無念だわ。",
            /* OK        */ "ちょっと、 ヘンなトコあったけどネ！",
            /* SUPERB    */ "気分は もう、サイコー！！"
        }
    },
    /* TAP_TRIAL_2 */ {
        /* Entry Scene   */ &D_089d6258,
        /* Game Name     */ "スーパータップ",
        /* Game Desc.    */ "サルがパワーアップ！\n"
                            "あなたは かれらに\n"
                            "ついていけるか！？\n"
                            "まけるな～！",
        /* Icon ID       */ 11,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_tap_trial_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ガーン！",
            /* OK        */ "う～ん… すこし ちがうカンジ…",
            /* SUPERB    */ "この気持ち、とまらなーい！"
        }
    },
    /* MARCHING_ORDERS */ {
        /* Entry Scene   */ &D_089d21dc,
        /* Game Name     */ "マーチャ",
        /* Game Desc.    */ "行進をするのだ。\n"
                            "かってな行動はチームをダメにする！\n"
                            "がんばりたまえ。",
        /* Icon ID       */ 21,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_marching_orders_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "わぁっ！おいてけぼりされた！",
            /* OK        */ "今日の任務は、おそうじでーす♪",
            /* SUPERB    */ "宇宙人の救出、大成功！！"
        }
    },
    /* MARCHING_ORDERS_2 */ {
        /* Entry Scene   */ &D_089d23ac,
        /* Game Name     */ "マーチャ ２",
        /* Game Desc.    */ "行進をするのだ。\n"
                            "こんどのは ちょっと\n"
                            "テクニカルだ！\n"
                            "がんばりたまえ。",
        /* Icon ID       */ 20,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_marching_orders_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "こ、これでは、イカン！う～む…",
            /* OK        */ "ぐっ！ もっとカッコよくおどらなければ！",
            /* SUPERB    */ "ごほうびに、こんなのもらってしまった！！"
        }
    },
    /* WIZARDS_WALTZ */ {
        /* Entry Scene   */ &D_089d24a0,
        /* Game Name     */ "まほうつかい",
        /* Game Desc.    */ "あなたはまほう使い。\n"
                            "さみしがりやの\n"
                            "おじょうちゃんに花を\n"
                            "プレゼントしよう。",
        /* Icon ID       */ 23,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_wizards_waltz_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "こんなのヤダ～、 こわいヨ～！",
            /* OK        */ "もっと 花がさくと うれしいな～。",
            /* SUPERB    */ "わーい、 わたし もう さみしくないヨ！"
        }
    },
    /* BUNNY_HOP */ {
        /* Entry Scene   */ &D_089d2858,
        /* Game Name     */ "ウサギとび",
        /* Game Desc.    */ "ジャンプが得意な\n"
                            "白いウサギさん。\n"
                            "ビートにのって\n"
                            "海をわたろう！",
        /* Icon ID       */ 24,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_bunny_hop_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "月に帰りた～い！",
            /* OK        */ "着地は失敗しちゃった…",
            /* SUPERB    */ "まん点！！"
        }
    },
    /* FIREWORKS */ {
        /* Entry Scene   */ &D_089d2a34,
        /* Game Name     */ "花火",
        /* Game Desc.    */ "夏といえばさ、\n"
                            "やっぱ花火かな？\n"
                            "色あざやかに\n"
                            "打ち上げよう！",
        /* Icon ID       */ 26,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_fireworks_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ゲホゲホッ… 失敗。",
            /* OK        */ "なかなかのデキだぜ！",
            /* SUPERB    */ "花火のことならオレにまかせろ！！"
        }
    },
    /* POWER_CALLIGRAPHY */ {
        /* Entry Scene   */ &D_089d2dd4,
        /* Game Name     */ "リズムお習字",
        /* Game Desc.    */ "筆を使って日本語を\n"
                            "書きます。\n"
                            "あなたがするのは\n"
                            "オイシイとこだけ。",
        /* Icon ID       */ 28,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_power_calligraphy_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ふ～…  アカンわ。",
            /* OK        */ "お習字を もっと楽しもう！",
            /* SUPERB    */ "お習字って ノリノリだネ！！"
        }
    },
    /* POWER_CALLIGRAPHY_2 */ {
        /* Entry Scene   */ &D_089d2dd4,
        /* Game Name     */ "リズムお習字 ２",
        /* Game Desc.    */ "筆を使って日本語を\n"
                            "書きます。\n"
                            "あなたがするのは\n"
                            "オイシイとこだけ。",
        /* Icon ID       */ 28,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_power_calligraphy_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ふ～…  アカンわ。",
            /* OK        */ "お習字を もっと楽しもう！",
            /* SUPERB    */ "お習字って ノリノリだネ！！"
        }
    },
    /* TOSS_BOYS */ {
        /* Entry Scene   */ &D_089d3268,
        /* Game Name     */ "トスボーイズ",
        /* Game Desc.    */ "なかよし３人組、\n"
                            "声をかけあいながら\n"
                            "いつも楽しくトスの\n"
                            "練習してます。",
        /* Icon ID       */ 30,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_toss_boys_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ダメダメだァ～！",
            /* OK        */ "まだまだもっと上手にできるはず！",
            /* SUPERB    */ "目標は、 トス世界選手権 優勝だー！！"
        }
    },
    /* TOSS_BOYS_2 */ {
        /* Entry Scene   */ &D_089d3174,
        /* Game Name     */ "トスボーイズ ２",
        /* Game Desc.    */ "なかよし３人組、\n"
                            "声をかけあいながら\n"
                            "いつも楽しくトスの\n"
                            "練習してます。",
        /* Icon ID       */ 29,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_toss_boys_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ボロボロだァ～！",
            /* OK        */ "こんなところで 終われない！",
            /* SUPERB    */ "最強メンバーのたんじょうだー！！"
        }
    },
    /* RAT_RACE */ {
        /* Entry Scene   */ &D_089d2c04,
        /* Game Name     */ "こっそり ラット",
        /* Game Desc.    */ "あなたはネズミ。\n"
                            "大スキなチーズを\n"
                            "めざして\n"
                            "ストップ＆ゴー！！",
        /* Icon ID       */ 31,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_rat_race_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "チーズ 食べたいよ～…",
            /* OK        */ "チーズ おいしいね。",
            /* SUPERB    */ "みんな、 よかったネ！"
        }
    },
    /* TRAM_PAULINE */ {
        /* Entry Scene   */ &D_089d35fc,
        /* Game Name     */ "トランとポリン",
        /* Game Desc.    */ "こぎつねトラン、\n"
                            "そしてポリンの\n"
                            "アクロバティックショーがはじまるヨ！",
        /* Icon ID       */ 32,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_tram_pauline_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "大しっぱいだ～！！",
            /* OK        */ "ちゅうとハンパでした…",
            /* SUPERB    */ "コンビネーション バッチシ！！"
        }
    },
    /* SHOWTIME */ {
        /* Entry Scene   */ &D_089d3c48,
        /* Game Name     */ "ショータイム",
        /* Game Desc.    */ "ペンギン君たちの\n"
                            "ショータイムが\n"
                            "はじまるヨ！\n"
                            "わーいわーい！",
        /* Icon ID       */ 36,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_showtime_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "お客さん、 おこってたネ…",
            /* OK        */ "ボクたち こんなもんじゃないはず…",
            /* SUPERB    */ "やった！！ お客さん 楽しんでくれたー！！"
        }
    },
    /* SPACE_DANCE */ {
        /* Entry Scene   */ &D_089d3e18,
        /* Game Name     */ "スペースダンス",
        /* Game Desc.    */ "ここは無重力の宇宙。\n"
                            "でも、 おどろうヨ！\n"
                            "レッツスペースダンス！",
        /* Icon ID       */ 40,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_space_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ブ、 ブラックホールだー！！",
            /* OK        */ "あの星のように かがやきたいな…",
            /* SUPERB    */ "ボクたちは スペーススーパースター！！"
        }
    },
    /* COSMIC_DANCE */ {
        /* Entry Scene   */ &D_089d68f8,
        /* Game Name     */ "コスモダンス",
        /* Game Desc.    */ "宇宙を代表\\する\n"
                            "ダンサーたち！\n"
                            "キレた動きに\n"
                            "くぎづけです！！",
        /* Icon ID       */ 16,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_cosmic_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "お、おわりだー！！",
            /* OK        */ "あなたたちって こんなものなの？",
            /* SUPERB    */ "ボクたちは スーパーコスモスターさ！！"
        }
    },
    /* RAP_MEN */ {
        /* Entry Scene   */ &D_089d40d0,
        /* Game Name     */ "ラップメン",
        /* Game Desc.    */ "クールなふたり組が\n"
                            "やってきた！\n"
                            "アツいラップで\n"
                            "大コーフンだぜ！",
        /* Icon ID       */ 42,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_rap_men_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "オレたち、 ダサいやん…",
            /* OK        */ "チェッ。 なんか 調子わるいわぁ。",
            /* SUPERB    */ "これからも よろしく たのんまっせー！！"
        }
    },
    /* RAP_WOMEN */ {
        /* Entry Scene   */ &D_089d6440,
        /* Game Name     */ "ラップウイメン",
        /* Game Desc.    */ "あのラップメンに\n"
                            "ライバルが登場だ！\n"
                            "キュートなボイスに\n"
                            "もう メロメロ！",
        /* Icon ID       */ 15,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_rap_women_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "こんなん ちゃうわぁ…",
            /* OK        */ "なんか ちょっと イマイチかも…！",
            /* SUPERB    */ "そうそう コレコレ、これやわー！！イェーイ！"
        }
    },
    /* QUIZ_SHOW */ {
        /* Entry Scene   */ &D_089d42a0,
        /* Game Name     */ "クイズ",
        /* Game Desc.    */ "司会者の、\n"
                            "「たたいた回数」を\n"
                            "当てるカンタンな\n"
                            "クイズです。",
        /* Icon ID       */ 43,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_quiz_show_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "ま、 こんなものさ。",
            /* OK        */ "次回に向けて 勉強、勉強…Zzz",
            /* SUPERB    */ "世界旅行 もらっちゃった！"
        }
    },
    /* BON_ODORI */ {
        /* Entry Scene   */ &D_089d6088,
        /* Game Name     */ "ザ☆ぼんおどり",
        /* Game Desc.    */ "ぼんおどりの\n"
                            "うたに あわせて\n"
                            "パンッと 手を\n"
                            "たたきましょう。",
        /* Icon ID       */ 35,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_bon_odori_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "さむいわ…",
            /* OK        */ "せんこう花火って、せつないね。",
            /* SUPERB    */ "あー、楽しかった！"
        }
    },
    /* BON_DANCE */ {
        /* Entry Scene   */ &D_089d7314,
        /* Game Name     */ "ボンダンス",
        /* Game Desc.    */ "これが いまどきの\n"
                            "ぼんおどり！\n"
                            "ノリノリだヨ！\n"
                            "イェーイ！",
        /* Icon ID       */ 17,
        /* Icon Style    */ 0,
        /* Epilogue GFX  */ epilogue_bon_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "もういや…",
            /* OK        */ "うーん、雨がふってきちゃった。",
            /* SUPERB    */ "ボンダンスって すごく楽しいよネー！"
        }
    },
    /* REMIX_1 */ {
        /* Entry Scene   */ &D_089d2764,
        /* Game Name     */ "リミックス １",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 22,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix1_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回のデキ ： 猫のおやつクラス",
            /* OK        */ "今回のデキ ： 朝食クラス",
            /* SUPERB    */ "今回のデキ ： なんと、 ディナークラス！！"
        }
    },
    /* REMIX_2 */ {
        /* Entry Scene   */ &D_089d6628,
        /* Game Name     */ "リミックス ２",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 27,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回の熱気 ： ひとりで練習レベル",
            /* OK        */ "今回の熱気 ： 楽しくキャッチボールレベル",
            /* SUPERB    */ "今回の熱気 ： すごい大会レベル！！"
        }
    },
    /* REMIX_3 */ {
        /* Entry Scene   */ &D_089d7038,
        /* Game Name     */ "リミックス ３",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 33,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix3_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回のラブ ： ブロークンハートかも…",
            /* OK        */ "今回のラブ ： とってもフレンドリーな感じ♪",
            /* SUPERB    */ "今回のラブ ： ラブラブでーす！！"
        }
    },
    /* REMIX_4 */ {
        /* Entry Scene   */ &D_089d671c,
        /* Game Name     */ "リミックス ４",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 34,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix4_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回の天気 ： 雨",
            /* OK        */ "今回の天気 ： くもり",
            /* SUPERB    */ "今回の天気 ： ハッピーな晴れ！！"
        }
    },
    /* REMIX_5 */ {
        /* Entry Scene   */ &D_089d7220,
        /* Game Name     */ "リミックス ５",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 39,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix5_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回のふたり ： ジャマされてしまった！",
            /* OK        */ "今回のふたり ： このさき、チョット不安かも…",
            /* SUPERB    */ "今回のふたり ： 幸せになりました♪"
        }
    },
    /* REMIX_6 */ {
        /* Entry Scene   */ &D_089d7408,
        /* Game Name     */ "リミックス ６",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 2,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix6_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回の内容 ： ややさみしいカンジ",
            /* OK        */ "今回の内容 ： 意外なカンジ",
            /* SUPERB    */ "今回の内容 ： アンビリーバボーなカンジ！！"
        }
    },
    /* REMIX_7 */ {
        /* Entry Scene   */ &D_089d712c,
        /* Game Name     */ "リミックス ７",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 19,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix7_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回のきょうりゅう ： いじわる",
            /* OK        */ "今回のきょうりゅう ： ほのぼの",
            /* SUPERB    */ "今回のきょうりゅう ： 楽しすぎ～！！"
        }
    },
    /* REMIX_8 */ {
        /* Entry Scene   */ &D_089d74fc,
        /* Game Name     */ "リミックス ８",
        /* Game Desc.    */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Icon ID       */ 37,
        /* Icon Style    */ 1,
        /* Epilogue GFX  */ epilogue_remix8_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "今回のドライブ ： んもぅ…",
            /* OK        */ "今回のドライブ ： まだまだかかるなぁ",
            /* SUPERB    */ "今回のドライブ ： とっても爽快！！"
        }
    },
    /* CAFE */ {
        /* Entry Scene   */ &D_089cda0c,
        /* Game Name     */ "喫茶カウンセル",
        /* Game Desc.    */ "最近の調子 どう？\n"
                            "なにか気になれば\n"
                            "ここで相談を\n"
                            "してみよう。",
        /* Icon ID       */ 45,
        /* Icon Style    */ 2,
        /* Epilogue GFX  */ epilogue_cafe_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* RHYTHM_TOYS */ {
        /* Entry Scene   */ &D_089dd86c,
        /* Game Name     */ "おもちゃ",
        /* Game Desc.    */ "メダルを あつめて\n"
                            "音のでるおもちゃで\n"
                            "あそんでみてネ！\n"
                            "いくつかあるヨ。",
        /* Icon ID       */ 46,
        /* Icon Style    */ 2,
        /* Epilogue GFX  */ epilogue_toys_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* ENDLESS_GAMES */ {
        /* Entry Scene   */ &D_089dd8ac,
        /* Game Name     */ "ゲーム",
        /* Game Desc.    */ "メダルを あつめて\n"
                            "とくべつなゲームに\n"
                            "挑戦してみてネ！\n"
                            "いくつかあるヨ。",
        /* Icon ID       */ 47,
        /* Icon Style    */ 2,
        /* Epilogue GFX  */ epilogue_endless_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* DRUM_LESSONS */ {
        /* Entry Scene   */ &D_089dd8ec,
        /* Game Name     */ "ドラムレッスン",
        /* Game Desc.    */ "メダルを あつめて\n"
                            "ドラムのレッスンを\n"
                            "うけてみよう。\n"
                            "上手になってネ！",
        /* Icon ID       */ 48,
        /* Icon Style    */ 2,
        /* Epilogue GFX  */ epilogue_lessons_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* STAFF_CREDIT */ {
        /* Entry Scene   */ &D_089d6e5c,
        /* Game Name     */ "スタッフ",
        /* Game Desc.    */ "もし よかったら\n"
                            "見てみてネ。\n"
                            "このゲームの\n"
                            "スタッフたちです。",
        /* Icon ID       */ 49,
        /* Icon Style    */ 2,
        /* Epilogue GFX  */ epilogue_staff_credit_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* LIVE_MENU */ {
        /* Entry Scene   */ &D_089d6f44,
        /* Game Name     */ "ライブ",
        /* Game Desc.    */ "ライブに出演だ！\n"
                            "キミのリズム感は\n"
                            "よいと思うから\n"
                            "どうぞお気楽に～",
        /* Icon ID       */ 44,
        /* Icon Style    */ 2,
        /* Epilogue GFX  */ epilogue_concert_hall_gfx_tables,
        /* Epilogue Text */ {
            /* TRY AGAIN */ "おばちゃん「またつぎ、がんばりなよ！」",
            /* OK        */ "オーナー「キミ、なかなか スジあるヨ」",
            /* SUPERB    */ "プロデューサー「うちで、ガンバってみない？」"
        }
    }
};
