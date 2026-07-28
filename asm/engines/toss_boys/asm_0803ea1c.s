asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_init_gfx3 \n\
/* 0803ea1c */ PUSH {LR} \n\
/* 0803ea1e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ea20 */ BL func_0800c604 \n\
/* 0803ea24 */ BL gameplay_start_screen_fade_in \n\
/* 0803ea28 */ POP {R0} \n\
/* 0803ea2a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
