asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802eba0 \n\
/* 0802eba0 */ PUSH {R4-R7, LR} \n\
/* 0802eba2 */ LDR R0, =D_030055d0 \n\
/* 0802eba4 */ LDR R0, [R0] \n\
/* 0802eba6 */ ADDS R7, R0, 0x4 @ Set R7 to R0 + 0x4 \n\
/* 0802eba8 */ LDR R5, =0x4ea \n\
/* 0802ebaa */ LDR R4, [R7, 0x8] \n\
/* 0802ebac */ LDR R0, =0x5d5 \n\
/* 0802ebae */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0802ebb0 */ LDR R6, [R7, 0xC] \n\
/* 0802ebb2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802ebb4 */ BL __udivsi3 \n\
/* 0802ebb8 */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 0802ebba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ebbc */ STRH R5, [R7, 0x6] \n\
/* 0802ebbe */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802ebc0 */ STR R4, [R7, 0x8] \n\
/* 0802ebc2 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 0802ebc4 */ BCC branch_0802ebca \n\
/* 0802ebc6 */ STRB R0, [R7, 0x4] \n\
/* 0802ebc8 */ STRB R0, [R7, 0x5] \n\
 \n\
branch_0802ebca: \n\
/* 0802ebca */ POP {R4-R7} \n\
/* 0802ebcc */ POP {R0} \n\
/* 0802ebce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
