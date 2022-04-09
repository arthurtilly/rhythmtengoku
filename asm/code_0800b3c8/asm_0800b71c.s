asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b71c \n\
/* 0800b71c */ PUSH {R4-R6, LR} \n\
/* 0800b71e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b720 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0800b722 */ LDR R4, [R5, 0x4] \n\
/* 0800b724 */ B branch_0800b728 \n\
 \n\
branch_0800b726: \n\
/* 0800b726 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
 \n\
branch_0800b728: \n\
/* 0800b728 */ LDRB R0, [R4] \n\
/* 0800b72a */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 0800b72c */ BNE branch_0800b726 \n\
/* 0800b72e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800b730 */ STRB R1, [R4] \n\
/* 0800b732 */ LDR R1, =0x3ff \n\
/* 0800b734 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800b736 */ LSLS R1, R1, 0x8 \n\
/* 0800b738 */ LDR R0, [R4] \n\
/* 0800b73a */ LDR R2, =0xfffc00ff \n\
/* 0800b73c */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800b73e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800b740 */ STR R0, [R4] \n\
/* 0800b742 */ STR R6, [R4, 0x4] \n\
/* 0800b744 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0800b746 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800b748 */ STRB R0, [R4] \n\
/* 0800b74a */ LDR R0, [R4] \n\
/* 0800b74c */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800b74e */ STR R0, [R4] \n\
/* 0800b750 */ STR R3, [R4, 0x4] \n\
/* 0800b752 */ LDRB R0, [R5] \n\
/* 0800b754 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800b756 */ STRB R0, [R5] \n\
/* 0800b758 */ POP {R4-R6} \n\
/* 0800b75a */ POP {R0} \n\
/* 0800b75c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
