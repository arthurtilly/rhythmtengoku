asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046b84 \n\
/* 08046b84 */ PUSH {R4, R5, LR} \n\
/* 08046b86 */ SUB SP, 0x14 \n\
/* 08046b88 */ LDR R5, =D_030055d0 \n\
/* 08046b8a */ LDR R1, [R5] \n\
/* 08046b8c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046b8e */ STRB R0, [R1] \n\
/* 08046b90 */ BL func_08046b54 \n\
/* 08046b94 */ BL func_0800e0ec \n\
/* 08046b98 */ STR R4, [SP] \n\
/* 08046b9a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046b9c */ STR R0, [SP, 0x4] \n\
/* 08046b9e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046ba0 */ STR R0, [SP, 0x8] \n\
/* 08046ba2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046ba4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046ba6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08046ba8 */ BL func_0800e0a0 \n\
/* 08046bac */ LDR R0, =D_03005380 \n\
/* 08046bae */ LDR R0, [R0] \n\
/* 08046bb0 */ LDR R1, =D_088b2b9c \n\
/* 08046bb2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046bb4 */ STR R2, [SP] \n\
/* 08046bb6 */ STR R4, [SP, 0x4] \n\
/* 08046bb8 */ STR R4, [SP, 0x8] \n\
/* 08046bba */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08046bbc */ STR R2, [SP, 0xC] \n\
/* 08046bbe */ STR R4, [SP, 0x10] \n\
/* 08046bc0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046bc2 */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 08046bc4 */ BL func_0804d160 \n\
/* 08046bc8 */ LDR R1, [R5] \n\
/* 08046bca */ STRH R0, [R1, 0x2] \n\
/* 08046bcc */ ADD SP, 0x14 \n\
/* 08046bce */ POP {R4, R5} \n\
/* 08046bd0 */ POP {R0} \n\
/* 08046bd2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
