#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"
#include "text/results_text.h"


  /* RESULTS - MISC. DATA */


extern u8 D_03001338[];

// [D_089d7980] Main Score Handler
struct ScoreHandler *D_089d7980 = (struct ScoreHandler *)D_03001338;

// [D_089d7984] Letter Ranks
const char *D_089d7984[] = {
    D_08054c28,
    D_08054c20,
    D_08054c18,
    D_08054c10,
    D_08054c08
};

// [D_089d7998] ?
const char *D_089d7998[] = {
    D_08054c60,
    D_08054c48,
    D_08054c30,
    NULL
};

// [D_089d79a8] ?
const char *D_089d79a8[] = {
    D_08054cb4,
    D_08054c9c,
    D_08054c7c,
    NULL
};

// [D_089d79b8] ?
const char *D_089d79b8[] = {
    D_08054cec,
    D_08054cdc,
    D_08054cc8,
    NULL
};

// [D_089d79c8] ?
const char *D_089d79c8[] = {
    D_08054d30,
    D_08054d14,
    D_08054cfc,
    NULL
};

// [D_089d79d8] ?
const char *D_089d79d8[] = {
    D_08054d70,
    D_08054d58,
    D_08054d4c,
    NULL
};

// [D_089d79e8] ?
const char *D_089d79e8[] = {
    D_08054db4,
    D_08054da4,
    D_08054d88,
    NULL
};

// [D_089d79f8] ?
const char *D_089d79f8[] = {
    D_08054df0,
    D_08054ddc,
    D_08054dc8,
    NULL
};

// [D_089d7a08] ?
const char *D_089d7a08[] = {
    D_08054e18,
    D_08054e08,
    D_08054df8,
    NULL
};

// [D_089d7a18] ?
const char *D_089d7a18[] = {
    D_08054ea8,
    D_08054e8c,
    D_08054e78,
    D_08054e64,
    D_08054e48,
    D_08054e38,
    D_08054e28,
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

// [D_089d7b34] Rank Comment Pool (Try Again)
const char *results_try_again_comment_pool[] = {
    D_08054f14,
    D_08054f0c,
    D_08054f04
};

// [D_089d7b40] Rank Comment Pool (OK)
const char *results_ok_comment_pool[] = {
    D_08054f74,
    D_08054f60,
    D_08054f4c,
    D_08054f3c
};
