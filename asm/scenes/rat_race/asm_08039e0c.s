asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039e0c \n\
/* 08039e0c */ PUSH {LR} \n\
/* 08039e0e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039e10 */ BL func_0800c604 \n\
/* 08039e14 */ BL func_0800c3b8 \n\
/* 08039e18 */ LSLS R0, R0, 0x10 \n\
/* 08039e1a */ LSRS R0, R0, 0x10 \n\
/* 08039e1c */ LDR R1, =D_089e6638 \n\
/* 08039e1e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08039e20 */ LSLS R2, R2, 0x6 \n\
/* 08039e22 */ BL func_08002ee0 \n\
/* 08039e26 */ LDR R1, =func_08039dfc \n\
/* 08039e28 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039e2a */ BL func_08005d38 \n\
/* 08039e2e */ POP {R0} \n\
/* 08039e30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
