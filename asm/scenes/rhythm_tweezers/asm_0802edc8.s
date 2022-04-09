asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802edc8 \n\
/* 0802edc8 */ PUSH {R4, LR} \n\
/* 0802edca */ LDR R4, =D_030055d0 \n\
/* 0802edcc */ LDR R1, [R4] \n\
/* 0802edce */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802edd0 */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 0802edd2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802edd4 */ LDRSH R0, [R0, R2] \n\
/* 0802edd6 */ ADDS R1, 0x92 @ Add 0x92 to R1 \n\
/* 0802edd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802edda */ LDRSH R1, [R1, R2] \n\
/* 0802eddc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802edde */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0802ede0 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0802ede2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ede4 */ BL func_080087d4 \n\
/* 0802ede8 */ LDR R1, [R4] \n\
/* 0802edea */ ADDS R1, 0x90 @ Add 0x90 to R1 \n\
/* 0802edec */ STRH R0, [R1] \n\
/* 0802edee */ LDR R1, =D_03004b10 \n\
/* 0802edf0 */ STRH R0, [R1, 0xE] \n\
/* 0802edf2 */ POP {R4} \n\
/* 0802edf4 */ POP {R0} \n\
/* 0802edf6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
