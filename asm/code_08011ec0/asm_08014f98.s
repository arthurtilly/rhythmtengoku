asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014f98 \n\
/* 08014f98 */ PUSH {R4-R6, LR} \n\
/* 08014f9a */ SUB SP, 0x1C \n\
/* 08014f9c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08014f9e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08014fa0 */ STR R4, [SP] \n\
/* 08014fa2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08014fa4 */ MOVS R1, 0x1A @ Set R1 to 0x1A \n\
/* 08014fa6 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08014fa8 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08014faa */ BL func_0800a0f0 \n\
/* 08014fae */ LDR R0, [R5, 0x4] \n\
/* 08014fb0 */ STR R0, [SP, 0x18] \n\
/* 08014fb2 */ BL func_0800c3b8 \n\
/* 08014fb6 */ ADD R1, SP, 0x18 \n\
/* 08014fb8 */ STR R1, [SP] \n\
/* 08014fba */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08014fbc */ STR R5, [SP, 0x4] \n\
/* 08014fbe */ STR R4, [SP, 0x8] \n\
/* 08014fc0 */ MOVS R1, 0x68 @ Set R1 to 0x68 \n\
/* 08014fc2 */ STR R1, [SP, 0xC] \n\
/* 08014fc4 */ STR R4, [SP, 0x10] \n\
/* 08014fc6 */ SUBS R1, 0x69 @ Subtract 0x69 from R1 \n\
/* 08014fc8 */ STR R1, [SP, 0x14] \n\
/* 08014fca */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014fcc */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08014fce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08014fd0 */ BL func_0800a030 \n\
/* 08014fd4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08014fd6 */ LDR R6, =D_03005380 \n\
/* 08014fd8 */ LDR R0, [R6] \n\
/* 08014fda */ MOVS R2, 0x25 @ Set R2 to 0x25 \n\
/* 08014fdc */ STR R2, [SP] \n\
/* 08014fde */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08014fe0 */ LSLS R2, R2, 0x4 \n\
/* 08014fe2 */ STR R2, [SP, 0x4] \n\
/* 08014fe4 */ STR R5, [SP, 0x8] \n\
/* 08014fe6 */ STR R4, [SP, 0xC] \n\
/* 08014fe8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08014fea */ LSLS R2, R2, 0x8 \n\
/* 08014fec */ STR R2, [SP, 0x10] \n\
/* 08014fee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014ff0 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 08014ff2 */ BL func_0804d160 \n\
/* 08014ff6 */ LDR R4, =D_030046a4 \n\
/* 08014ff8 */ LDR R1, [R4] \n\
/* 08014ffa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08014ffc */ STRH R0, [R1, 0x34] \n\
/* 08014ffe */ LDR R0, [R6] \n\
/* 08015000 */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 08015002 */ LDRSH R1, [R1, R2] \n\
/* 08015004 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08015006 */ BL func_0804d8c4 \n\
/* 0801500a */ LDR R0, [R4] \n\
/* 0801500c */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 0801500e */ STRB R5, [R0] \n\
/* 08015010 */ ADD SP, 0x1C \n\
/* 08015012 */ POP {R4-R6} \n\
/* 08015014 */ POP {R0} \n\
/* 08015016 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
