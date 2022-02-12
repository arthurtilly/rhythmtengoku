asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029f0c \n\
/* 08029f0c */ PUSH {R4-R6, LR} \n\
/* 08029f0e */ SUB SP, 0x14 \n\
/* 08029f10 */ LDR R0, =D_030055d0 \n\
/* 08029f12 */ LDR R5, [R0] \n\
/* 08029f14 */ MOVS R0, 0xD6 @ Set R0 to 0xD6 \n\
/* 08029f16 */ LSLS R0, R0, 0x2 \n\
/* 08029f18 */ ADDS R6, R5, R0 @ Set R6 to R5 + R0 \n\
/* 08029f1a */ LDR R0, =D_03005380 \n\
/* 08029f1c */ LDR R0, [R0] \n\
/* 08029f1e */ LDR R1, =D_088c9ab8 \n\
/* 08029f20 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08029f22 */ STR R2, [SP] \n\
/* 08029f24 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08029f26 */ LSLS R2, R2, 0x7 \n\
/* 08029f28 */ STR R2, [SP, 0x4] \n\
/* 08029f2a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029f2c */ STR R2, [SP, 0x8] \n\
/* 08029f2e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08029f30 */ STR R4, [SP, 0xC] \n\
/* 08029f32 */ STR R4, [SP, 0x10] \n\
/* 08029f34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029f36 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08029f38 */ BL func_0804d160 \n\
/* 08029f3c */ STRH R0, [R6, 0x4] \n\
/* 08029f3e */ LDRB R1, [R6] \n\
/* 08029f40 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08029f42 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08029f44 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029f46 */ STRB R0, [R6] \n\
/* 08029f48 */ LDR R0, =0x000003b2 \n\
/* 08029f4a */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08029f4c */ STRH R4, [R5] \n\
/* 08029f4e */ ADD SP, 0x14 \n\
/* 08029f50 */ POP {R4-R6} \n\
/* 08029f52 */ POP {R0} \n\
/* 08029f54 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
