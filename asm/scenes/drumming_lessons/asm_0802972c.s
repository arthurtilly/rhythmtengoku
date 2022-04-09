asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802972c \n\
/* 0802972c */ PUSH {R4, LR} \n\
/* 0802972e */ LDR R4, =D_030055d0 \n\
/* 08029730 */ LDR R0, [R4] \n\
/* 08029732 */ LDR R1, =0x000003cd \n\
/* 08029734 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029736 */ LDRB R0, [R0] \n\
/* 08029738 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802973a */ BNE branch_08029758 \n\
/* 0802973c */ BL func_0800184c \n\
/* 08029740 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029742 */ BEQ branch_08029758 \n\
/* 08029744 */ LDR R0, =D_03005380 \n\
/* 08029746 */ LDR R0, [R0] \n\
/* 08029748 */ LDR R1, [R4] \n\
/* 0802974a */ LDR R2, =0x000003f2 \n\
/* 0802974c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802974e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029750 */ LDRSH R1, [R1, R2] \n\
/* 08029752 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029754 */ BL func_0804d770 \n\
 \n\
branch_08029758: \n\
/* 08029758 */ LDR R4, =D_030055d0 \n\
/* 0802975a */ LDR R1, [R4] \n\
/* 0802975c */ LDR R2, =0x000003cd \n\
/* 0802975e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029760 */ LDRB R0, [R0] \n\
/* 08029762 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08029764 */ BNE branch_08029786 \n\
/* 08029766 */ SUBS R2, 0x5 @ Subtract 0x5 from R2 \n\
/* 08029768 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802976a */ LDR R0, [R0] \n\
/* 0802976c */ LDRB R0, [R0] \n\
/* 0802976e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029770 */ BNE branch_08029786 \n\
/* 08029772 */ BL func_0800184c \n\
/* 08029776 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029778 */ BEQ branch_08029786 \n\
/* 0802977a */ LDR R0, [R4] \n\
/* 0802977c */ MOVS R1, 0x83 @ Set R1 to 0x83 \n\
/* 0802977e */ LSLS R1, R1, 0x3 \n\
/* 08029780 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029782 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08029784 */ STRB R1, [R0] \n\
 \n\
branch_08029786: \n\
/* 08029786 */ POP {R4} \n\
/* 08029788 */ POP {R0} \n\
/* 0802978a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
