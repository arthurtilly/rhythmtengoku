asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080196fc \n\
/* 080196fc */ PUSH {R4, LR} \n\
/* 080196fe */ LDR R0, =D_089d7980 \n\
/* 08019700 */ LDR R0, [R0] \n\
/* 08019702 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08019704 */ ADDS R2, 0x38 @ Add 0x38 to R2 \n\
/* 08019706 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019708 */ ADDS R4, 0x50 @ Add 0x50 to R4 \n\
/* 0801970a */ LDRH R0, [R4, 0x10] \n\
/* 0801970c */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 0801970e */ BLS branch_08019718 \n\
/* 08019710 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019712 */ B branch_08019744 \n\
\n\
.ltorg \n\
 \n\
branch_08019718: \n\
/* 08019718 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801971a */ LDRH R1, [R2, 0x4] \n\
/* 0801971c */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 0801971e */ BHI branch_08019722 \n\
/* 08019720 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_08019722: \n\
/* 08019722 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08019724 */ BHI branch_08019728 \n\
/* 08019726 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
 \n\
branch_08019728: \n\
/* 08019728 */ LDRH R0, [R4, 0xA] \n\
/* 0801972a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801972c */ BNE branch_08019742 \n\
/* 0801972e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08019730 */ BNE branch_08019742 \n\
/* 08019732 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 08019734 */ LDRH R0, [R2, 0x12] \n\
/* 08019736 */ LDRH R1, [R2, 0x14] \n\
/* 08019738 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801973a */ LDR R1, =0x13f \n\
/* 0801973c */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0801973e */ BGT branch_08019742 \n\
/* 08019740 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
 \n\
branch_08019742: \n\
/* 08019742 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
 \n\
branch_08019744: \n\
/* 08019744 */ POP {R4} \n\
/* 08019746 */ POP {R1} \n\
/* 08019748 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
