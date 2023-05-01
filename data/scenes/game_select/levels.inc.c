// Level Entries Table
struct LevelData level_data_table[] = {
    /* KARATE_MAN */ {
        /* Entry Scene   */ &scene_karate_man,
        /* Level Name    */ "カラテ家",
        /* Level Desc.   */ "とんでくるモノを\n"
                            "Aボタンでパンチ！\n"
                            "よくあるゲーム？\n"
                            "…かもね。",
        /* Level Icon    */ 8,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_karate_man_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "明日が あるさ。",
            /* OK        */ "とりあえず、ごはん 食べとこう！",
            /* SUPERB    */ "こんなに ブッとばしちゃった！！"
        }
    },
    /* KARATE_MAN_2 */ {
        /* Entry Scene   */ &scene_karate_man_2,
        /* Level Name    */ "カラテ家 ２",
        /* Level Desc.   */ "とんでくるモノを\n"
                            "Aボタンでパンチ！\n"
                            "でも、 スピードが\n"
                            "ヘンテコだヨ。",
        /* Level Icon    */ 0,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_karate_man_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "テンポが なんだー！！",
            /* OK        */ "ま、さておき。 ごはん 食べよう！",
            /* SUPERB    */ "ざっと こんなモンだぜー！！"
        }
    },
    /* CLAPPY_TRIO */ {
        /* Entry Scene   */ &scene_clappy_trio,
        /* Level Name    */ "パチパチ三人衆",
        /* Level Desc.   */ "順番に拍手をするヨ！\n"
                            "あなたは３番目。\n"
                            "前の2人をよく見てネ！",
        /* Level Icon    */ 4,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_clappy_trio_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "仲間が帰っちゃった！",
            /* OK        */ "満足するのは まだ早いかもね。",
            /* SUPERB    */ "この三人衆、 息ピッタリだ！！"
        }
    },
    /* SNAPPY_TRIO */ {
        /* Entry Scene   */ &scene_snappy_trio,
        /* Level Name    */ "バリバリ三人衆",
        /* Level Desc.   */ "ラフだった彼らが\n"
                            "バリっとスーツを\n"
                            "着てきたヨ！\n"
                            "カッコイイ！！",
        /* Level Icon    */ 10,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_snappy_trio_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "キャー！ ゆるしてー！！",
            /* OK        */ "あとチョットなんだけどね…",
            /* SUPERB    */ "息ピッタリでーす！ イェーイ！"
        }
    },
    /* POLYRHYTHM */ {
        /* Entry Scene   */ &scene_polyrhythm,
        /* Level Name    */ "ポリリズム",
        /* Level Desc.   */ "十\字ボタンとＡボタンの同時押しをマスターだ！けっこうカンタンだ。たぶん…",
        /* Level Icon    */ 3,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_polyrhythm_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "赤いモノ、量産は たいへんだなぁ…",
            /* OK        */ "どんどん 赤いモノを 生産だ！",
            /* SUPERB    */ "赤いモノを 生産しまくりだネ！！"
        }
    },
    /* POLYRHYTHM_2 */ {
        /* Entry Scene   */ &scene_polyrhythm_2,
        /* Level Name    */ "ポリリズム ２",
        /* Level Desc.   */ "これぞ左右独立！\n"
                            "テンポよく こなして\n"
                            "レッツ ポリリズム！\n"
                            "イェーイ！",
        /* Level Icon    */ 51,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_polyrhythm_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "赤いモノ、もっと生産しなきゃ…",
            /* OK        */ "もっともっと 赤いモノを 生産だ！",
            /* SUPERB    */ "赤いモノを じゃんじゃん生産しちゃうヨ！！"
        }
    },
    /* NIGHT_WALK */ {
        /* Entry Scene   */ &scene_night_walk,
        /* Level Name    */ "ナイトウォーク",
        /* Level Desc.   */ "音楽にあわせて\n"
                            "ジャンプしてネ！\n"
                            "星たちが あつまって\n"
                            "あなたも夜空へ…",
        /* Level Icon    */ 7,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_night_walk_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "つぎは もっと がんばってネ…",
            /* OK        */ "夜空の おさんぽ、 たのしいな。",
            /* SUPERB    */ "星たちが かんげいしてるヨ！"
        }
    },
    /* NIGHT_WALK_2 */ {
        /* Entry Scene   */ &scene_night_walk_2,
        /* Level Name    */ "ナイトウォーク ２",
        /* Level Desc.   */ "音楽にあわせて\n"
                            "ジャンプしてネ！\n"
                            "ビリビリウオに\n"
                            "気をつけよう。",
        /* Level Icon    */ 41,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_night_walk_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "うひゃー！ しっぱいしちゃった！！",
            /* OK        */ "夜風が とっても きもちいいな。",
            /* SUPERB    */ "星たちと おともだちだヨ！"
        }
    },
    /* RHYTHM_TWEEZERS */ {
        /* Entry Scene   */ &scene_rhythm_tweezers,
        /* Level Name    */ "リズム脱毛",
        /* Level Desc.   */ "どんどん生えてくる\n"
                            "うっとうしい「毛」！\n"
                            "ぬいちゃえ、 \n"
                            "ぬいちゃえ！",
        /* Level Icon    */ 14,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rhythm_tweezers_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "これじゃ 売りものに ならん！",
            /* OK        */ "なんで うちのヤサイは 毛がはえるんだ？",
            /* SUPERB    */ "スッキリそうかい！ 空気がうまい！！"
        }
    },
    /* RHYTHM_TWEEZERS_2 */ {
        /* Entry Scene   */ &scene_rhythm_tweezers_2,
        /* Level Name    */ "リズム脱毛 ２",
        /* Level Desc.   */ "またしても生えてくる\n"
                            "うっとうしい「毛」！\n"
                            "ぬいちゃえ、 \n"
                            "ぬいちゃえ！",
        /* Level Icon    */ 25,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rhythm_tweezers_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "なんで 毛が はえるんだー！？",
            /* OK        */ "しかしなんで うちのヤサイだけに 毛が…？",
            /* SUPERB    */ "スッキリそうかい！ 空気がうますぎ！！"
        }
    },
    /* SICK_BEATS */ {
        /* Entry Scene   */ &scene_sick_beats,
        /* Level Name    */ "バイキン はかせ",
        /* Level Desc.   */ "助手からの知らせ\n"
                            "「大変です！\n"
                            "バイキン発生です！！\n"
                            "先生、たすけて～」",
        /* Level Icon    */ 13,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_sick_beats_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "研究は失敗だ。",
            /* OK        */ "失敗は成功のもとカモ！",
            /* SUPERB    */ "ものすごいクスリができた！！"
        }
    },
    /* BOUNCY_ROAD */ {
        /* Entry Scene   */ &scene_bouncy_road,
        /* Level Name    */ "ホッピングロード",
        /* Level Desc.   */ "とんでくる丸い玉。\n"
                            "あれはイイやつです。\n"
                            "落とさないでネ！",
        /* Level Icon    */ 12,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bouncy_road_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "なかなか ムズカシー！",
            /* OK        */ "けっこうな コンビネーションだったネ！",
            /* SUPERB    */ "かんたん かんたん♪"
        }
    },
    /* BOUNCY_ROAD_2 */ {
        /* Entry Scene   */ &scene_bouncy_road_2,
        /* Level Name    */ "ホッピングロード２",
        /* Level Desc.   */ "とんでくる丸い玉。\n"
                            "ほんとにイイやつ\n"
                            "なんですヨ～。\n"
                            "落とさないでネ！",
        /* Level Icon    */ 50,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bouncy_road_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "エーン！ しっぱい！！",
            /* OK        */ "なかなか がんばっていたネ！",
            /* SUPERB    */ "らくちん らくちん♪"
        }
    },
    /* NINJA_BODYGUARD */ {
        /* Entry Scene   */ &scene_ninja_bodyguard,
        /* Level Name    */ "忍者",
        /* Level Desc.   */ "敵襲(てきしゅう)だ！\n"
                            "十\字ボタンとAボタンで応戦(おうせん)だ！\n"
                            "フジヤマ（ふじさん）！！",
        /* Level Icon    */ 5,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_ninja_bodyguard_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ゲッ！ トノが きぜつしてる！！",
            /* OK        */ "トノ！ ごめんなさ～い。",
            /* SUPERB    */ "アッパレって 言われちゃったゼ！！"
        }
    },
    /* NINJA_REINCARNATE */ {
        /* Entry Scene   */ &scene_ninja_reincarnate,
        /* Level Name    */ "忍者の子孫",
        /* Level Desc.   */ "オレのじいちゃんの\n"
                            "じいちゃんの\n"
                            "じいちゃんは\n"
                            "忍者なんだぜ。",
        /* Level Icon    */ 38,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_ninja_reincarnate_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "まけるな！ おまえが頼りなのだー！！",
            /* OK        */ "うむ、スジは良いな。がんばれ！",
            /* SUPERB    */ "オヌシは強い。お幸せに…！"
        }
    },
    /* SNEAKY_SPIRITS */ {
        /* Entry Scene   */ &scene_sneaky_spirits,
        /* Level Name    */ "しろいおばけ",
        /* Level Desc.   */ "白いヤツが こちらを\n"
                            "バカにしている！\n"
                            "ムキーッ！！\n"
                            "こらしめちゃおう！",
        /* Level Icon    */ 1,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_sneaky_spirits_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "逃げたヤツにイタズラされた！",
            /* OK        */ "しとめた！",
            /* SUPERB    */ "いっぱい しとめた！！"
        }
    },
    /* SNEAKY_SPIRITS_2 */ {
        /* Entry Scene   */ &scene_sneaky_spirits_2,
        /* Level Name    */ "しろいおばけ ２",
        /* Level Desc.   */ "白いヤツが こちらを\n"
                            "ナメきっている！\n"
                            "ムカムカーッ！！\n"
                            "こらしめちゃおう！",
        /* Level Icon    */ 53,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_sneaky_spirits_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "うわー！ やられほうだいだ！",
            /* OK        */ "おばけ「ナ、ナンダヨ～」",
            /* SUPERB    */ "みんな、反省してネ！"
        }
    },
    /* SAMURAI_SLICE */ {
        /* Entry Scene   */ &scene_samurai_slice,
        /* Level Name    */ "ゐあひ斬り",
        /* Level Desc.   */ "そこのけ そこのけ\n"
                            "奴らが通る。\n"
                            "おぬしは サムライ、\n"
                            "斬り捨て 御免！",
        /* Level Icon    */ 18,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_samurai_slice_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "刃こぼれしちまった！",
            /* OK        */ "さらに精進（しょうじん）すべし！",
            /* SUPERB    */ "切れあじ、 サイコーだ！！"
        }
    },
    /* SPACEBALL */ {
        /* Entry Scene   */ &scene_spaceball,
        /* Level Name    */ "エアーバッター",
        /* Level Desc.   */ "ズームをきにするな！\n"
                            "心でボールを打て！\n"
                            "視覚に頼るな！\n"
                            "どんと行け～！",
        /* Level Icon    */ 9,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_spaceball_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "これで ゆるしてください。",
            /* OK        */ "さらに上を目指して練習だ！",
            /* SUPERB    */ "こんなの もらっちゃったー！"
        }
    },
    /* SPACEBALL_2 */ {
        /* Entry Scene   */ &scene_spaceball_2,
        /* Level Name    */ "エアーバッター ２",
        /* Level Desc.   */ "ズームをきにするな！\n"
                            "心でボールを打て！\n"
                            "視覚に頼るな！\n"
                            "涙もふくな～！",
        /* Level Icon    */ 52,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_spaceball_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ナニスルノデスカー！",
            /* OK        */ "こんなところで 終われない！",
            /* SUPERB    */ "みんな、見て見てー！"
        }
    },
    /* TAP_TRIAL */ {
        /* Entry Scene   */ &scene_tap_trial,
        /* Level Name    */ "タップダンズ",
        /* Level Desc.   */ "あなたは女の子。\n"
                            "となりのサルたちに\n"
                            "合わせてタップを\n"
                            "きざむッス！",
        /* Level Icon    */ 6,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_tap_trial_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "無念だわ。",
            /* OK        */ "ちょっと、 ヘンなトコあったけどネ！",
            /* SUPERB    */ "気分は もう、サイコー！！"
        }
    },
    /* TAP_TRIAL_2 */ {
        /* Entry Scene   */ &scene_tap_trial_2,
        /* Level Name    */ "スーパータップ",
        /* Level Desc.   */ "サルがパワーアップ！\n"
                            "あなたは かれらに\n"
                            "ついていけるか！？\n"
                            "まけるな～！",
        /* Level Icon    */ 11,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_tap_trial_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ガーン！",
            /* OK        */ "う～ん… すこし ちがうカンジ…",
            /* SUPERB    */ "この気持ち、とまらなーい！"
        }
    },
    /* MARCHING_ORDERS */ {
        /* Entry Scene   */ &scene_marching_orders,
        /* Level Name    */ "マーチャ",
        /* Level Desc.   */ "行進をするのだ。\n"
                            "かってな行動はチームをダメにする！\n"
                            "がんばりたまえ。",
        /* Level Icon    */ 21,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_marching_orders_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "わぁっ！おいてけぼりされた！",
            /* OK        */ "今日の任務は、おそうじでーす♪",
            /* SUPERB    */ "宇宙人の救出、大成功！！"
        }
    },
    /* MARCHING_ORDERS_2 */ {
        /* Entry Scene   */ &scene_marching_orders_2,
        /* Level Name    */ "マーチャ ２",
        /* Level Desc.   */ "行進をするのだ。\n"
                            "こんどのは ちょっと\n"
                            "テクニカルだ！\n"
                            "がんばりたまえ。",
        /* Level Icon    */ 20,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_marching_orders_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "こ、これでは、イカン！う～む…",
            /* OK        */ "ぐっ！ もっとカッコよくおどらなければ！",
            /* SUPERB    */ "ごほうびに、こんなのもらってしまった！！"
        }
    },
    /* WIZARDS_WALTZ */ {
        /* Entry Scene   */ &scene_wizards_waltz,
        /* Level Name    */ "まほうつかい",
        /* Level Desc.   */ "あなたはまほう使い。\n"
                            "さみしがりやの\n"
                            "おじょうちゃんに花を\n"
                            "プレゼントしよう。",
        /* Level Icon    */ 23,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_wizards_waltz_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "こんなのヤダ～、 こわいヨ～！",
            /* OK        */ "もっと 花がさくと うれしいな～。",
            /* SUPERB    */ "わーい、 わたし もう さみしくないヨ！"
        }
    },
    /* BUNNY_HOP */ {
        /* Entry Scene   */ &scene_bunny_hop,
        /* Level Name    */ "ウサギとび",
        /* Level Desc.   */ "ジャンプが得意な\n"
                            "白いウサギさん。\n"
                            "ビートにのって\n"
                            "海をわたろう！",
        /* Level Icon    */ 24,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bunny_hop_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "月に帰りた～い！",
            /* OK        */ "着地は失敗しちゃった…",
            /* SUPERB    */ "まん点！！"
        }
    },
    /* FIREWORKS */ {
        /* Entry Scene   */ &scene_fireworks,
        /* Level Name    */ "花火",
        /* Level Desc.   */ "夏といえばさ、\n"
                            "やっぱ花火かな？\n"
                            "色あざやかに\n"
                            "打ち上げよう！",
        /* Level Icon    */ 26,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_fireworks_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ゲホゲホッ… 失敗。",
            /* OK        */ "なかなかのデキだぜ！",
            /* SUPERB    */ "花火のことならオレにまかせろ！！"
        }
    },
    /* POWER_CALLIGRAPHY */ {
        /* Entry Scene   */ &scene_power_calligraphy,
        /* Level Name    */ "リズムお習字",
        /* Level Desc.   */ "筆を使って日本語を\n"
                            "書きます。\n"
                            "あなたがするのは\n"
                            "オイシイとこだけ。",
        /* Level Icon    */ 28,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_power_power_calligraphy_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ふ～…  アカンわ。",
            /* OK        */ "お習字を もっと楽しもう！",
            /* SUPERB    */ "お習字って ノリノリだネ！！"
        }
    },
    /* POWER_CALLIGRAPHY_2 */ {
        /* Entry Scene   */ &scene_power_calligraphy,
        /* Level Name    */ "リズムお習字 ２",
        /* Level Desc.   */ "筆を使って日本語を\n"
                            "書きます。\n"
                            "あなたがするのは\n"
                            "オイシイとこだけ。",
        /* Level Icon    */ 28,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_power_calligraphy_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ふ～…  アカンわ。",
            /* OK        */ "お習字を もっと楽しもう！",
            /* SUPERB    */ "お習字って ノリノリだネ！！"
        }
    },
    /* TOSS_BOYS */ {
        /* Entry Scene   */ &scene_toss_boys,
        /* Level Name    */ "トスボーイズ",
        /* Level Desc.   */ "なかよし３人組、\n"
                            "声をかけあいながら\n"
                            "いつも楽しくトスの\n"
                            "練習してます。",
        /* Level Icon    */ 30,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_toss_boys_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ダメダメだァ～！",
            /* OK        */ "まだまだもっと上手にできるはず！",
            /* SUPERB    */ "目標は、 トス世界選手権 優勝だー！！"
        }
    },
    /* TOSS_BOYS_2 */ {
        /* Entry Scene   */ &scene_toss_boys_2,
        /* Level Name    */ "トスボーイズ ２",
        /* Level Desc.   */ "なかよし３人組、\n"
                            "声をかけあいながら\n"
                            "いつも楽しくトスの\n"
                            "練習してます。",
        /* Level Icon    */ 29,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_toss_boys_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ボロボロだァ～！",
            /* OK        */ "こんなところで 終われない！",
            /* SUPERB    */ "最強メンバーのたんじょうだー！！"
        }
    },
    /* RAT_RACE */ {
        /* Entry Scene   */ &scene_rat_race,
        /* Level Name    */ "こっそり ラット",
        /* Level Desc.   */ "あなたはネズミ。\n"
                            "大スキなチーズを\n"
                            "めざして\n"
                            "ストップ＆ゴー！！",
        /* Level Icon    */ 31,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rat_race_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "チーズ 食べたいよ～…",
            /* OK        */ "チーズ おいしいね。",
            /* SUPERB    */ "みんな、 よかったネ！"
        }
    },
    /* TRAM_PAULINE */ {
        /* Entry Scene   */ &scene_tram_pauline,
        /* Level Name    */ "トランとポリン",
        /* Level Desc.   */ "こぎつねトラン、\n"
                            "そしてポリンの\n"
                            "アクロバティックショーがはじまるヨ！",
        /* Level Icon    */ 32,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_tram_pauline_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "大しっぱいだ～！！",
            /* OK        */ "ちゅうとハンパでした…",
            /* SUPERB    */ "コンビネーション バッチシ！！"
        }
    },
    /* SHOWTIME */ {
        /* Entry Scene   */ &scene_showtime,
        /* Level Name    */ "ショータイム",
        /* Level Desc.   */ "ペンギン君たちの\n"
                            "ショータイムが\n"
                            "はじまるヨ！\n"
                            "わーいわーい！",
        /* Level Icon    */ 36,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_showtime_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "お客さん、 おこってたネ…",
            /* OK        */ "ボクたち こんなもんじゃないはず…",
            /* SUPERB    */ "やった！！ お客さん 楽しんでくれたー！！"
        }
    },
    /* SPACE_DANCE */ {
        /* Entry Scene   */ &scene_space_dance,
        /* Level Name    */ "スペースダンス",
        /* Level Desc.   */ "ここは無重力の宇宙。\n"
                            "でも、 おどろうヨ！\n"
                            "レッツスペースダンス！",
        /* Level Icon    */ 40,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_space_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ブ、 ブラックホールだー！！",
            /* OK        */ "あの星のように かがやきたいな…",
            /* SUPERB    */ "ボクたちは スペーススーパースター！！"
        }
    },
    /* COSMIC_DANCE */ {
        /* Entry Scene   */ &scene_cosmic_dance,
        /* Level Name    */ "コスモダンス",
        /* Level Desc.   */ "宇宙を代表\する\n"
                            "ダンサーたち！\n"
                            "キレた動きに\n"
                            "くぎづけです！！",
        /* Level Icon    */ 16,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_cosmic_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "お、おわりだー！！",
            /* OK        */ "あなたたちって こんなものなの？",
            /* SUPERB    */ "ボクたちは スーパーコスモスターさ！！"
        }
    },
    /* RAP_MEN */ {
        /* Entry Scene   */ &scene_rap_men,
        /* Level Name    */ "ラップメン",
        /* Level Desc.   */ "クールなふたり組が\n"
                            "やってきた！\n"
                            "アツいラップで\n"
                            "大コーフンだぜ！",
        /* Level Icon    */ 42,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rap_men_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "オレたち、 ダサいやん…",
            /* OK        */ "チェッ。 なんか 調子わるいわぁ。",
            /* SUPERB    */ "これからも よろしく たのんまっせー！！"
        }
    },
    /* RAP_WOMEN */ {
        /* Entry Scene   */ &scene_rap_women,
        /* Level Name    */ "ラップウイメン",
        /* Level Desc.   */ "あのラップメンに\n"
                            "ライバルが登場だ！\n"
                            "キュートなボイスに\n"
                            "もう メロメロ！",
        /* Level Icon    */ 15,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rap_women_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "こんなん ちゃうわぁ…",
            /* OK        */ "なんか ちょっと イマイチかも…！",
            /* SUPERB    */ "そうそう コレコレ、これやわー！！イェーイ！"
        }
    },
    /* QUIZ_SHOW */ {
        /* Entry Scene   */ &scene_quiz_show,
        /* Level Name    */ "クイズ",
        /* Level Desc.   */ "司会者の、\n"
                            "「たたいた回数」を\n"
                            "当てるカンタンな\n"
                            "クイズです。",
        /* Level Icon    */ 43,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_quiz_show_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "ま、 こんなものさ。",
            /* OK        */ "次回に向けて 勉強、勉強…Zzz",
            /* SUPERB    */ "世界旅行 もらっちゃった！"
        }
    },
    /* BON_ODORI */ {
        /* Entry Scene   */ &scene_bon_odori,
        /* Level Name    */ "ザ☆ぼんおどり",
        /* Level Desc.   */ "ぼんおどりの\n"
                            "うたに あわせて\n"
                            "パンッと 手を\n"
                            "たたきましょう。",
        /* Level Icon    */ 35,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bon_odori_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "さむいわ…",
            /* OK        */ "せんこう花火って、せつないね。",
            /* SUPERB    */ "あー、楽しかった！"
        }
    },
    /* BON_DANCE */ {
        /* Entry Scene   */ &scene_bon_dance,
        /* Level Name    */ "ボンダンス",
        /* Level Desc.   */ "これが いまどきの\n"
                            "ぼんおどり！\n"
                            "ノリノリだヨ！\n"
                            "イェーイ！",
        /* Level Icon    */ 17,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bon_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "もういや…",
            /* OK        */ "うーん、雨がふってきちゃった。",
            /* SUPERB    */ "ボンダンスって すごく楽しいよネー！"
        }
    },
    /* REMIX_1 */ {
        /* Entry Scene   */ &scene_remix_1,
        /* Level Name    */ "リミックス １",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 22,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix1_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回のデキ ： 猫のおやつクラス",
            /* OK        */ "今回のデキ ： 朝食クラス",
            /* SUPERB    */ "今回のデキ ： なんと、 ディナークラス！！"
        }
    },
    /* REMIX_2 */ {
        /* Entry Scene   */ &scene_remix_2,
        /* Level Name    */ "リミックス ２",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 27,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回の熱気 ： ひとりで練習レベル",
            /* OK        */ "今回の熱気 ： 楽しくキャッチボールレベル",
            /* SUPERB    */ "今回の熱気 ： すごい大会レベル！！"
        }
    },
    /* REMIX_3 */ {
        /* Entry Scene   */ &scene_remix_3,
        /* Level Name    */ "リミックス ３",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 33,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix3_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回のラブ ： ブロークンハートかも…",
            /* OK        */ "今回のラブ ： とってもフレンドリーな感じ♪",
            /* SUPERB    */ "今回のラブ ： ラブラブでーす！！"
        }
    },
    /* REMIX_4 */ {
        /* Entry Scene   */ &scene_remix_4,
        /* Level Name    */ "リミックス ４",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 34,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix4_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回の天気 ： 雨",
            /* OK        */ "今回の天気 ： くもり",
            /* SUPERB    */ "今回の天気 ： ハッピーな晴れ！！"
        }
    },
    /* REMIX_5 */ {
        /* Entry Scene   */ &scene_remix_5,
        /* Level Name    */ "リミックス ５",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 39,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix5_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回のふたり ： ジャマされてしまった！",
            /* OK        */ "今回のふたり ： このさき、チョット不安かも…",
            /* SUPERB    */ "今回のふたり ： 幸せになりました♪"
        }
    },
    /* REMIX_6 */ {
        /* Entry Scene   */ &scene_remix_6,
        /* Level Name    */ "リミックス ６",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 2,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix6_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回の内容 ： ややさみしいカンジ",
            /* OK        */ "今回の内容 ： 意外なカンジ",
            /* SUPERB    */ "今回の内容 ： アンビリーバボーなカンジ！！"
        }
    },
    /* REMIX_7 */ {
        /* Entry Scene   */ &scene_remix_7,
        /* Level Name    */ "リミックス ７",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 19,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix7_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回のきょうりゅう ： いじわる",
            /* OK        */ "今回のきょうりゅう ： ほのぼの",
            /* SUPERB    */ "今回のきょうりゅう ： 楽しすぎ～！！"
        }
    },
    /* REMIX_8 */ {
        /* Entry Scene   */ &scene_remix_8,
        /* Level Name    */ "リミックス ８",
        /* Level Desc.   */ "キミの実力を\n"
                            "試してみてみる？\n"
                            "これまでの経験が\n"
                            "モノを言うヨ～！",
        /* Level Icon    */ 37,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix8_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "今回のドライブ ： んもぅ…",
            /* OK        */ "今回のドライブ ： まだまだかかるなぁ",
            /* SUPERB    */ "今回のドライブ ： とっても爽快！！"
        }
    },
    /* CAFE */ {
        /* Entry Scene   */ &scene_cafe,
        /* Level Name    */ "喫茶カウンセル",
        /* Level Desc.   */ "最近の調子 どう？\n"
                            "なにか気になれば\n"
                            "ここで相談を\n"
                            "してみよう。",
        /* Level Icon    */ 45,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_cafe_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* RHYTHM_TOYS */ {
        /* Entry Scene   */ &scene_toys_menu,
        /* Level Name    */ "おもちゃ",
        /* Level Desc.   */ "メダルを あつめて\n"
                            "音のでるおもちゃで\n"
                            "あそんでみてネ！\n"
                            "いくつかあるヨ。",
        /* Level Icon    */ 46,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_toys_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* ENDLESS_GAMES */ {
        /* Entry Scene   */ &scene_endless_menu,
        /* Level Name    */ "ゲーム",
        /* Level Desc.   */ "メダルを あつめて\n"
                            "とくべつなゲームに\n"
                            "挑戦してみてネ！\n"
                            "いくつかあるヨ。",
        /* Level Icon    */ 47,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_endless_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* DRUM_LESSONS */ {
        /* Entry Scene   */ &scene_lessons_menu,
        /* Level Name    */ "ドラムレッスン",
        /* Level Desc.   */ "メダルを あつめて\n"
                            "ドラムのレッスンを\n"
                            "うけてみよう。\n"
                            "上手になってネ！",
        /* Level Icon    */ 48,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_lessons_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* STAFF_CREDIT */ {
        /* Entry Scene   */ &scene_staff_credit,
        /* Level Name    */ "スタッフ",
        /* Level Desc.   */ "もし よかったら\n"
                            "見てみてネ。\n"
                            "このゲームの\n"
                            "スタッフたちです。",
        /* Level Icon    */ 49,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_staff_credit_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* LIVE_MENU */ {
        /* Entry Scene   */ &scene_drum_live,
        /* Level Name    */ "ライブ",
        /* Level Desc.   */ "ライブに出演だ！\n"
                            "キミのリズム感は\n"
                            "よいと思うから\n"
                            "どうぞお気楽に～",
        /* Level Icon    */ 44,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_drum_live_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "おばちゃん「またつぎ、がんばりなよ！」",
            /* OK        */ "オーナー「キミ、なかなか スジあるヨ」",
            /* SUPERB    */ "プロデューサー「うちで、ガンバってみない？」"
        }
    }
};
