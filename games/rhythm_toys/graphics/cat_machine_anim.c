#include "global.h"
#include "graphics.h"

#include "cat_machine_anim_cells.inc.c"

// [D_0890ddf0] "Demo Start" Icon
struct Animation anim_cat_machine_demo_icon[] = {
    /* 000 */ { cat_machine_cel000, 16 },
    /* 001 */ { cat_machine_cel001, 16 },
    /* End */ END_ANIMATION
};

// [D_0890de08] Cat Face - A/B Button Pressed
struct Animation anim_cat_machine_listen[] = {
    /* 000 */ { cat_machine_cel003, 12 },
    /* 001 */ { cat_machine_cel004, 12 },
    /* 002 */ { cat_machine_cel003, 12 },
    /* 003 */ { cat_machine_cel004, 12 },
    /* 004 */ { cat_machine_cel003, 12 },
    /* 005 */ { cat_machine_cel004, 12 },
    /* 006 */ { cat_machine_cel003, 12 },
    /* 007 */ { cat_machine_cel004, 12 },
    /* 008 */ { cat_machine_cel002, 40 },
    /* End */ END_ANIMATION
};

// [D_0890de58] Cat Face - D-Pad Pressed
struct Animation anim_cat_machine_meow[] = {
    /* 000 */ { cat_machine_cel005, 12 },
    /* 001 */ { cat_machine_cel002, 40 },
    /* End */ END_ANIMATION
};

// [D_0890de70] A Button
struct Animation anim_cat_machine_button_a[] = {
    /* 000 */ { cat_machine_cel007, 6 },
    /* 001 */ { cat_machine_cel006, 40 },
    /* End */ END_ANIMATION
};

// [D_0890de88] B Button
struct Animation anim_cat_machine_button_b[] = {
    /* 000 */ { cat_machine_cel009, 6 },
    /* 001 */ { cat_machine_cel008, 40 },
    /* End */ END_ANIMATION
};

// [D_0890dea0] D-Pad Up
struct Animation anim_cat_machine_button_up[] = {
    /* 000 */ { cat_machine_cel011, 6 },
    /* 001 */ { cat_machine_cel010, 40 },
    /* End */ END_ANIMATION
};

// [D_0890deb8] D-Pad Down
struct Animation anim_cat_machine_button_down[] = {
    /* 000 */ { cat_machine_cel013, 6 },
    /* 001 */ { cat_machine_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_0890ded0] D-Pad Left
struct Animation anim_cat_machine_button_left[] = {
    /* 000 */ { cat_machine_cel015, 6 },
    /* 001 */ { cat_machine_cel014, 40 },
    /* End */ END_ANIMATION
};

// [D_0890dee8] D-Pad Right
struct Animation anim_cat_machine_button_right[] = {
    /* 000 */ { cat_machine_cel017, 6 },
    /* 001 */ { cat_machine_cel016, 40 },
    /* End */ END_ANIMATION
};
