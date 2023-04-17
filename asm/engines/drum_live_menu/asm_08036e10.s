asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036e10 \n\
/* 08036e10 */ PUSH {LR} \n\
/* 08036e12 */ LDR R1, =drum_live_menu_poster_desc \n\
/* 08036e14 */ LSLS R0, R0, 0x2 \n\
/* 08036e16 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08036e18 */ LDR R0, [R0] \n\
/* 08036e1a */ BL gameplay_display_text \n\
/* 08036e1e */ POP {R0} \n\
/* 08036e20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
