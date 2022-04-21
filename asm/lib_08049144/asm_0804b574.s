asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b574 \n\
/* 0804b574 */ PUSH {R4, LR} \n\
/* 0804b576 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804b578 */ LSLS R1, R1, 0x18 \n\
/* 0804b57a */ LSRS R1, R1, 0x18 \n\
/* 0804b57c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b57e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0804b580 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804b582 */ LSLS R2, R2, 0x3 \n\
/* 0804b584 */ LDRB R3, [R4, 0x1] \n\
/* 0804b586 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0804b588 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b58a */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804b58c */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804b58e */ STRB R0, [R4, 0x1] \n\
/* 0804b590 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804b592 */ BEQ branch_0804b59a \n\
/* 0804b594 */ LDR R0, [R4, 0x4] \n\
/* 0804b596 */ BL func_08049e64 \n\
 \n\
branch_0804b59a: \n\
/* 0804b59a */ POP {R4} \n\
/* 0804b59c */ POP {R0} \n\
/* 0804b59e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
