#include "global.h"
#include "graphics.h"

#include "options_anim_cells.inc.c"

// [D_088f5aec] Main Banner
struct Animation anim_options_banner[] = {
    /* 000 */ { options_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5afc] Sound Option - Stereo (Selected)
struct Animation anim_options_select_stereo[] = {
    /* 000 */ { options_cel002, 2 },
    /* 001 */ { options_cel003, 2 },
    /* 002 */ { options_cel004, 2 },
    /* 003 */ { options_cel005, 2 },
    /* 004 */ { options_cel006, 40 },
    /* End */ END_ANIMATION
};

// [D_088f5b2c] Sound Option - Monaural (Selected)
struct Animation anim_options_select_mono[] = {
    /* 000 */ { options_cel008, 2 },
    /* 001 */ { options_cel009, 2 },
    /* 002 */ { options_cel010, 2 },
    /* 003 */ { options_cel011, 2 },
    /* 004 */ { options_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_088f5b5c] Save Option - Data Clear (Selected)
struct Animation anim_options_select_data_clear[] = {
    /* 000 */ { options_cel014, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5b6c] Option Description Text Box
struct Animation anim_options_desc_box[] = {
    /* 000 */ { options_cel019, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5b7c] Cursor (Barista)
struct Animation anim_options_cursor_barista[] = {
    /* 000 */ { options_cel016, 4 },
    /* 001 */ { options_cel017, 4 },
    /* 002 */ { options_cel018, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5b9c] Sound Option - Stereo (Unselected)
struct Animation anim_options_off_stereo[] = {
    /* 000 */ { options_cel007, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5bac] Sound Option - Monaural (Unselected)
struct Animation anim_options_off_mono[] = {
    /* 000 */ { options_cel013, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5bbc] Save Option - Data Clear (Unselected)
struct Animation anim_options_off_data_clear[] = {
    /* 000 */ { options_cel015, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5bcc] Data Clear Warning Text Box
struct Animation anim_options_warning_box[] = {
    /* 000 */ { options_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_088f5bdc] Cursor (Hand)
struct Animation anim_options_cursor_default[] = {
    /* 000 */ { options_cel021, 4 },
    /* 001 */ { options_cel022, 4 },
    /* 002 */ { options_cel023, 30 },
    /* End */ END_ANIMATION
};
