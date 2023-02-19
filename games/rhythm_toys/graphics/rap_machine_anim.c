#include "global.h"
#include "graphics.h"

#include "rap_machine_anim_cells.inc.c"

// [D_0890e1e0] "Demo Start" Icon
struct Animation anim_rap_machine_demo_icon[] = {
    /* 000 */ { rap_machine_cel000, 16 },
    /* 001 */ { rap_machine_cel001, 16 },
    /* End */ END_ANIMATION
};

// [D_0890e1f8] A Button
struct Animation anim_rap_machine_button_a[] = {
    /* 000 */ { rap_machine_cel008, 4 },
    /* 001 */ { rap_machine_cel007, 4 },
    /* 002 */ { rap_machine_cel006, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e218] B Button
struct Animation anim_rap_machine_button_b[] = {
    /* 000 */ { rap_machine_cel011, 4 },
    /* 001 */ { rap_machine_cel010, 4 },
    /* 002 */ { rap_machine_cel009, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e238] D-Pad Up
struct Animation anim_rap_machine_button_up[] = {
    /* 000 */ { rap_machine_cel014, 4 },
    /* 001 */ { rap_machine_cel013, 4 },
    /* 002 */ { rap_machine_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e258] D-Pad Down
struct Animation anim_rap_machine_button_down[] = {
    /* 000 */ { rap_machine_cel017, 4 },
    /* 001 */ { rap_machine_cel016, 4 },
    /* 002 */ { rap_machine_cel015, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e278] D-Pad Left
struct Animation anim_rap_machine_button_left[] = {
    /* 000 */ { rap_machine_cel020, 4 },
    /* 001 */ { rap_machine_cel019, 4 },
    /* 002 */ { rap_machine_cel018, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e298] D-Pad Right
struct Animation anim_rap_machine_button_right[] = {
    /* 000 */ { rap_machine_cel023, 4 },
    /* 001 */ { rap_machine_cel022, 4 },
    /* 002 */ { rap_machine_cel021, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e2b8] Red Rapper
struct Animation anim_rap_machine_rapper_red[] = {
    /* 000 */ { rap_machine_cel024, 4 },
    /* 001 */ { rap_machine_cel025, 4 },
    /* 002 */ { rap_machine_cel026, 40 },
    /* 003 */ { rap_machine_cel026, 40 },
    /* 004 */ { rap_machine_cel026, 40 },
    /* 005 */ { rap_machine_cel027, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e2f0] Yellow Rapper
struct Animation anim_rap_machine_rapper_yellow[] = {
    /* 000 */ { rap_machine_cel028, 4 },
    /* 001 */ { rap_machine_cel029, 4 },
    /* 002 */ { rap_machine_cel030, 4 },
    /* 003 */ { rap_machine_cel031, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e318] Button Layout Test
struct Animation anim_rap_machine_button_all[] = {
    /* 000 */ { rap_machine_cel034, 3 },
    /* 001 */ { rap_machine_cel033, 3 },
    /* 002 */ { rap_machine_cel032, 40 },
    /* End */ END_ANIMATION
};
