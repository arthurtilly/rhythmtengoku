asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start sick_beats_init_gfx3 \n\
/* 0804337c */ PUSH {LR} \n\
/* 0804337e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043380 */ BL func_0800c604 \n\
/* 08043384 */ BL gameplay_start_screen_fade_in \n\
/* 08043388 */ POP {R0} \n\
/* 0804338a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
