asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046d7c \n\
/* 08046d7c */ PUSH {R4, R5, LR} \n\
/* 08046d7e */ SUB SP, 0x14 \n\
/* 08046d80 */ LDR R5, =D_030055d0 \n\
/* 08046d82 */ LDR R1, [R5] \n\
/* 08046d84 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046d86 */ STRB R0, [R1] \n\
/* 08046d88 */ BL func_08046d4c \n\
/* 08046d8c */ BL func_0800e0ec \n\
/* 08046d90 */ STR R4, [SP] \n\
/* 08046d92 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046d94 */ STR R0, [SP, 0x4] \n\
/* 08046d96 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046d98 */ STR R0, [SP, 0x8] \n\
/* 08046d9a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046d9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046d9e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08046da0 */ BL func_0800e0a0 \n\
/* 08046da4 */ LDR R0, =D_03005380 \n\
/* 08046da6 */ LDR R0, [R0] \n\
/* 08046da8 */ LDR R1, =D_088b332c \n\
/* 08046daa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046dac */ STR R2, [SP] \n\
/* 08046dae */ STR R4, [SP, 0x4] \n\
/* 08046db0 */ STR R4, [SP, 0x8] \n\
/* 08046db2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08046db4 */ STR R2, [SP, 0xC] \n\
/* 08046db6 */ STR R4, [SP, 0x10] \n\
/* 08046db8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046dba */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 08046dbc */ BL func_0804d160 \n\
/* 08046dc0 */ LDR R1, [R5] \n\
/* 08046dc2 */ STRH R0, [R1, 0x2] \n\
/* 08046dc4 */ ADD SP, 0x14 \n\
/* 08046dc6 */ POP {R4, R5} \n\
/* 08046dc8 */ POP {R0} \n\
/* 08046dca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
