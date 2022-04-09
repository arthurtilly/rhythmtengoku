asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ff8c \n\
/* 0800ff8c */ PUSH {LR} \n\
/* 0800ff8e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800ff90 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ff92 */ BEQ branch_0800ffba \n\
/* 0800ff94 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800ff96 */ BEQ branch_0800ffb2 \n\
/* 0800ff98 */ LDRB R1, [R2, 0x12] \n\
/* 0800ff9a */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800ff9c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ff9e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ffa0 */ BEQ branch_0800ffba \n\
/* 0800ffa2 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0800ffa4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ffa6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ffa8 */ STRB R0, [R2, 0x12] \n\
/* 0800ffaa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800ffac */ BL func_0800f904 \n\
/* 0800ffb0 */ B branch_0800ffba \n\
 \n\
branch_0800ffb2: \n\
/* 0800ffb2 */ LDRB R0, [R2, 0x12] \n\
/* 0800ffb4 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0800ffb6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800ffb8 */ STRB R0, [R2, 0x12] \n\
 \n\
branch_0800ffba: \n\
/* 0800ffba */ POP {R0} \n\
/* 0800ffbc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
