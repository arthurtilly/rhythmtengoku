#include "global.h"
#include "graphics.h"

#include "marching_orders_remix_7_anim_cells.inc.c"

// [D_08913930] Space-Rabbit March Test
struct Animation anim_space_rabbit_test[] = {
    /* 000 */ { marching_orders_remix_7_cel005, 3 },
    /* 001 */ { marching_orders_remix_7_cel006, 3 },
    /* 002 */ { marching_orders_remix_7_cel007, 3 },
    /* 003 */ { marching_orders_remix_7_cel008, 3 },
    /* 004 */ { marching_orders_remix_7_cel009, 3 },
    /* 005 */ { marching_orders_remix_7_cel008, 3 },
    /* 006 */ { marching_orders_remix_7_cel007, 3 },
    /* 007 */ { marching_orders_remix_7_cel006, 3 },
    /* 008 */ { marching_orders_remix_7_cel005, 3 },
    /* 009 */ { marching_orders_remix_7_cel010, 3 },
    /* 010 */ { marching_orders_remix_7_cel011, 3 },
    /* 011 */ { marching_orders_remix_7_cel012, 3 },
    /* 012 */ { marching_orders_remix_7_cel013, 3 },
    /* 013 */ { marching_orders_remix_7_cel012, 3 },
    /* 014 */ { marching_orders_remix_7_cel011, 3 },
    /* 015 */ { marching_orders_remix_7_cel010, 3 },
    /* 016 */ { marching_orders_remix_7_cel005, 3 },
    /* 017 */ { marching_orders_remix_7_cel006, 3 },
    /* 018 */ { marching_orders_remix_7_cel007, 3 },
    /* 019 */ { marching_orders_remix_7_cel008, 3 },
    /* 020 */ { marching_orders_remix_7_cel009, 3 },
    /* 021 */ { marching_orders_remix_7_cel008, 3 },
    /* 022 */ { marching_orders_remix_7_cel007, 3 },
    /* 023 */ { marching_orders_remix_7_cel006, 3 },
    /* 024 */ { marching_orders_remix_7_cel005, 3 },
    /* 025 */ { marching_orders_remix_7_cel010, 3 },
    /* 026 */ { marching_orders_remix_7_cel011, 3 },
    /* 027 */ { marching_orders_remix_7_cel012, 3 },
    /* 028 */ { marching_orders_remix_7_cel013, 3 },
    /* 029 */ { marching_orders_remix_7_cel012, 3 },
    /* 030 */ { marching_orders_remix_7_cel011, 3 },
    /* 031 */ { marching_orders_remix_7_cel010, 3 },
    /* 032 */ { marching_orders_remix_7_cel010, 3 },
    /* 033 */ { marching_orders_remix_7_cel005, 3 },
    /* 034 */ { marching_orders_remix_7_cel004, 30 },
    /* End */ END_ANIMATION
};

// [D_08913a50] Space-Rabbit - Turn Left
struct Animation anim_space_rabbit_turn_l[] = {
    /* 000 */ { marching_orders_remix_7_cel014, 10 },
    /* 001 */ { marching_orders_remix_7_cel015, 4 },
    /* 002 */ { marching_orders_remix_7_cel016, 4 },
    /* 003 */ { marching_orders_remix_7_cel004, 30 },
    /* End */ END_ANIMATION
};

// [D_08913a78] Space-Rabbit - Turn Right
struct Animation anim_space_rabbit_turn_r[] = {
    /* 000 */ { marching_orders_remix_7_cel018, 10 },
    /* 001 */ { marching_orders_remix_7_cel019, 4 },
    /* 002 */ { marching_orders_remix_7_cel020, 4 },
    /* 003 */ { marching_orders_remix_7_cel004, 30 },
    /* End */ END_ANIMATION
};

// [D_08913aa0] Space-Rabbit - Point Left
struct Animation anim_space_rabbit_point_l[] = {
    /* 000 */ { marching_orders_remix_7_cel023, 10 },
    /* 001 */ { marching_orders_remix_7_cel022, 4 },
    /* 002 */ { marching_orders_remix_7_cel021, 3 },
    /* 003 */ { marching_orders_remix_7_cel017, 30 },
    /* End */ END_ANIMATION
};

// [D_08913ac8] Space-Rabbit - Point Right
struct Animation anim_space_rabbit_point_r[] = {
    /* 000 */ { marching_orders_remix_7_cel026, 10 },
    /* 001 */ { marching_orders_remix_7_cel025, 4 },
    /* 002 */ { marching_orders_remix_7_cel024, 3 },
    /* 003 */ { marching_orders_remix_7_cel017, 30 },
    /* End */ END_ANIMATION
};

// [D_08913af0] Commander - Angry
struct Animation anim_space_rabbit_commander_angry[] = {
    /* 000 */ { marching_orders_remix_7_cel003, 20 },
    /* 001 */ { marching_orders_remix_7_cel002, 6 },
    /* 002 */ { marching_orders_remix_7_cel001, 6 },
    /* 003 */ { marching_orders_remix_7_cel000, 6 },
    /* End */ END_ANIMATION
};

// [D_08913b18] Space-Rabbit - Stop Beat
struct Animation anim_space_rabbit_stop_beat[] = {
    /* 000 */ { marching_orders_remix_7_cel039, 4 },
    /* 001 */ { marching_orders_remix_7_cel040, 4 },
    /* 002 */ { marching_orders_remix_7_cel041, 50 },
    /* End */ END_ANIMATION
};

// [D_08913b38] Space-Rabbit - Clap
struct Animation anim_space_rabbit_clap[] = {
    /* 000 */ { marching_orders_remix_7_cel036, 4 },
    /* 001 */ { marching_orders_remix_7_cel038, 3 },
    /* 002 */ { marching_orders_remix_7_cel037, 30 },
    /* End */ END_ANIMATION
};

// [D_08913b58] Space-Rabbit - Beat
struct Animation anim_space_rabbit_beat[] = {
    /* 000 */ { marching_orders_remix_7_cel041, 4 },
    /* 001 */ { marching_orders_remix_7_cel040, 4 },
    /* 002 */ { marching_orders_remix_7_cel039, 40 },
    /* End */ END_ANIMATION
};

// [D_08913b78] Space-Rabbit - Step Right
struct Animation anim_space_rabbit_step_r[] = {
    /* 000 */ { marching_orders_remix_7_cel073, 2 },
    /* 001 */ { marching_orders_remix_7_cel082, 2 },
    /* 002 */ { marching_orders_remix_7_cel083, 2 },
    /* 003 */ { marching_orders_remix_7_cel084, 2 },
    /* 004 */ { marching_orders_remix_7_cel085, 2 },
    /* 005 */ { marching_orders_remix_7_cel086, 2 },
    /* 006 */ { marching_orders_remix_7_cel087, 2 },
    /* 007 */ { marching_orders_remix_7_cel088, 2 },
    /* 008 */ { marching_orders_remix_7_cel089, 20 },
    /* End */ END_ANIMATION
};

// [D_08913bc8] Space-Rabbit - Step Left
struct Animation anim_space_rabbit_step_l[] = {
    /* 000 */ { marching_orders_remix_7_cel073, 2 },
    /* 001 */ { marching_orders_remix_7_cel074, 2 },
    /* 002 */ { marching_orders_remix_7_cel075, 2 },
    /* 003 */ { marching_orders_remix_7_cel076, 2 },
    /* 004 */ { marching_orders_remix_7_cel077, 2 },
    /* 005 */ { marching_orders_remix_7_cel078, 2 },
    /* 006 */ { marching_orders_remix_7_cel079, 2 },
    /* 007 */ { marching_orders_remix_7_cel080, 2 },
    /* 008 */ { marching_orders_remix_7_cel081, 20 },
    /* End */ END_ANIMATION
};

// [D_08913c18] Space-Rabbit - Turn Right (Head)
struct Animation anim_space_rabbit_head_turn_r[] = {
    /* 000 */ { marching_orders_remix_7_cel033, 10 },
    /* 001 */ { marching_orders_remix_7_cel034, 4 },
    /* 002 */ { marching_orders_remix_7_cel035, 4 },
    /* 003 */ { marching_orders_remix_7_cel029, 30 },
    /* End */ END_ANIMATION
};

// [D_08913c40] Space-Rabbit - Turn Left (Head)
struct Animation anim_space_rabbit_head_turn_l[] = {
    /* 000 */ { marching_orders_remix_7_cel030, 10 },
    /* 001 */ { marching_orders_remix_7_cel031, 4 },
    /* 002 */ { marching_orders_remix_7_cel032, 4 },
    /* 003 */ { marching_orders_remix_7_cel029, 30 },
    /* End */ END_ANIMATION
};

// [D_08913c68] Tutorial Icons
struct Animation anim_space_rabbit_tutorial_icons[] = {
    /* 000 */ { marching_orders_remix_7_cel051, 40 },
    /* 001 */ { marching_orders_remix_7_cel053, 40 },
    /* 002 */ { marching_orders_remix_7_cel054, 40 },
    /* End */ END_ANIMATION
};

// [D_08913c88] "Start to Skip" Tutorial Icon (Unused)
struct Animation anim_space_rabbit_tutorial_skip_icon[] = {
    /* 000 */ { marching_orders_remix_7_cel052, 4 },
    /* End */ END_ANIMATION
};

// [D_08913c98] Commander Frustration Cloud
struct Animation anim_space_rabbit_angry_puff[] = {
    /* 000 */ { marching_orders_remix_7_cel055, 4 },
    /* 001 */ { marching_orders_remix_7_cel056, 5 },
    /* 002 */ { marching_orders_remix_7_cel057, 4 },
    /* 003 */ { marching_orders_remix_7_cel058, 4 },
    /* 004 */ { marching_orders_remix_7_cel059, 4 },
    /* 005 */ { marching_orders_remix_7_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_08913cd0] Space-Rabbit - Dance (Body) (from WarioWare)
struct Animation anim_space_rabbit_dance_body[] = {
    /* 000 */ { marching_orders_remix_7_cel061, 8 },
    /* 001 */ { marching_orders_remix_7_cel062, 4 },
    /* 002 */ { marching_orders_remix_7_cel063, 4 },
    /* 003 */ { marching_orders_remix_7_cel064, 4 },
    /* 004 */ { marching_orders_remix_7_cel065, 8 },
    /* 005 */ { marching_orders_remix_7_cel064, 4 },
    /* 006 */ { marching_orders_remix_7_cel063, 4 },
    /* 007 */ { marching_orders_remix_7_cel062, 4 },
    /* End */ END_ANIMATION
};

// [D_08913d18] Space-Rabbit - Dance (Head) (from WarioWare)
struct Animation anim_space_rabbit_dance_head[] = {
    /* 000 */ { marching_orders_remix_7_cel066, 4 },
    /* 001 */ { marching_orders_remix_7_cel067, 4 },
    /* 002 */ { marching_orders_remix_7_cel068, 4 },
    /* 003 */ { marching_orders_remix_7_cel069, 4 },
    /* 004 */ { marching_orders_remix_7_cel070, 4 },
    /* 005 */ { marching_orders_remix_7_cel071, 4 },
    /* 006 */ { marching_orders_remix_7_cel072, 20 },
    /* End */ END_ANIMATION
};

// [D_08913d58] Space-Rabbit - Step Test 1 (Return)
struct Animation anim_space_rabbit_step_test1[] = {
    /* 000 */ { marching_orders_remix_7_cel089, 2 },
    /* 001 */ { marching_orders_remix_7_cel088, 2 },
    /* 002 */ { marching_orders_remix_7_cel087, 2 },
    /* 003 */ { marching_orders_remix_7_cel086, 2 },
    /* 004 */ { marching_orders_remix_7_cel085, 2 },
    /* 005 */ { marching_orders_remix_7_cel084, 3 },
    /* 006 */ { marching_orders_remix_7_cel083, 3 },
    /* 007 */ { marching_orders_remix_7_cel082, 4 },
    /* 008 */ { marching_orders_remix_7_cel073, 20 },
    /* 009 */ { marching_orders_remix_7_cel081, 2 },
    /* 010 */ { marching_orders_remix_7_cel080, 2 },
    /* 011 */ { marching_orders_remix_7_cel079, 2 },
    /* 012 */ { marching_orders_remix_7_cel078, 2 },
    /* 013 */ { marching_orders_remix_7_cel077, 2 },
    /* 014 */ { marching_orders_remix_7_cel076, 3 },
    /* 015 */ { marching_orders_remix_7_cel075, 3 },
    /* 016 */ { marching_orders_remix_7_cel074, 4 },
    /* 017 */ { marching_orders_remix_7_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_08913df0] Space-Rabbit - Step Test 2 (Start)
struct Animation anim_space_rabbit_step_test2[] = {
    /* 000 */ { marching_orders_remix_7_cel073, 2 },
    /* 001 */ { marching_orders_remix_7_cel074, 2 },
    /* 002 */ { marching_orders_remix_7_cel075, 2 },
    /* 003 */ { marching_orders_remix_7_cel076, 2 },
    /* 004 */ { marching_orders_remix_7_cel077, 2 },
    /* 005 */ { marching_orders_remix_7_cel078, 2 },
    /* 006 */ { marching_orders_remix_7_cel079, 2 },
    /* 007 */ { marching_orders_remix_7_cel080, 2 },
    /* 008 */ { marching_orders_remix_7_cel081, 20 },
    /* 009 */ { marching_orders_remix_7_cel073, 2 },
    /* 010 */ { marching_orders_remix_7_cel082, 2 },
    /* 011 */ { marching_orders_remix_7_cel083, 2 },
    /* 012 */ { marching_orders_remix_7_cel084, 2 },
    /* 013 */ { marching_orders_remix_7_cel085, 2 },
    /* 014 */ { marching_orders_remix_7_cel086, 2 },
    /* 015 */ { marching_orders_remix_7_cel087, 2 },
    /* 016 */ { marching_orders_remix_7_cel088, 2 },
    /* 017 */ { marching_orders_remix_7_cel089, 20 },
    /* End */ END_ANIMATION
};

// [D_08913e88] Blank
struct Animation anim_space_rabbit_blank1[] = {
    /* 000 */ { marching_orders_remix_7_cel093, 4 },
    /* End */ END_ANIMATION
};

// [D_08913e98] Blank
struct Animation anim_space_rabbit_blank2[] = {
    /* 000 */ { marching_orders_remix_7_cel093, 4 },
    /* End */ END_ANIMATION
};

// [D_08913ea8] Commander - Annoyed
struct Animation anim_space_rabbit_commander_annoyed[] = {
    /* 000 */ { marching_orders_remix_7_cel095, 30 },
    /* 001 */ { marching_orders_remix_7_cel094, 6 },
    /* 002 */ { marching_orders_remix_7_cel000, 6 },
    /* End */ END_ANIMATION
};
