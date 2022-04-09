asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ae88 \n\
/* 0800ae88 */ PUSH {R4, R5, LR} \n\
/* 0800ae8a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800ae8c */ LDRB R1, [R4, 0x12] \n\
/* 0800ae8e */ BL func_0800ae3c \n\
/* 0800ae92 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0800ae94 */ ADDS R5, 0x3C @ Add 0x3C to R5 \n\
/* 0800ae96 */ LDRB R0, [R5] \n\
/* 0800ae98 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ae9a */ BEQ branch_0800aeac \n\
/* 0800ae9c */ LDR R1, [R4, 0x48] \n\
/* 0800ae9e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800aea0 */ BEQ branch_0800aea8 \n\
/* 0800aea2 */ LDR R0, [R4, 0x4C] \n\
/* 0800aea4 */ BL _call_via_r1 \n\
 \n\
branch_0800aea8: \n\
/* 0800aea8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800aeaa */ STRB R0, [R5] \n\
 \n\
branch_0800aeac: \n\
/* 0800aeac */ POP {R4, R5} \n\
/* 0800aeae */ POP {R0} \n\
/* 0800aeb0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
