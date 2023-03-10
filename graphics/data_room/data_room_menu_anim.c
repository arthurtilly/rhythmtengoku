#include "global.h"
#include "graphics.h"

#include "data_room_menu_anim_cells.inc.c"

// [D_089018f8] Green LED Next to OK Sign
struct Animation anim_data_room_green_led[] = {
    /* 000 */ { data_room_menu_cel001, 40 },
    /* 001 */ { data_room_menu_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_08901910] Cursor
struct Animation anim_data_room_cursor[] = {
    /* 000 */ { data_room_menu_cel004, 4 },
    /* 001 */ { data_room_menu_cel003, 4 },
    /* 002 */ { data_room_menu_cel002, 14 },
    /* End */ END_ANIMATION
};

// [D_08901930] Character - Scroll
struct Animation anim_data_room_user_scroll[] = {
    /* 000 */ { data_room_menu_cel005, 4 },
    /* 001 */ { data_room_menu_cel006, 8 },
    /* End */ END_ANIMATION
};

// [D_08901948] Character - Stare into Screen
struct Animation anim_data_room_user_stare[] = {
    /* 000 */ { data_room_menu_cel006, 20 },
    /* 001 */ { data_room_menu_cel007, 4 },
    /* 002 */ { data_room_menu_cel008, 4 },
    /* 003 */ { data_room_menu_cel009, 4 },
    /* 004 */ { data_room_menu_cel010, 4 },
    /* 005 */ { data_room_menu_cel011, 100 },
    /* End */ END_ANIMATION
};

// [D_08901980] Character - Almost Doze Off
struct Animation anim_data_room_user_almost_sleep[] = {
    /* 000 */ { data_room_menu_cel011, 30 },
    /* 001 */ { data_room_menu_cel012, 4 },
    /* 002 */ { data_room_menu_cel013, 30 },
    /* 003 */ { data_room_menu_cel012, 4 },
    /* End */ END_ANIMATION
};

// [D_089019a8] Character - Doze Off
struct Animation anim_data_room_user_fall_asleep[] = {
    /* 000 */ { data_room_menu_cel007, 6 },
    /* 001 */ { data_room_menu_cel008, 6 },
    /* 002 */ { data_room_menu_cel009, 6 },
    /* 003 */ { data_room_menu_cel012, 6 },
    /* 004 */ { data_room_menu_cel013, 6 },
    /* 005 */ { data_room_menu_cel014, 6 },
    /* 006 */ { data_room_menu_cel015, 6 },
    /* 007 */ { data_room_menu_cel016, 6 },
    /* 008 */ { data_room_menu_cel007, 6 },
    /* 009 */ { data_room_menu_cel008, 50 },
    /* 010 */ { data_room_menu_cel009, 6 },
    /* 011 */ { data_room_menu_cel012, 6 },
    /* 012 */ { data_room_menu_cel013, 6 },
    /* 013 */ { data_room_menu_cel014, 6 },
    /* 014 */ { data_room_menu_cel015, 6 },
    /* 015 */ { data_room_menu_cel016, 6 },
    /* 016 */ { data_room_menu_cel007, 30 },
    /* 017 */ { data_room_menu_cel007, 30 },
    /* 018 */ { data_room_menu_cel008, 4 },
    /* 019 */ { data_room_menu_cel009, 4 },
    /* 020 */ { data_room_menu_cel012, 4 },
    /* 021 */ { data_room_menu_cel013, 4 },
    /* 022 */ { data_room_menu_cel014, 4 },
    /* 023 */ { data_room_menu_cel015, 4 },
    /* 024 */ { data_room_menu_cel016, 4 },
    /* 025 */ { data_room_menu_cel017, 4 },
    /* 026 */ { data_room_menu_cel017, 4 },
    /* 027 */ { data_room_menu_cel018, 20 },
    /* 028 */ { data_room_menu_cel019, 2 },
    /* 029 */ { data_room_menu_cel020, 2 },
    /* 030 */ { data_room_menu_cel021, 2 },
    /* 031 */ { data_room_menu_cel022, 100 },
    /* 032 */ { data_room_menu_cel023, 40 },
    /* 033 */ { data_room_menu_cel022, 100 },
    /* End */ END_ANIMATION
};
