#include "global.h"
#include "graphics.h"

#include "studio_anim_cells.inc.c"

// [D_0890c3b8] Item Selection Outline (Song, Drum Kit)
struct Animation anim_studio_selection_item[] = {
    /* 000 */ { studio_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c3c8] Item Selection Outline (Options/Actions)
struct Animation anim_studio_selection_option[] = {
    /* 000 */ { studio_cel007, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c3d8] Item Symbols (Check Mark, Drum Recording)
struct Animation anim_studio_item_markers[] = {
    /* 000 */ { studio_cel009, 4 },
    /* 001 */ { studio_cel010, 4 },
    /* 002 */ { studio_cel011, 4 },
    /* 003 */ { studio_cel012, 4 },
    /* 004 */ { studio_cel013, 4 },
    /* 005 */ { studio_cel014, 4 },
    /* 006 */ { studio_cel015, 4 },
    /* 007 */ { studio_cel016, 4 },
    /* 008 */ { studio_cel017, 4 },
    /* 009 */ { studio_cel018, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c430] Item Symbol - Check Mark
struct Animation anim_studio_item_marker_check[] = {
    /* 000 */ { studio_cel019, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c440] Item Symbol - Drum Recording
struct Animation anim_studio_item_marker_replay[] = {
    /* 000 */ { studio_cel020, 4 },
    /* 001 */ { studio_cel021, 4 },
    /* 002 */ { studio_cel022, 4 },
    /* 003 */ { studio_cel023, 4 },
    /* 004 */ { studio_cel024, 4 },
    /* 005 */ { studio_cel025, 4 },
    /* 006 */ { studio_cel026, 4 },
    /* 007 */ { studio_cel027, 4 },
    /* 008 */ { studio_cel028, 4 },
    /* 009 */ { studio_cel029, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c498] Move Item - Highlight
struct Animation anim_studio_item_move_highlight[] = {
    /* 000 */ { studio_cel008, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c4a8] Move Item - Insert Above
struct Animation anim_studio_item_move_above[] = {
    /* 000 */ { studio_cel039, 4 },
    /* 001 */ { studio_cel040, 4 },
    /* 002 */ { studio_cel041, 4 },
    /* 003 */ { studio_cel042, 4 },
    /* 004 */ { studio_cel043, 4 },
    /* 005 */ { studio_cel044, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c4e0] Move Item - Insert Below
struct Animation anim_studio_item_move_below[] = {
    /* 000 */ { studio_cel050, 4 },
    /* 001 */ { studio_cel051, 4 },
    /* 002 */ { studio_cel052, 4 },
    /* 003 */ { studio_cel053, 4 },
    /* 004 */ { studio_cel054, 4 },
    /* 005 */ { studio_cel055, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c518] Warning Options - Hover on Yes
struct Animation anim_studio_warning_options_y[] = {
    /* 000 */ { studio_cel030, 4 },
    /* 001 */ { studio_cel031, 12 },
    /* 002 */ { studio_cel030, 4 },
    /* 003 */ { studio_cel032, 12 },
    /* End */ END_ANIMATION
};

// [D_0890c540] Warning Options - Hover on No
struct Animation anim_studio_warning_options_n[] = {
    /* 000 */ { studio_cel033, 4 },
    /* 001 */ { studio_cel034, 12 },
    /* 002 */ { studio_cel033, 4 },
    /* 003 */ { studio_cel035, 12 },
    /* End */ END_ANIMATION
};

// [D_0890c568] A Button Press
struct Animation anim_studio_text_adv_icon[] = {
    /* 000 */ { studio_cel038, 2 },
    /* 001 */ { studio_cel037, 3 },
    /* 002 */ { studio_cel036, 24 },
    /* End */ END_ANIMATION
};

// [D_0890c588] Yellow Arrows Around Item
struct Animation anim_studio_yellow_arrows[] = {
    /* 000 */ { studio_cel001, 4 },
    /* 001 */ { studio_cel002, 4 },
    /* 002 */ { studio_cel003, 24 },
    /* End */ END_ANIMATION
};

// [D_0890c5a8] Column Graphs (Left Side)
struct Animation anim_studio_graphs_l[] = {
    /* 000 */ { studio_cel047, 4 },
    /* 001 */ { studio_cel048, 4 },
    /* 002 */ { studio_cel049, 4 },
    /* End */ END_ANIMATION
};

// [D_0890c5c8] Column Graph (Under Options/Actions)
struct Animation anim_studio_graph_r[] = {
    /* 000 */ { studio_cel057, 4 },
    /* 001 */ { studio_cel058, 4 },
    /* 002 */ { studio_cel059, 4 },
    /* End */ END_ANIMATION
};
