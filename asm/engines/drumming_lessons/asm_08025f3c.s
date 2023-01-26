asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_init_gfx3 \n\
/* 08025f3c */ PUSH {LR} \n\
/* 08025f3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025f40 */ BL func_0800c604 \n\
/* 08025f44 */ BL gameplay_start_screen_fade_in \n\
/* 08025f48 */ BL func_08025be0 \n\
/* 08025f4c */ POP {R0} \n\
/* 08025f4e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
