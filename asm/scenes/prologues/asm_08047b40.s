asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047b40 \n\
/* 08047b40 */ PUSH {R4-R6, LR} \n\
/* 08047b42 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08047b44 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08047b46 */ PUSH {R5, R6} \n\
/* 08047b48 */ SUB SP, 0x14 \n\
/* 08047b4a */ LDR R1, =D_030055d0 \n\
/* 08047b4c */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08047b4e */ LDR R1, [R1] \n\
/* 08047b50 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047b52 */ STRB R0, [R1] \n\
/* 08047b54 */ BL func_08047b10 \n\
/* 08047b58 */ BL func_0800e0ec \n\
/* 08047b5c */ STR R4, [SP] \n\
/* 08047b5e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047b60 */ STR R0, [SP, 0x4] \n\
/* 08047b62 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047b64 */ STR R0, [SP, 0x8] \n\
/* 08047b66 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047b68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047b6a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047b6c */ BL func_0800e0a0 \n\
/* 08047b70 */ LDR R2, =D_03005380 \n\
/* 08047b72 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08047b74 */ LDR R0, [R2] \n\
/* 08047b76 */ LDR R1, =D_088b8844 \n\
/* 08047b78 */ MOVS R5, 0x96 @ Set R5 to 0x96 \n\
/* 08047b7a */ STR R5, [SP] \n\
/* 08047b7c */ STR R4, [SP, 0x4] \n\
/* 08047b7e */ STR R4, [SP, 0x8] \n\
/* 08047b80 */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 08047b82 */ STR R6, [SP, 0xC] \n\
/* 08047b84 */ STR R4, [SP, 0x10] \n\
/* 08047b86 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047b88 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047b8a */ BL func_0804d160 \n\
/* 08047b8e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08047b90 */ LDR R1, [R2] \n\
/* 08047b92 */ STRH R0, [R1, 0x2] \n\
/* 08047b94 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08047b96 */ LDR R0, [R1] \n\
/* 08047b98 */ LDR R1, =D_088b8834 \n\
/* 08047b9a */ STR R5, [SP] \n\
/* 08047b9c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047b9e */ LSLS R2, R2, 0x4 \n\
/* 08047ba0 */ STR R2, [SP, 0x4] \n\
/* 08047ba2 */ STR R4, [SP, 0x8] \n\
/* 08047ba4 */ STR R6, [SP, 0xC] \n\
/* 08047ba6 */ STR R4, [SP, 0x10] \n\
/* 08047ba8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047baa */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047bac */ BL func_0804d160 \n\
/* 08047bb0 */ ADD SP, 0x14 \n\
/* 08047bb2 */ POP {R3, R4} \n\
/* 08047bb4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08047bb6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08047bb8 */ POP {R4-R6} \n\
/* 08047bba */ POP {R0} \n\
/* 08047bbc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
