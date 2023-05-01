asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start power_calligraphy_init_gfx3 \n\
/* 08032ed0 */ PUSH {LR} \n\
/* 08032ed2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08032ed4 */ BL func_0800c604 \n\
/* 08032ed8 */ BL gameplay_start_screen_fade_in \n\
/* 08032edc */ POP {R0} \n\
/* 08032ede */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
