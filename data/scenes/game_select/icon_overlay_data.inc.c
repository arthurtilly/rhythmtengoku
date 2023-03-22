// [D_089cfa08] Blank, Unused
struct GameSelectOverlay game_select_icon_overlay_null = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_blank2_bin,
    /* unk8       */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa14] Blank
struct GameSelectOverlay game_select_icon_overlay_hidden = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_blank1_bin,
    /* unk8       */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa20] Not Yet Unlocked (Rhythm Game)
struct GameSelectOverlay game_select_icon_overlay_closed = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_closed_bin,
    /* unk8       */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa2c] Not Yet Unlocked (Remix)
struct GameSelectOverlay game_select_icon_overlay_remix_closed = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_closed_bin,
    /* unk8       */ (s8[]) {
        1, 24, 2, 24, -1
    }
};

// [D_089cfa38] Unlocked, Not Yet Cleared (Rhythm Game)
struct GameSelectOverlay game_select_icon_overlay_uncleared = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_new_game_bin,
    /* unk8       */ (s8[]) {
        0, 5, 1, 2, 2, 2, 3, 2, 4, 2, 5, 2, 6, 2, 7, 2,
        8, 5, 8, 5, 7, 2, 6, 2, 5, 2, 4, 2, 3, 2, 2, 2,
        1, 2, 0, 5, -1
    }
};

// [D_089cfa44] Unlocked, Not Yet Cleared (Remix)
struct GameSelectOverlay game_select_icon_overlay_remix_uncleared = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_new_game_bin,
    /* unk8       */ (s8[]) {
        4, 2, 5, 2, 6, 2, 7, 2, 8, 5, 8, 5, 7, 2, 6, 2,
        5, 2, 4, 2, 12, 2, 11, 2, 10, 2, 9, 5, 9, 5, 10,
        2, 11, 2, 12, 2, -1
    }
};

// [D_089cfa50] Cleared, No Medal
struct GameSelectOverlay game_select_icon_overlay_cleared = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_normal_border_bin,
    /* unk8       */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa5c] Cleared, With Medal
struct GameSelectOverlay game_select_icon_overlay_medal = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_medal_bin,
    /* unk8       */ (s8[]) {
        0, 40, 1, 3, 2, 3, 3, 3, 4, 3, -1
    }
};

// [D_089cfa68] Medal Corner
struct GameSelectOverlay game_select_icon_overlay_bonus = {
    /* Dimensions */ 3, 3,
    /* Texture    */ icon_overlay_striped_border_bin,
    /* unk8       */ (s8[]) {
        0, 3, 1, 3, 2, 3, 3, 3, -1
    }
};

// [D_089cfa74] Overlay Data Table
struct GameSelectOverlay *level_icon_overlay_data[] = {
    /* 00 */ &game_select_icon_overlay_hidden,
    /* 01 */ &game_select_icon_overlay_closed,
    /* 02 */ &game_select_icon_overlay_uncleared,
    /* 03 */ &game_select_icon_overlay_cleared,
    /* 04 */ &game_select_icon_overlay_medal,
    /* 05 */ &game_select_icon_overlay_remix_closed,
    /* 06 */ &game_select_icon_overlay_remix_uncleared,
    /* 07 */ &game_select_icon_overlay_bonus,
    /* 08 */ NULL
};


// [D_089cfa98] Icon Overlay Map (Rhythm Game)
u8 game_level_icon_overlays_map[] = {
    /* HIDDEN    */ LEVEL_ICON_OVERLAY_BLANK,
    /* INVALID   */ LEVEL_ICON_OVERLAY_BLANK,
    /* CLOSED    */ LEVEL_ICON_OVERLAY_CLOSED,
    /* UNCLEARED */ LEVEL_ICON_OVERLAY_UNCLEARED,
    /* CLEARED   */ LEVEL_ICON_OVERLAY_CLEARED,
    /* HAS_MEDAL */ LEVEL_ICON_OVERLAY_MEDAL
};

// [D_089cfa9e] Icon Overlay Map (Remix)
u8 remix_level_icon_overlays_map[] = {
    /* HIDDEN    */ LEVEL_ICON_OVERLAY_BLANK,
    /* INVALID   */ LEVEL_ICON_OVERLAY_BLANK,
    /* CLOSED    */ LEVEL_ICON_OVERLAY_REMIX_CLOSED,
    /* UNCLEARED */ LEVEL_ICON_OVERLAY_REMIX_UNCLEARED,
    /* CLEARED   */ LEVEL_ICON_OVERLAY_CLEARED,
    /* HAS_MEDAL */ LEVEL_ICON_OVERLAY_MEDAL
};

// [D_089cfaa4] Icon Overlay Map (Medal Corner)
u8 bonus_level_icon_overlays_map[] = {
    /* HIDDEN    */ LEVEL_ICON_OVERLAY_BLANK,
    /* INVALID   */ LEVEL_ICON_OVERLAY_BLANK,
    /* CLOSED    */ LEVEL_ICON_OVERLAY_CLOSED,
    /* UNCLEARED */ LEVEL_ICON_OVERLAY_UNCLEARED,
    /* CLEARED   */ LEVEL_ICON_OVERLAY_BONUS,
    /* HAS_MEDAL */ LEVEL_ICON_OVERLAY_MEDAL
};

// [D_089cfaac] Icon Overlay Map
u8 *level_icon_overlays_map[] = {
    /* GAME  */ game_level_icon_overlays_map,
    /* REMIX */ remix_level_icon_overlays_map,
    /* BONUS */ bonus_level_icon_overlays_map
};


// [D_089cfab8] Task
struct TaskMethods D_089cfab8 = {
    (TaskStartFunc)func_08015940,
    NULL,
    (TaskUpdateFunc)func_08015988,
    NULL
};
