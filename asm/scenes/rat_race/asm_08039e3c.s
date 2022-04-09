asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039e3c \n\
/* 08039e3c */ PUSH {LR} \n\
/* 08039e3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039e40 */ BL func_0800c604 \n\
/* 08039e44 */ BL func_0800c3b8 \n\
/* 08039e48 */ LSLS R0, R0, 0x10 \n\
/* 08039e4a */ LSRS R0, R0, 0x10 \n\
/* 08039e4c */ LDR R1, =D_089e6634 \n\
/* 08039e4e */ BL func_080087b4 \n\
/* 08039e52 */ LDR R1, =func_08039e0c \n\
/* 08039e54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039e56 */ BL func_08005d38 \n\
/* 08039e5a */ POP {R0} \n\
/* 08039e5c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
