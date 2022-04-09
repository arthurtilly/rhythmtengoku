asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008e40 \n\
/* 08008e40 */ PUSH {R4-R7, LR} \n\
/* 08008e42 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08008e44 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08008e46 */ BL func_08008de4 \n\
/* 08008e4a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08008e4c */ CMP R6, R5 @ Check R6 - R5 \n\
/* 08008e4e */ BCS branch_08008e6c \n\
/* 08008e50 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
 \n\
branch_08008e52: \n\
/* 08008e52 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08008e54 */ BL func_08001980 \n\
/* 08008e58 */ LDRH R2, [R4] \n\
/* 08008e5a */ LSLS R0, R0, 0x1 \n\
/* 08008e5c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08008e5e */ LDRH R1, [R0] \n\
/* 08008e60 */ STRH R1, [R4] \n\
/* 08008e62 */ STRH R2, [R0] \n\
/* 08008e64 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08008e66 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08008e68 */ CMP R6, R5 @ Check R6 - R5 \n\
/* 08008e6a */ BCC branch_08008e52 \n\
 \n\
branch_08008e6c: \n\
/* 08008e6c */ POP {R4-R7} \n\
/* 08008e6e */ POP {R0} \n\
/* 08008e70 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
