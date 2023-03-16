#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"

extern u8 D_03001338[];


  /* RESULTS - MISC. DATA */


// [D_089d7980] Main Score Handler
struct ScoreHandler *D_089d7980 = (struct ScoreHandler *)D_03001338;


// [D_089d7984] Letter Ranks
const char *D_089d7984[] = {
    ":1.1" "Ｄ",
    ":1.5" "Ｃ",
    ":1.4" "Ｂ",
    ":1.6" "Ａ",
    ":1.2" "Ｓ"
};


// [D_089d7998] ?
const char *D_089d7998[] = {
    "プロから　みた　ピッタシさ",
    "リズムかん　バッチシさ",
    "なっとくの　せいかくさ",
    NULL
};


// [D_089d79a8] ?
    // Technique Level
    // Adaptability
    // Reflexes
const char *D_089d79a8[] = {
    "テクニック　レベル",
    "てきおう　のうりょく",
    "あたまの　かいてん　スピード",
    NULL
};


// [D_089d79b8] ?
    // Responsibility
    //
    // Steadiness
const char *D_089d79b8[] = {
    "せきにんかん",
    "ここ　イッパツ",
    "てがたい　かんじ",
    NULL
};


// [D_089d79c8] ?
const char *D_089d79c8[] = {
    "シロートめの　ピッタシさ",
    "いっぱんてき　バッチシど",
    "ほどほどの　せいかくさ",
    NULL
};


// [D_089d79d8] ?
const char *D_089d79d8[] = {
    "せつやく　のうりょく",
    "ごうりてき　さいのう",
    "おちつき",
    NULL
};


// [D_089d79e8] ?
const char *D_089d79e8[] = {
    "あんていの　ほど",
    "リズムの　しん",
    "いっかんせい　みたいなもの",
    NULL
};


// [D_089d79f8] ?
const char *D_089d79f8[] = {
    "やるき",
    "どうたい　しりょく",
    "まえむきな　しせい",
    NULL
};


// [D_089d7a08] ?
const char *D_089d7a08[] = {
    "りんきおうへん",
    "じゅうなんせい",
    "ちゅういぶかさ",
    NULL
};


// [D_089d7a18] ?
const char *D_089d7a18[] = {
    "らいねんの　れんあい　うん",
    "ことしの　きんせん　うん",
    "あしたの　てんき",
    "きのうの　やしょく",
    "けつえきがた（すいそく）",
    "そだちの　よさ",
    "にんげんせい",
    NULL
};


// [D_089d7a38]
struct ResultsTextEvent D_089d7a38[] = {
    /* 0x00 */ {
        /* ? */ 8,
        /* ? */ D_089d7998,
        /* ? */ func_08019698
    },
    /* 0x01 */ {
        /* ? */ 5,
        /* ? */ D_089d79c8,
        /* ? */ func_080197a4
    },
    /* 0x02 */ {
        /* ? */ 10,
        /* ? */ D_089d79a8,
        /* ? */ func_080196fc
    },
    /* 0x03 */ {
        /* ? */ 7,
        /* ? */ D_089d79b8,
        /* ? */ func_08019750
    },
    /* 0x04 */ {
        /* ? */ 0,
        /* ? */ D_089d79d8,
        /* ? */ func_080197ec
    },
    /* 0x05 */ {
        /* ? */ 0,
        /* ? */ D_089d7a18,
        /* ? */ func_080198e8
    },
    END_OF_RESULTS_TEXT_EVENT_LIST
};


// [D_089d7a8c]
struct ResultsTextEvent D_089d7a8c[] = {
    /* 0x00 */ {
        /* ? */ 8,
        /* ? */ D_089d79c8,
        /* ? */ func_080197a4
    },
    /* 0x01 */ {
        /* ? */ 9,
        /* ? */ D_089d79e8,
        /* ? */ func_08019820
    },
    /* 0x02 */ {
        /* ? */ 7,
        /* ? */ D_089d79a8,
        /* ? */ func_080196fc
    },
    /* 0x03 */ {
        /* ? */ 6,
        /* ? */ D_089d79b8,
        /* ? */ func_08019750
    },
    /* 0x04 */ {
        /* ? */ 0,
        /* ? */ D_089d79d8,
        /* ? */ func_080197ec
    },
    /* 0x05 */ {
        /* ? */ 0,
        /* ? */ D_089d7a18,
        /* ? */ func_080198e8
    },
    END_OF_RESULTS_TEXT_EVENT_LIST
};


// [D_089d7ae0]
struct ResultsTextEvent D_089d7ae0[] = {
    /* 0x00 */ {
        /* ? */ 9,
        /* ? */ D_089d79f8,
        /* ? */ func_08019878
    },
    /* 0x01 */ {
        /* ? */ 6,
        /* ? */ D_089d79e8,
        /* ? */ func_08019820
    },
    /* 0x02 */ {
        /* ? */ 9,
        /* ? */ D_089d7a08,
        /* ? */ func_080198b0
    },
    /* 0x03 */ {
        /* ? */ 6,
        /* ? */ D_089d79b8,
        /* ? */ func_08019750
    },
    /* 0x04 */ {
        /* ? */ 0,
        /* ? */ D_089d79d8,
        /* ? */ func_080197ec
    },
    /* 0x05 */ {
        /* ? */ 0,
        /* ? */ D_089d7a18,
        /* ? */ func_080198e8
    },
    END_OF_RESULTS_TEXT_EVENT_LIST
};
