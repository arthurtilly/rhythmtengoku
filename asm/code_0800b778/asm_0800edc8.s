asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800edc8 \n\
/* 0800edc8 */ PUSH {R4-R7, LR} \n\
/* 0800edca */ LSLS R1, R1, 0x10 \n\
/* 0800edcc */ LSRS R7, R1, 0x10 \n\
/* 0800edce */ LSLS R2, R2, 0x10 \n\
/* 0800edd0 */ LSRS R6, R2, 0x10 \n\
/* 0800edd2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800edd4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_0800edd6: \n\
/* 0800edd6 */ LSLS R0, R5, 0x8 \n\
/* 0800edd8 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0800edda */ BL fast_divsi3 \n\
/* 0800edde */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800ede0 */ LSLS R2, R2, 0x10 \n\
/* 0800ede2 */ LSRS R2, R2, 0x10 \n\
/* 0800ede4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800ede6 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800ede8 */ BL func_08002088 \n\
/* 0800edec */ STRH R0, [R4] \n\
/* 0800edee */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0800edf0 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800edf2 */ CMP R5, 0x9F @ Compare R5 and 0x9F \n\
/* 0800edf4 */ BLS branch_0800edd6 \n\
/* 0800edf6 */ POP {R4-R7} \n\
/* 0800edf8 */ POP {R0} \n\
/* 0800edfa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
