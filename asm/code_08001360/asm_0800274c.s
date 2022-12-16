asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start stop_sound \n\
/* 0800274c */ PUSH {R4-R6, LR} \n\
/* 0800274e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08002750 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08002752 */ BEQ branch_08002784 \n\
/* 08002754 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08002756 */ LDR R0, =D_08aa445c \n\
/* 08002758 */ LDRB R0, [R0] \n\
/* 0800275a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0800275c */ BCS branch_08002784 \n\
/* 0800275e */ LDR R5, =D_08aa4460 \n\
 \n\
branch_08002760: \n\
/* 08002760 */ LDR R1, [R5] \n\
/* 08002762 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08002764 */ LDR R0, [R1, 0xC] \n\
/* 08002766 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08002768 */ BNE branch_0800276c \n\
/* 0800276a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_0800276c: \n\
/* 0800276c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800276e */ BEQ branch_08002778 \n\
/* 08002770 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002772 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002774 */ BL func_0804b7dc \n\
 \n\
branch_08002778: \n\
/* 08002778 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0800277a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800277c */ LDR R0, =D_08aa445c \n\
/* 0800277e */ LDRB R0, [R0] \n\
/* 08002780 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08002782 */ BCC branch_08002760 \n\
 \n\
branch_08002784: \n\
/* 08002784 */ POP {R4-R6} \n\
/* 08002786 */ POP {R0} \n\
/* 08002788 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
