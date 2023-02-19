#include "global.h"
#include "graphics.h"

#include "gameplay_anim_cells.inc.c"

// [D_0890ab28] Pause Menu Title
struct Animation anim_gameplay_pause_title[] = {
    /* 000 */ { game_overlay_cel001, 3 },
    /* 001 */ { game_overlay_cel002, 3 },
    /* 002 */ { game_overlay_cel003, 3 },
    /* 003 */ { game_overlay_cel004, 3 },
    /* 004 */ { game_overlay_cel005, 3 },
    /* 005 */ { game_overlay_cel006, 3 },
    /* 006 */ { game_overlay_cel007, 3 },
    /* 007 */ { game_overlay_cel008, 3 },
    /* 008 */ { game_overlay_cel009, 3 },
    /* 009 */ { game_overlay_cel010, 3 },
    /* 010 */ { game_overlay_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_0890ab88] Pause Menu Options ("Continue" Selected)
struct Animation anim_gameplay_pause_option1[] = {
    /* 000 */ { game_overlay_cel011, 3 },
    /* 001 */ { game_overlay_cel012, 9 },
    /* 002 */ { game_overlay_cel011, 3 },
    /* 003 */ { game_overlay_cel013, 9 },
    /* End */ END_ANIMATION
};

// [D_0890abb0] Pause Menu Options ("Quit" Selected)
struct Animation anim_gameplay_pause_option2[] = {
    /* 000 */ { game_overlay_cel014, 3 },
    /* 001 */ { game_overlay_cel015, 9 },
    /* 002 */ { game_overlay_cel014, 3 },
    /* 003 */ { game_overlay_cel016, 9 },
    /* End */ END_ANIMATION
};

// [D_0890abd8] Skip Tutorial ("Select to Skip")
struct Animation anim_gameplay_skip_icon[] = {
    /* 000 */ { game_overlay_cel017, 40 },
    /* 001 */ { game_overlay_cel018, 40 },
    /* 002 */ { game_overlay_cel019, 40 },
    /* 003 */ { game_overlay_cel020, 40 },
    /* End */ END_ANIMATION
};

// [D_0890ac00] A Button Prompt (Black)
struct Animation anim_gameplay_text_button_black[] = {
    /* 000 */ { game_overlay_cel022, 3 },
    /* 001 */ { game_overlay_cel023, 3 },
    /* 002 */ { game_overlay_cel021, 40 },
    /* End */ END_ANIMATION
};

// [D_0890ac20] A Button Prompt (White)
struct Animation anim_gameplay_text_button_white[] = {
    /* 000 */ { game_overlay_cel025, 3 },
    /* 001 */ { game_overlay_cel026, 3 },
    /* 002 */ { game_overlay_cel024, 40 },
    /* End */ END_ANIMATION
};

// [D_0890ac40] Go For A Perfect!
struct Animation anim_gameplay_perfect_icon[] = {
    /* 000 */ { game_overlay_cel029, 40 },
    /* 001 */ { game_overlay_cel028, 20 },
    /* 002 */ { game_overlay_cel029, 40 },
    /* 003 */ { game_overlay_cel028, 20 },
    /* 004 */ { game_overlay_cel029, 40 },
    /* 005 */ { game_overlay_cel028, 20 },
    /* 006 */ { game_overlay_cel029, 40 },
    /* 007 */ { game_overlay_cel028, 20 },
    /* 008 */ { game_overlay_cel029, 40 },
    /* 009 */ { game_overlay_cel028, 20 },
    /* 010 */ { game_overlay_cel029, 100 },
    /* End */ END_ANIMATION
};

// [D_0890aca0] Fail Perfect
struct Animation anim_gameplay_perfect_miss[] = {
    /* 000 */ { game_overlay_cel036, 2 },
    /* 001 */ { game_overlay_cel037, 20 },
    /* 002 */ { game_overlay_cel038, 3 },
    /* 003 */ { game_overlay_cel039, 3 },
    /* 004 */ { game_overlay_cel040, 3 },
    /* 005 */ { game_overlay_cel038, 3 },
    /* 006 */ { game_overlay_cel039, 3 },
    /* 007 */ { game_overlay_cel040, 3 },
    /* 008 */ { game_overlay_cel038, 3 },
    /* 009 */ { game_overlay_cel039, 3 },
    /* 010 */ { game_overlay_cel040, 3 },
    /* 011 */ { game_overlay_cel038, 3 },
    /* 012 */ { game_overlay_cel039, 3 },
    /* 013 */ { game_overlay_cel040, 3 },
    /* 014 */ { game_overlay_cel038, 3 },
    /* 015 */ { game_overlay_cel039, 3 },
    /* 016 */ { game_overlay_cel040, 3 },
    /* 017 */ { game_overlay_cel038, 3 },
    /* 018 */ { game_overlay_cel039, 3 },
    /* 019 */ { game_overlay_cel040, 3 },
    /* 020 */ { game_overlay_cel038, 3 },
    /* 021 */ { game_overlay_cel039, 3 },
    /* 022 */ { game_overlay_cel040, 30 },
    /* End */ END_ANIMATION
};

// [D_0890ad60] Perfect Input
struct Animation anim_gameplay_perfect_hit[] = {
    /* 000 */ { game_overlay_cel030, 1 },
    /* 001 */ { game_overlay_cel031, 2 },
    /* 002 */ { game_overlay_cel032, 2 },
    /* 003 */ { game_overlay_cel033, 2 },
    /* 004 */ { game_overlay_cel034, 2 },
    /* 005 */ { game_overlay_cel035, 1 },
    /* 006 */ { game_overlay_cel029, 40 },
    /* End */ END_ANIMATION
};
