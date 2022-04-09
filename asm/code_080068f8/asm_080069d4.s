asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080069d4 \n\
/* 080069d4 */ PUSH {R4, LR} \n\
/* 080069d6 */ SUB SP, 0x10 \n\
/* 080069d8 */ LDR R2, [R0, 0x4] \n\
/* 080069da */ LDR R1, [R0, 0x18] \n\
/* 080069dc */ LDR R4, [R0, 0x8] \n\
/* 080069de */ LDRB R3, [R1] \n\
/* 080069e0 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 080069e2 */ LDRB R1, [R1, 0x1] \n\
/* 080069e4 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 080069e6 */ STR R1, [SP] \n\
/* 080069e8 */ STR R2, [SP, 0x4] \n\
/* 080069ea */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080069ec */ LDRSH R1, [R0, R2] \n\
/* 080069ee */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 080069f0 */ STR R1, [SP, 0x8] \n\
/* 080069f2 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 080069f4 */ LDRSH R0, [R0, R1] \n\
/* 080069f6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080069f8 */ STR R0, [SP, 0xC] \n\
/* 080069fa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080069fc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080069fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08006a00 */ BL func_0800620c \n\
/* 08006a04 */ ADD SP, 0x10 \n\
/* 08006a06 */ POP {R4} \n\
/* 08006a08 */ POP {R0} \n\
/* 08006a0a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
