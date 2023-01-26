asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ebf8 \n\
/* 0800ebf8 */ PUSH {R4, R5, LR} \n\
/* 0800ebfa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800ebfc */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800ebfe */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800ec00 */ BNE branch_0800ec0c \n\
/* 0800ec02 */ LSLS R0, R5, 0x10 \n\
/* 0800ec04 */ LSRS R0, R0, 0x10 \n\
/* 0800ec06 */ BL set_beatscript_tempo \n\
/* 0800ec0a */ B branch_0800ec18 \n\
 \n\
branch_0800ec0c: \n\
/* 0800ec0c */ BL get_beatscript_tempo \n\
/* 0800ec10 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800ec12 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800ec14 */ BL func_0800ebac \n\
 \n\
branch_0800ec18: \n\
/* 0800ec18 */ POP {R4, R5} \n\
/* 0800ec1a */ POP {R0} \n\
/* 0800ec1c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
