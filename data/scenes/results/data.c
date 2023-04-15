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
    ":1.1" "�c",
    ":1.5" "�b",
    ":1.4" "�a",
    ":1.6" "�`",
    ":1.2" "�r"
};


// [D_089d7998] ?
const char *D_089d7998[] = {
    "�v������@�݂��@�s�b�^�V��",
    "���Y������@�o�b�`�V��",
    "�Ȃ��Ƃ��́@����������",
    NULL
};


// [D_089d79a8] ?
    // Technique Level
    // Adaptability
    // Reflexes
const char *D_089d79a8[] = {
    "�e�N�j�b�N�@���x��",
    "�Ă������@�̂���傭",
    "�����܂́@�����Ă�@�X�s�[�h",
    NULL
};


// [D_089d79b8] ?
    // Responsibility
    //
    // Steadiness
const char *D_089d79b8[] = {
    "�����ɂ񂩂�",
    "�����@�C�b�p�c",
    "�Ă������@����",
    NULL
};


// [D_089d79c8] ?
const char *D_089d79c8[] = {
    "�V���[�g�߂́@�s�b�^�V��",
    "�����ς�Ă��@�o�b�`�V��",
    "�قǂقǂ́@����������",
    NULL
};


// [D_089d79d8] ?
const char *D_089d79d8[] = {
    "���₭�@�̂���傭",
    "������Ă��@�����̂�",
    "������",
    NULL
};


// [D_089d79e8] ?
const char *D_089d79e8[] = {
    "����Ă��́@�ق�",
    "���Y���́@����",
    "�������񂹂��@�݂����Ȃ���",
    NULL
};


// [D_089d79f8] ?
const char *D_089d79f8[] = {
    "��邫",
    "�ǂ������@����傭",
    "�܂��ނ��ȁ@������",
    NULL
};


// [D_089d7a08] ?
const char *D_089d7a08[] = {
    "��񂫂����ւ�",
    "���イ�Ȃ񂹂�",
    "���イ���Ԃ���",
    NULL
};


// [D_089d7a18] ?
const char *D_089d7a18[] = {
    "�炢�˂�́@��񂠂��@����",
    "���Ƃ��́@���񂹂�@����",
    "�������́@�Ă�",
    "���̂��́@�₵�傭",
    "�����������i���������j",
    "�������́@�悳",
    "�ɂ񂰂񂹂�",
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
