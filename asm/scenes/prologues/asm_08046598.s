asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046598 \n\
/* 08046598 */ PUSH {R4-R6, LR} \n\
/* 0804659a */ SUB SP, 0x14 \n\
/* 0804659c */ LDR R6, =D_030055d0 \n\
/* 0804659e */ LDR R1, [R6] \n\
/* 080465a0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080465a2 */ STRB R0, [R1] \n\
/* 080465a4 */ BL func_08046568 \n\
/* 080465a8 */ BL func_0800e0ec \n\
/* 080465ac */ STR R4, [SP] \n\
/* 080465ae */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080465b0 */ STR R0, [SP, 0x4] \n\
/* 080465b2 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 080465b4 */ STR R5, [SP, 0x8] \n\
/* 080465b6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080465b8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080465ba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080465bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080465be */ BL func_0800e0a0 \n\
/* 080465c2 */ LDR R0, =D_03005380 \n\
/* 080465c4 */ LDR R0, [R0] \n\
/* 080465c6 */ LDR R1, =D_088b13c4 \n\
/* 080465c8 */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 080465ca */ STR R2, [SP] \n\
/* 080465cc */ STR R4, [SP, 0x4] \n\
/* 080465ce */ STR R5, [SP, 0x8] \n\
/* 080465d0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080465d2 */ STR R2, [SP, 0xC] \n\
/* 080465d4 */ STR R4, [SP, 0x10] \n\
/* 080465d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080465d8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080465da */ BL func_0804d160 \n\
/* 080465de */ LDR R1, [R6] \n\
/* 080465e0 */ STRH R0, [R1, 0x2] \n\
/* 080465e2 */ ADD SP, 0x14 \n\
/* 080465e4 */ POP {R4-R6} \n\
/* 080465e6 */ POP {R0} \n\
/* 080465e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
