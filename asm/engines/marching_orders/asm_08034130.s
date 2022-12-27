asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_init_gfx3 \n\
/* 08034130 */ PUSH {LR} \n\
/* 08034132 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034134 */ BL func_0800c604 \n\
/* 08034138 */ BL gameplay_start_screen_fade_in \n\
/* 0803413c */ POP {R0} \n\
/* 0803413e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
