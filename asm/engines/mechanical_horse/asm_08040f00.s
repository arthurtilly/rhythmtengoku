asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_init_gfx3 \n\
/* 08040f00 */ PUSH {LR} \n\
/* 08040f02 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040f04 */ BL func_0800c604 \n\
/* 08040f08 */ BL gameplay_start_screen_fade_in \n\
/* 08040f0c */ POP {R0} \n\
/* 08040f0e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
