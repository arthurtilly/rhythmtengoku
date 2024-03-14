.include "include/beatscript.inc"
.include "games/drum_studio/macros.inc"

load_drum_studio_labels


/* Drum Studio - Ending Scripts */


@ Fade Out
glabel D_089e2ad4
    fade_music_out 24
    fade_screen_out 12, BLACK
    rest 24
stop


@ Show Replay Options, then Fade Out
glabel D_089e2b04
    dms_event01
    dms_show_save_options
    set_tempo 140
    rest 12
    goto D_089e2ad4
