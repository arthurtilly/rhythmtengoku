
/* ------------------------ Beatscript Labels: Staff Credit ------------------------ */


@ Load Data
.macro load_staff_credit_labels
    @ Game Events
    .set PRINT_TEXT,          0x00
    .set SET_TEXT_ALIGNMENT,  0x01
    .set TOGGLE_TEXT_SCROLL,  0x02
    .set SET_BACKGROUND,      0x03

    @ Cues
    .set CUE_DEFAULT, 0x00

    @ [Event 0x01] Set Text Alignment
    .set ALIGNMENT_LEFT,   0x00
    .set ALIGNMENT_RIGHT,  0x01
    .set ALIGNMENT_CENTER, 0x02
.endm


@ Load Game: Staff Credit
.macro load_staff_credit
    load_staff_credit_labels
    load_game staff_credit_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro staff_credit_event event, args
    game_event staff_credit_engine, \event, \args
.endm


@ [Event 0x00] Print Scrolling Text
.macro staff_credit_print_text text
    staff_credit_event PRINT_TEXT, \text
.endm


@ [Event 0x01] Set Text Alignment
.macro staff_credit_set_text_alignment alignment
    staff_credit_event SET_TEXT_ALIGNMENT, \alignment
.endm


@ [Event 0x02] Stop Text Scroll
.macro staff_credit_stop_text_scroll
    staff_credit_event TOGGLE_TEXT_SCROLL, 0
.endm


@ [Event 0x03] Set Background
.macro staff_credit_set_bg gfxTable
    staff_credit_event SET_BACKGROUND, \gfxTable
.endm
