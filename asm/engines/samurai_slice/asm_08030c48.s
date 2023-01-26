asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_init_gfx3 \n\
/* 08030c48 */ PUSH {LR} \n\
/* 08030c4a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c4c */ BL func_0800c604 \n\
/* 08030c50 */ BL gameplay_start_screen_fade_in \n\
/* 08030c54 */ POP {R0} \n\
/* 08030c56 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
