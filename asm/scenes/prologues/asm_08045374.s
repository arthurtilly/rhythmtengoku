asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045374 \n\
/* 08045374 */ PUSH {R4, R5, LR} \n\
/* 08045376 */ SUB SP, 0x14 \n\
/* 08045378 */ LDR R5, =D_030055d0 \n\
/* 0804537a */ LDR R1, [R5] \n\
/* 0804537c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804537e */ STRB R0, [R1] \n\
/* 08045380 */ BL func_08045344 \n\
/* 08045384 */ BL func_0800e0ec \n\
/* 08045388 */ STR R4, [SP] \n\
/* 0804538a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0804538c */ STR R0, [SP, 0x4] \n\
/* 0804538e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045390 */ STR R0, [SP, 0x8] \n\
/* 08045392 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045394 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045396 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045398 */ BL func_0800e0a0 \n\
/* 0804539c */ LDR R0, =D_03005380 \n\
/* 0804539e */ LDR R0, [R0] \n\
/* 080453a0 */ LDR R1, =D_088ad530 \n\
/* 080453a2 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080453a4 */ STR R2, [SP] \n\
/* 080453a6 */ STR R4, [SP, 0x4] \n\
/* 080453a8 */ STR R4, [SP, 0x8] \n\
/* 080453aa */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080453ac */ STR R2, [SP, 0xC] \n\
/* 080453ae */ STR R4, [SP, 0x10] \n\
/* 080453b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080453b2 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 080453b4 */ BL func_0804d160 \n\
/* 080453b8 */ LDR R1, [R5] \n\
/* 080453ba */ STRH R0, [R1, 0x2] \n\
/* 080453bc */ ADD SP, 0x14 \n\
/* 080453be */ POP {R4, R5} \n\
/* 080453c0 */ POP {R0} \n\
/* 080453c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
