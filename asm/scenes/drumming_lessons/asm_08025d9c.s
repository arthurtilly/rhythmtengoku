asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025d9c \n\
/* 08025d9c */ PUSH {R4, R5, LR} \n\
/* 08025d9e */ SUB SP, 0xC \n\
/* 08025da0 */ LDR R0, =D_030055d0 \n\
/* 08025da2 */ LDR R4, [R0] \n\
/* 08025da4 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025da6 */ LSLS R0, R0, 0x2 \n\
/* 08025da8 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025daa */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08025dac */ BL func_08025228 \n\
/* 08025db0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025db2 */ LDR R5, =D_03005380 \n\
/* 08025db4 */ LDR R0, [R5] \n\
/* 08025db6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025db8 */ LDRSH R1, [R4, R3] \n\
/* 08025dba */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08025dbc */ STR R3, [SP] \n\
/* 08025dbe */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025dc0 */ STR R3, [SP, 0x4] \n\
/* 08025dc2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025dc4 */ STR R3, [SP, 0x8] \n\
/* 08025dc6 */ BL func_0804d8f8 \n\
/* 08025dca */ LDR R0, [R5] \n\
/* 08025dcc */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025dce */ LDRSH R1, [R4, R2] \n\
/* 08025dd0 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08025dd2 */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 08025dd4 */ BL func_0804d5d4 \n\
/* 08025dd8 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025dda */ LDRSH R0, [R4, R3] \n\
/* 08025ddc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025dde */ BL func_08025fbc \n\
/* 08025de2 */ LDR R0, [R5] \n\
/* 08025de4 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08025de6 */ LDRSH R1, [R4, R2] \n\
/* 08025de8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025dea */ BL func_0804cebc \n\
/* 08025dee */ ADD SP, 0xC \n\
/* 08025df0 */ POP {R4, R5} \n\
/* 08025df2 */ POP {R0} \n\
/* 08025df4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
