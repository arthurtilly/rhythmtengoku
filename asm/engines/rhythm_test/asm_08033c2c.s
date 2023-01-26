asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_init_gfx3 \n\
/* 08033c2c */ PUSH {LR} \n\
/* 08033c2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033c30 */ BL func_0800c604 \n\
/* 08033c34 */ BL gameplay_start_screen_fade_in \n\
/* 08033c38 */ MOVS R0, 0x4B @ Set R0 to 0x4B \n\
/* 08033c3a */ MOVS R1, 0x5E @ Set R1 to 0x5E \n\
/* 08033c3c */ MOVS R2, 0x5E @ Set R2 to 0x5E \n\
/* 08033c3e */ BL func_080041d0 \n\
/* 08033c42 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08033c44 */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 08033c46 */ BL func_0800425c \n\
/* 08033c4a */ POP {R0} \n\
/* 08033c4c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
