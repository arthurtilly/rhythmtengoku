asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800aa4c \n\
/* 0800aa4c */ PUSH {R4, R5, LR} \n\
/* 0800aa4e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800aa50 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800aa52 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800aa54 */ BEQ branch_0800aa72 \n\
/* 0800aa56 */ LDRB R0, [R4, 0x2] \n\
/* 0800aa58 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800aa5a */ BNE branch_0800aa72 \n\
/* 0800aa5c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800aa5e */ BL func_0800a934 \n\
/* 0800aa62 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800aa64 */ BEQ branch_0800aa72 \n\
/* 0800aa66 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800aa68 */ ADDS R1, 0x3A @ Add 0x3A to R1 \n\
/* 0800aa6a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800aa6c */ STRB R0, [R1] \n\
/* 0800aa6e */ STRB R0, [R4, 0x3] \n\
/* 0800aa70 */ STR R5, [R4, 0x34] \n\
 \n\
branch_0800aa72: \n\
/* 0800aa72 */ POP {R4, R5} \n\
/* 0800aa74 */ POP {R0} \n\
/* 0800aa76 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
