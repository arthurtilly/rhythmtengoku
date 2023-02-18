asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_init_gfx3 \n\
/* 0803cb60 */ PUSH {LR} \n\
/* 0803cb62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cb64 */ BL func_0800c604 \n\
/* 0803cb68 */ LDR R0, =D_03004b10 \n\
/* 0803cb6a */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0803cb6c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cb6e */ STRH R1, [R0] \n\
/* 0803cb70 */ BL gameplay_start_screen_fade_in \n\
/* 0803cb74 */ POP {R0} \n\
/* 0803cb76 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
