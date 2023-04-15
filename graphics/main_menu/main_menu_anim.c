#include "global.h"
#include "graphics.h"

#include "main_menu_anim_cells.inc.c"

// [D_0890a3c4] Blank
struct Animation anim_main_menu_blank1[] = {
    /* 000 */ { main_menu_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a3d4] Button - Rhythm Games (Selected)
struct Animation anim_main_menu_button_on_game_select[] = {
    /* 000 */ { main_menu_cel005, 2 },
    /* 001 */ { main_menu_cel006, 3 },
    /* 002 */ { main_menu_cel007, 17 },
    /* End */ END_ANIMATION
};

// [D_0890a3f4] Button - Rhythm Test (Selected)
struct Animation anim_main_menu_button_on_rhythm_test[] = {
    /* 000 */ { main_menu_cel009, 2 },
    /* 001 */ { main_menu_cel010, 3 },
    /* 002 */ { main_menu_cel011, 17 },
    /* End */ END_ANIMATION
};

// [D_0890a414] Button - Data Room Menu (Selected)
struct Animation anim_main_menu_button_on_data_room[] = {
    /* 000 */ { main_menu_cel013, 2 },
    /* 001 */ { main_menu_cel014, 3 },
    /* 002 */ { main_menu_cel015, 17 },
    /* End */ END_ANIMATION
};

// [D_0890a434] Button - Studio Menu (Selected)
struct Animation anim_main_menu_button_on_studio[] = {
    /* 000 */ { main_menu_cel017, 2 },
    /* 001 */ { main_menu_cel018, 3 },
    /* 002 */ { main_menu_cel019, 17 },
    /* End */ END_ANIMATION
};

// [D_0890a454] Button - Options Menu (Selected)
struct Animation anim_main_menu_button_on_options[] = {
    /* 000 */ { main_menu_cel021, 2 },
    /* 001 */ { main_menu_cel022, 3 },
    /* 002 */ { main_menu_cel023, 17 },
    /* End */ END_ANIMATION
};

// [D_0890a474] Button - Rhythm Games (Unselected)
struct Animation anim_main_menu_button_off_game_select[] = {
    /* 000 */ { main_menu_cel008, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a484] Button - Rhythm Test (Unselected)
struct Animation anim_main_menu_button_off_rhythm_test[] = {
    /* 000 */ { main_menu_cel012, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a494] Button - Data Room Menu (Unselected)
struct Animation anim_main_menu_button_off_data_room[] = {
    /* 000 */ { main_menu_cel016, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a4a4] Button - Studio Menu (Unselected)
struct Animation anim_main_menu_button_off_studio[] = {
    /* 000 */ { main_menu_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a4b4] Button - Options Menu (Unselected)
struct Animation anim_main_menu_button_off_options[] = {
    /* 000 */ { main_menu_cel024, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a4c4] Blank
struct Animation anim_main_menu_blank2[] = {
    /* 000 */ { main_menu_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_0890a4d4] Blank
struct Animation anim_main_menu_blank3[] = {
    /* 000 */ { main_menu_cel002, 4 },
    /* 001 */ { main_menu_cel003, 4 },
    /* 002 */ { main_menu_cel004, 4 },
    /* End */ END_ANIMATION
};
