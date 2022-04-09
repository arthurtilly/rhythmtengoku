asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046fcc \n\
/* 08046fcc */ PUSH {R4, R5, LR} \n\
/* 08046fce */ SUB SP, 0x14 \n\
/* 08046fd0 */ LDR R5, =D_030055d0 \n\
/* 08046fd2 */ LDR R1, [R5] \n\
/* 08046fd4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046fd6 */ STRB R0, [R1] \n\
/* 08046fd8 */ BL func_08046f9c \n\
/* 08046fdc */ BL func_0800e0ec \n\
/* 08046fe0 */ STR R4, [SP] \n\
/* 08046fe2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046fe4 */ STR R0, [SP, 0x4] \n\
/* 08046fe6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046fe8 */ STR R0, [SP, 0x8] \n\
/* 08046fea */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046fec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046fee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08046ff0 */ BL func_0800e0a0 \n\
/* 08046ff4 */ LDR R0, =D_03005380 \n\
/* 08046ff6 */ LDR R0, [R0] \n\
/* 08046ff8 */ LDR R1, =D_088b37d8 \n\
/* 08046ffa */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 08046ffc */ STR R2, [SP] \n\
/* 08046ffe */ STR R4, [SP, 0x4] \n\
/* 08047000 */ STR R4, [SP, 0x8] \n\
/* 08047002 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08047004 */ STR R2, [SP, 0xC] \n\
/* 08047006 */ STR R4, [SP, 0x10] \n\
/* 08047008 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804700a */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0804700c */ BL func_0804d160 \n\
/* 08047010 */ LDR R1, [R5] \n\
/* 08047012 */ STRH R0, [R1, 0x2] \n\
/* 08047014 */ ADD SP, 0x14 \n\
/* 08047016 */ POP {R4, R5} \n\
/* 08047018 */ POP {R0} \n\
/* 0804701a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
