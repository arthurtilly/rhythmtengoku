asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046794 \n\
/* 08046794 */ PUSH {R4, R5, LR} \n\
/* 08046796 */ SUB SP, 0x14 \n\
/* 08046798 */ LDR R5, =D_030055d0 \n\
/* 0804679a */ LDR R1, [R5] \n\
/* 0804679c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804679e */ STRB R0, [R1] \n\
/* 080467a0 */ BL func_08046764 \n\
/* 080467a4 */ BL func_0800e0ec \n\
/* 080467a8 */ STR R4, [SP] \n\
/* 080467aa */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080467ac */ STR R0, [SP, 0x4] \n\
/* 080467ae */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080467b0 */ STR R0, [SP, 0x8] \n\
/* 080467b2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080467b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080467b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080467b8 */ BL func_0800e0a0 \n\
/* 080467bc */ LDR R0, =D_03005380 \n\
/* 080467be */ LDR R0, [R0] \n\
/* 080467c0 */ LDR R1, =D_088b1c9c \n\
/* 080467c2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080467c4 */ STR R2, [SP] \n\
/* 080467c6 */ STR R4, [SP, 0x4] \n\
/* 080467c8 */ STR R4, [SP, 0x8] \n\
/* 080467ca */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080467cc */ STR R2, [SP, 0xC] \n\
/* 080467ce */ STR R4, [SP, 0x10] \n\
/* 080467d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080467d2 */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080467d4 */ BL func_0804d160 \n\
/* 080467d8 */ LDR R1, [R5] \n\
/* 080467da */ STRH R0, [R1, 0x2] \n\
/* 080467dc */ ADD SP, 0x14 \n\
/* 080467de */ POP {R4, R5} \n\
/* 080467e0 */ POP {R0} \n\
/* 080467e2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
