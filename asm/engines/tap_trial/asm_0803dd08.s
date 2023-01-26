asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_init_gfx3 \n\
/* 0803dd08 */ PUSH {LR} \n\
/* 0803dd0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803dd0c */ BL func_0800c604 \n\
/* 0803dd10 */ BL gameplay_start_screen_fade_in \n\
/* 0803dd14 */ POP {R0} \n\
/* 0803dd16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
