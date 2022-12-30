asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_init_gfx3 \n\
/* 08037f84 */ PUSH {LR} \n\
/* 08037f86 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037f88 */ BL func_0800c604 \n\
/* 08037f8c */ BL gameplay_start_screen_fade_in \n\
/* 08037f90 */ POP {R0} \n\
/* 08037f92 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
