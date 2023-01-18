asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d504 \n\
/* 0804d504 */ PUSH {R4, R5, LR} \n\
/* 0804d506 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d508 */ LDR R2, =D_03004428 \n\
/* 0804d50a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804d50c */ STRB R0, [R2] \n\
/* 0804d50e */ LSLS R1, R1, 0x10 \n\
/* 0804d510 */ ASRS R4, R1, 0x10 \n\
/* 0804d512 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d514 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d516 */ BL func_0804cc68 \n\
/* 0804d51a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d51c */ BNE branch_0804d550 \n\
/* 0804d51e */ LDR R2, [R5, 0x8] \n\
/* 0804d520 */ LSLS R1, R4, 0x4 \n\
/* 0804d522 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d524 */ LSLS R1, R1, 0x2 \n\
/* 0804d526 */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 0804d528 */ LDRB R3, [R2] \n\
/* 0804d52a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804d52c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d52e */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804d530 */ STRB R0, [R2] \n\
/* 0804d532 */ LDR R0, [R5, 0x8] \n\
/* 0804d534 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d536 */ LDRB R2, [R1, 0x1] \n\
/* 0804d538 */ MOVS R0, 0x41 @ Set R0 to 0x41 \n\
/* 0804d53a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d53c */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804d53e */ STRB R0, [R1, 0x1] \n\
/* 0804d540 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d542 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d544 */ BL func_0804d05c \n\
/* 0804d548 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d54a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d54c */ BL func_0804d0d8 \n\
 \n\
branch_0804d550: \n\
/* 0804d550 */ POP {R4, R5} \n\
/* 0804d552 */ POP {R0} \n\
/* 0804d554 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
