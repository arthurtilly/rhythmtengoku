asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047c78 \n\
/* 08047c78 */ PUSH {R4-R6, LR} \n\
/* 08047c7a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08047c7c */ PUSH {R6} \n\
/* 08047c7e */ SUB SP, 0x14 \n\
/* 08047c80 */ LDR R6, =D_030055d0 \n\
/* 08047c82 */ LDR R1, [R6] \n\
/* 08047c84 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047c86 */ STRB R0, [R1] \n\
/* 08047c88 */ BL func_08047c48 \n\
/* 08047c8c */ BL func_0800e0ec \n\
/* 08047c90 */ STR R4, [SP] \n\
/* 08047c92 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047c94 */ STR R0, [SP, 0x4] \n\
/* 08047c96 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047c98 */ STR R0, [SP, 0x8] \n\
/* 08047c9a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047c9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047c9e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047ca0 */ BL func_0800e0a0 \n\
/* 08047ca4 */ LDR R0, =D_03005380 \n\
/* 08047ca6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08047ca8 */ LDR R0, [R0] \n\
/* 08047caa */ LDR R1, =D_088b8cfc \n\
/* 08047cac */ MOVS R2, 0x11 @ Set R2 to 0x11 \n\
/* 08047cae */ STR R2, [SP] \n\
/* 08047cb0 */ STR R4, [SP, 0x4] \n\
/* 08047cb2 */ STR R4, [SP, 0x8] \n\
/* 08047cb4 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08047cb6 */ STR R5, [SP, 0xC] \n\
/* 08047cb8 */ STR R4, [SP, 0x10] \n\
/* 08047cba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047cbc */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08047cbe */ BL func_0804d160 \n\
/* 08047cc2 */ LDR R1, [R6] \n\
/* 08047cc4 */ STRH R0, [R1, 0x2] \n\
/* 08047cc6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08047cc8 */ LDR R0, [R1] \n\
/* 08047cca */ LDR R1, =D_088b8cbc \n\
/* 08047ccc */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 08047cce */ STR R2, [SP] \n\
/* 08047cd0 */ STR R4, [SP, 0x4] \n\
/* 08047cd2 */ STR R4, [SP, 0x8] \n\
/* 08047cd4 */ STR R5, [SP, 0xC] \n\
/* 08047cd6 */ STR R4, [SP, 0x10] \n\
/* 08047cd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047cda */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 08047cdc */ BL func_0804d160 \n\
/* 08047ce0 */ LDR R1, [R6] \n\
/* 08047ce2 */ STRH R0, [R1, 0x4] \n\
/* 08047ce4 */ ADD SP, 0x14 \n\
/* 08047ce6 */ POP {R3} \n\
/* 08047ce8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08047cea */ POP {R4-R6} \n\
/* 08047cec */ POP {R0} \n\
/* 08047cee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
