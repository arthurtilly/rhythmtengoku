asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f524 \n\
/* 0800f524 */ PUSH {R4-R6, LR} \n\
/* 0800f526 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800f528 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800f52a */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800f52c */ LDR R2, [R4] \n\
/* 0800f52e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800f530 */ BGT branch_0800f53c \n\
/* 0800f532 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f534 */ STRH R0, [R5, 0x4] \n\
/* 0800f536 */ STRH R0, [R5, 0x2] \n\
/* 0800f538 */ STRH R0, [R5] \n\
/* 0800f53a */ B branch_0800f56a \n\
 \n\
branch_0800f53c: \n\
/* 0800f53c */ LDR R1, [R4, 0x8] \n\
/* 0800f53e */ LDR R0, [R6, 0x40] \n\
/* 0800f540 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800f542 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800f544 */ BL func_08007b80 \n\
/* 0800f548 */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 0800f54a */ STRH R0, [R5] \n\
/* 0800f54c */ LDR R1, [R4, 0x4] \n\
/* 0800f54e */ LDR R0, [R6, 0x44] \n\
/* 0800f550 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800f552 */ LDR R1, [R4] \n\
/* 0800f554 */ BL func_08007b80 \n\
/* 0800f558 */ ASRS R0, R0, 0x4 \n\
/* 0800f55a */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 0800f55c */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0800f55e */ STRH R1, [R5, 0x2] \n\
/* 0800f560 */ LDR R0, [R4] \n\
/* 0800f562 */ LDR R1, [R6, 0x40] \n\
/* 0800f564 */ BL func_08007b80 \n\
/* 0800f568 */ STRH R0, [R5, 0x4] \n\
 \n\
branch_0800f56a: \n\
/* 0800f56a */ POP {R4-R6} \n\
/* 0800f56c */ POP {R0} \n\
/* 0800f56e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
