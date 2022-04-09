asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047630 \n\
/* 08047630 */ PUSH {LR} \n\
/* 08047632 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08047634 */ BEQ branch_0804764c \n\
/* 08047636 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08047638 */ BCC branch_08047640 \n\
/* 0804763a */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804763c */ BEQ branch_08047658 \n\
/* 0804763e */ B branch_0804765e \n\
 \n\
branch_08047640: \n\
/* 08047640 */ LDR R0, =D_030055d0 \n\
/* 08047642 */ LDR R0, [R0] \n\
/* 08047644 */ LDRH R1, [R0, 0x2] \n\
/* 08047646 */ B branch_0804765e \n\
\n\
.ltorg \n\
 \n\
branch_0804764c: \n\
/* 0804764c */ LDR R0, =D_030055d0 \n\
/* 0804764e */ LDR R0, [R0] \n\
/* 08047650 */ LDRH R1, [R0, 0x4] \n\
/* 08047652 */ B branch_0804765e \n\
\n\
.ltorg \n\
 \n\
branch_08047658: \n\
/* 08047658 */ LDR R0, =D_030055d0 \n\
/* 0804765a */ LDR R0, [R0] \n\
/* 0804765c */ LDRH R1, [R0, 0x6] \n\
 \n\
branch_0804765e: \n\
/* 0804765e */ LDR R0, =D_03005380 \n\
/* 08047660 */ LDR R0, [R0] \n\
/* 08047662 */ LSLS R1, R1, 0x10 \n\
/* 08047664 */ ASRS R1, R1, 0x10 \n\
/* 08047666 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047668 */ BL func_0804d770 \n\
/* 0804766c */ POP {R0} \n\
/* 0804766e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
