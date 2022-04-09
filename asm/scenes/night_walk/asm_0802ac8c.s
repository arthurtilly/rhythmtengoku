asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ac8c \n\
/* 0802ac8c */ PUSH {R4-R6, LR} \n\
/* 0802ac8e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802ac90 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802ac92 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0802ac94 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802ac96 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802ac98 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ac9a */ BEQ branch_0802aca4 \n\
/* 0802ac9c */ LDR R0, [R5] \n\
/* 0802ac9e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802aca0 */ BL func_0802ac50 \n\
 \n\
branch_0802aca4: \n\
/* 0802aca4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802aca6 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802aca8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802acaa */ BEQ branch_0802acb4 \n\
/* 0802acac */ LDR R0, [R5, 0x4] \n\
/* 0802acae */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802acb0 */ BL func_0802ac50 \n\
 \n\
branch_0802acb4: \n\
/* 0802acb4 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0802acb6 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802acb8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802acba */ BEQ branch_0802acc4 \n\
/* 0802acbc */ LDR R0, [R5, 0x8] \n\
/* 0802acbe */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802acc0 */ BL func_0802ac50 \n\
 \n\
branch_0802acc4: \n\
/* 0802acc4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802acc6 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802acc8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802acca */ BEQ branch_0802acd4 \n\
/* 0802accc */ LDR R0, [R5, 0xC] \n\
/* 0802acce */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802acd0 */ BL func_0802ac50 \n\
 \n\
branch_0802acd4: \n\
/* 0802acd4 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802acd6 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802acd8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802acda */ BEQ branch_0802ace4 \n\
/* 0802acdc */ LDR R0, [R5, 0x10] \n\
/* 0802acde */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802ace0 */ BL func_0802ac50 \n\
 \n\
branch_0802ace4: \n\
/* 0802ace4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802ace6 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802ace8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802acea */ BEQ branch_0802acf4 \n\
/* 0802acec */ LDR R0, [R5, 0x14] \n\
/* 0802acee */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802acf0 */ BL func_0802ac50 \n\
 \n\
branch_0802acf4: \n\
/* 0802acf4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802acf6 */ LSLS R0, R0, 0x1 \n\
/* 0802acf8 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802acfa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802acfc */ BEQ branch_0802ad06 \n\
/* 0802acfe */ LDR R0, [R5, 0x1C] \n\
/* 0802ad00 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802ad02 */ BL func_0802ac50 \n\
 \n\
branch_0802ad06: \n\
/* 0802ad06 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802ad08 */ LSLS R0, R0, 0x2 \n\
/* 0802ad0a */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802ad0c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ad0e */ BEQ branch_0802ad18 \n\
/* 0802ad10 */ LDR R0, [R5, 0x18] \n\
/* 0802ad12 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802ad14 */ BL func_0802ac50 \n\
 \n\
branch_0802ad18: \n\
/* 0802ad18 */ POP {R4-R6} \n\
/* 0802ad1a */ POP {R0} \n\
/* 0802ad1c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
