// [D_089cfa08] Blank
struct GameSelectOverlay D_089cfa08 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_blank2_bin,
    /* unk8    */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa14] Blank
struct GameSelectOverlay D_089cfa14 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_blank1_bin,
    /* unk8    */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa20] Not Yet Unlocked
struct GameSelectOverlay D_089cfa20 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_closed_bin,
    /* unk8    */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa2c] Not Yet Unlocked
struct GameSelectOverlay D_089cfa2c = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_closed_bin,
    /* unk8    */ (s8[]) {
        1, 24, 2, 24, -1
    }
};

// [D_089cfa38] Unlocked, Not Yet Cleared
struct GameSelectOverlay D_089cfa38 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_new_game_bin,
    /* unk8    */ (s8[]) {
        0, 5, 1, 2, 2, 2, 3, 2, 4, 2, 5, 2, 6, 2, 7, 2,
        8, 5, 8, 5, 7, 2, 6, 2, 5, 2, 4, 2, 3, 2, 2, 2,
        1, 2, 0, 5, -1
    }
};

// [D_089cfa44] Unlocked, Not Yet Cleared
struct GameSelectOverlay D_089cfa44 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_new_game_bin,
    /* unk8    */ (s8[]) {
        4, 2, 5, 2, 6, 2, 7, 2, 8, 5, 8, 5, 7, 2, 6, 2,
        5, 2, 4, 2, 12, 2, 11, 2, 10, 2, 9, 5, 9, 5, 10,
        2, 11, 2, 12, 2, -1
    }
};

// [D_089cfa50] Cleared, No Medal
struct GameSelectOverlay D_089cfa50 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_normal_border_bin,
    /* unk8    */ (s8[]) {
        0, 1, -2
    }
};

// [D_089cfa5c] Cleared, With Medal
struct GameSelectOverlay D_089cfa5c = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_medal_bin,
    /* unk8    */ (s8[]) {
        0, 40, 1, 3, 2, 3, 3, 3, 4, 3, -1
    }
};

// [D_089cfa68] Medal Corner
struct GameSelectOverlay D_089cfa68 = {
    /* Width   */ 3,
    /* Height  */ 3,
    /* Texture */ icon_overlay_striped_border_bin,
    /* unk8    */ (s8[]) {
        0, 3, 1, 3, 2, 3, 3, 3, -1
    }
};

// [D_089cfa74] Overlay Data Table
struct GameSelectOverlay *game_select_icon_overlays[] = {
    /* 0x00 */ &D_089cfa14,
    /* 0x01 */ &D_089cfa20,
    /* 0x02 */ &D_089cfa38,
    /* 0x03 */ &D_089cfa50,
    /* 0x04 */ &D_089cfa5c,
    /* 0x05 */ &D_089cfa2c,
    /* 0x06 */ &D_089cfa44,
    /* 0x07 */ &D_089cfa68,
    /* 0x08 */ NULL
};

// [D_089cfa98] ?
u8 D_089cfa98[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 1,
    /* 0x03 */ 2,
    /* 0x04 */ 3,
    /* 0x05 */ 4
};

// [D_089cfa9e] ?
u8 D_089cfa9e[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 5,
    /* 0x03 */ 6,
    /* 0x04 */ 3,
    /* 0x05 */ 4
};

// [D_089cfaa4] ?
u8 D_089cfaa4[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 1,
    /* 0x03 */ 2,
    /* 0x04 */ 7,
    /* 0x05 */ 4
};

// [D_089cfaac] ?
u8 *D_089cfaac[] = {
    /* 0x00 */ D_089cfa98,
    /* 0x01 */ D_089cfa9e,
    /* 0x02 */ D_089cfaa4
};

// [D_089cfab8] Task
struct TaskMethods D_089cfab8 = {
    (TaskStartFunc)func_08015940,
    NULL,
    (TaskUpdateFunc)func_08015988,
    NULL,
};
