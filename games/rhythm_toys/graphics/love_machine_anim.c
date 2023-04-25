#include "global.h"
#include "graphics.h"

#include "love_machine_anim_cells.inc.c"

// [D_0890e5b0] "Demo Start" Icon
struct Animation anim_love_machine_demo_icon[] = {
    /* 000 */ { love_machine_cel000, 16 },
    /* 001 */ { love_machine_cel001, 16 },
    /* End */ END_ANIMATION
};

// [D_0890e5c8] Love-san - D-Pad Pressed
struct Animation anim_love_san_speak_long[] = {
    /* 000 */ { love_machine_cel024, 2 },
    /* 001 */ { love_machine_cel025, 2 },
    /* 002 */ { love_machine_cel026, 6 },
    /* 003 */ { love_machine_cel027, 4 },
    /* 004 */ { love_machine_cel028, 4 },
    /* 005 */ { love_machine_cel020, 3 },
    /* 006 */ { love_machine_cel028, 3 },
    /* 007 */ { love_machine_cel027, 3 },
    /* 008 */ { love_machine_cel026, 4 },
    /* 009 */ { love_machine_cel025, 2 },
    /* 010 */ { love_machine_cel024, 2 },
    /* 011 */ { love_machine_cel023, 6 },
    /* 012 */ { love_machine_cel022, 4 },
    /* 013 */ { love_machine_cel021, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e640] Love-san - A/B Button Pressed
struct Animation anim_love_san_speak_short[] = {
    /* 000 */ { love_machine_cel033, 12 },
    /* 001 */ { love_machine_cel034, 1 },
    /* 002 */ { love_machine_cel035, 2 },
    /* 003 */ { love_machine_cel034, 40 },
    /* 004 */ { love_machine_cel021, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e670] A Button
struct Animation anim_love_machine_button_a[] = {
    /* 000 */ { love_machine_cel009, 6 },
    /* 001 */ { love_machine_cel008, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e688] B Button
struct Animation anim_love_machine_button_b[] = {
    /* 000 */ { love_machine_cel011, 6 },
    /* 001 */ { love_machine_cel010, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e6a0] D-Pad - Up
struct Animation anim_love_machine_button_up[] = {
    /* 000 */ { love_machine_cel013, 6 },
    /* 001 */ { love_machine_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e6b8] D-Pad - Down
struct Animation anim_love_machine_button_down[] = {
    /* 000 */ { love_machine_cel015, 6 },
    /* 001 */ { love_machine_cel014, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e6d0] D-Pad - Left
struct Animation anim_love_machine_button_left[] = {
    /* 000 */ { love_machine_cel017, 6 },
    /* 001 */ { love_machine_cel016, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e6e8] D-Pad - Right
struct Animation anim_love_machine_button_right[] = {
    /* 000 */ { love_machine_cel019, 6 },
    /* 001 */ { love_machine_cel018, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e700] Love-san - A/B Button Pressed (Slow, Unused)
struct Animation anim_love_san_speak_short2[] = {
    /* 000 */ { love_machine_cel033, 14 },
    /* 001 */ { love_machine_cel034, 1 },
    /* 002 */ { love_machine_cel035, 3 },
    /* 003 */ { love_machine_cel034, 1 },
    /* End */ END_ANIMATION
};

// [D_0890e728] Love-san - D-Pad Pressed (Slow, Unused)
struct Animation anim_love_san_speak_long2[] = {
    /* 000 */ { love_machine_cel020, 4 },
    /* 001 */ { love_machine_cel021, 4 },
    /* 002 */ { love_machine_cel022, 4 },
    /* 003 */ { love_machine_cel023, 6 },
    /* 004 */ { love_machine_cel024, 2 },
    /* 005 */ { love_machine_cel025, 2 },
    /* 006 */ { love_machine_cel026, 8 },
    /* 007 */ { love_machine_cel027, 6 },
    /* 008 */ { love_machine_cel028, 4 },
    /* 009 */ { love_machine_cel020, 4 },
    /* 010 */ { love_machine_cel028, 4 },
    /* 011 */ { love_machine_cel027, 4 },
    /* 012 */ { love_machine_cel026, 4 },
    /* 013 */ { love_machine_cel025, 2 },
    /* 014 */ { love_machine_cel024, 2 },
    /* 015 */ { love_machine_cel023, 8 },
    /* 016 */ { love_machine_cel022, 6 },
    /* 017 */ { love_machine_cel021, 4 },
    /* End */ END_ANIMATION
};

// [D_0890e7c0] Unused Figure - D-Pad Pressed
struct Animation anim_not_love_san_speak_long[] = {
    /* 000 */ { love_machine_cel003, 6 },
    /* 001 */ { love_machine_cel004, 12 },
    /* 002 */ { love_machine_cel005, 12 },
    /* 003 */ { love_machine_cel004, 12 },
    /* 004 */ { love_machine_cel005, 12 },
    /* 005 */ { love_machine_cel004, 12 },
    /* 006 */ { love_machine_cel005, 12 },
    /* 007 */ { love_machine_cel004, 12 },
    /* 008 */ { love_machine_cel005, 12 },
    /* 009 */ { love_machine_cel004, 12 },
    /* 010 */ { love_machine_cel005, 12 },
    /* 011 */ { love_machine_cel004, 12 },
    /* 012 */ { love_machine_cel005, 12 },
    /* 013 */ { love_machine_cel004, 12 },
    /* 014 */ { love_machine_cel005, 12 },
    /* 015 */ { love_machine_cel002, 40 },
    /* End */ END_ANIMATION
};

// [D_0890e848] Unused Figure - A/B Button Pressed
struct Animation anim_not_love_san_speak_short[] = {
    /* 000 */ { love_machine_cel006, 4 },
    /* 001 */ { love_machine_cel007, 4 },
    /* 002 */ { love_machine_cel002, 20 },
    /* End */ END_ANIMATION
};
