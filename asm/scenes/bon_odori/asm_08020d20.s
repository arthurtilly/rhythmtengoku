asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020d20 \n\
/* 08020d20 */ PUSH {R4-R6, LR} \n\
/* 08020d22 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08020d24 */ PUSH {R6} \n\
/* 08020d26 */ SUB SP, 0x8 \n\
/* 08020d28 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08020d2a */ BL func_0800c3b8 \n\
/* 08020d2e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020d30 */ LSLS R4, R4, 0x10 \n\
/* 08020d32 */ LSRS R4, R4, 0x10 \n\
/* 08020d34 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08020d36 */ BL func_0800c3a4 \n\
/* 08020d3a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020d3c */ LSLS R1, R1, 0x18 \n\
/* 08020d3e */ LSRS R1, R1, 0x18 \n\
/* 08020d40 */ LDR R6, =D_030055d0 \n\
/* 08020d42 */ LDR R0, [R6] \n\
/* 08020d44 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08020d46 */ ADDS R3, 0x60 @ Add 0x60 to R3 \n\
/* 08020d48 */ LDR R0, [R0, 0x58] \n\
/* 08020d4a */ STR R0, [SP] \n\
/* 08020d4c */ LDR R5, =D_03004b64 \n\
/* 08020d4e */ STR R5, [SP, 0x4] \n\
/* 08020d50 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020d52 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08020d54 */ BL func_08001fe0 \n\
/* 08020d58 */ BL func_0800c3b8 \n\
/* 08020d5c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020d5e */ LSLS R4, R4, 0x10 \n\
/* 08020d60 */ LSRS R4, R4, 0x10 \n\
/* 08020d62 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08020d64 */ BL func_0800c3a4 \n\
/* 08020d68 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020d6a */ LSLS R1, R1, 0x18 \n\
/* 08020d6c */ LSRS R1, R1, 0x18 \n\
/* 08020d6e */ LDR R0, [R6] \n\
/* 08020d70 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08020d72 */ LSLS R2, R2, 0x3 \n\
/* 08020d74 */ ADDS R3, R0, R2 @ Set R3 to R0 + R2 \n\
/* 08020d76 */ LDR R0, [R0, 0x5C] \n\
/* 08020d78 */ STR R0, [SP] \n\
/* 08020d7a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08020d7c */ LSLS R0, R0, 0x2 \n\
/* 08020d7e */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08020d80 */ STR R5, [SP, 0x4] \n\
/* 08020d82 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020d84 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08020d86 */ BL func_08001fe0 \n\
/* 08020d8a */ ADD SP, 0x8 \n\
/* 08020d8c */ POP {R3} \n\
/* 08020d8e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020d90 */ POP {R4-R6} \n\
/* 08020d92 */ POP {R0} \n\
/* 08020d94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
