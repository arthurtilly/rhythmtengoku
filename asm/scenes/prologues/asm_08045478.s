asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045478 \n\
/* 08045478 */ PUSH {R4, R5, LR} \n\
/* 0804547a */ SUB SP, 0x14 \n\
/* 0804547c */ LDR R5, =D_030055d0 \n\
/* 0804547e */ LDR R1, [R5] \n\
/* 08045480 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045482 */ STRB R0, [R1] \n\
/* 08045484 */ BL func_08045448 \n\
/* 08045488 */ BL func_0800e0ec \n\
/* 0804548c */ STR R4, [SP] \n\
/* 0804548e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045490 */ STR R0, [SP, 0x4] \n\
/* 08045492 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045494 */ STR R0, [SP, 0x8] \n\
/* 08045496 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045498 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804549a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804549c */ BL func_0800e0a0 \n\
/* 080454a0 */ LDR R0, =D_03005380 \n\
/* 080454a2 */ LDR R0, [R0] \n\
/* 080454a4 */ LDR R1, =D_088ad898 \n\
/* 080454a6 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 080454a8 */ STR R2, [SP] \n\
/* 080454aa */ STR R4, [SP, 0x4] \n\
/* 080454ac */ STR R4, [SP, 0x8] \n\
/* 080454ae */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080454b0 */ STR R2, [SP, 0xC] \n\
/* 080454b2 */ STR R4, [SP, 0x10] \n\
/* 080454b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080454b6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080454b8 */ BL func_0804d160 \n\
/* 080454bc */ LDR R1, [R5] \n\
/* 080454be */ STRH R0, [R1, 0x2] \n\
/* 080454c0 */ ADD SP, 0x14 \n\
/* 080454c2 */ POP {R4, R5} \n\
/* 080454c4 */ POP {R0} \n\
/* 080454c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
