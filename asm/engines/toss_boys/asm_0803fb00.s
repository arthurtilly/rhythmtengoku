asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803fb00 \n\
/* 0803fb00 */ PUSH {LR} \n\
/* 0803fb02 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803fb04 */ MOVS R2, 0xF @ Set R2 to 0xF \n\
/* 0803fb06 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0803fb08 */ LSRS R1, R1, 0x4 \n\
/* 0803fb0a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0803fb0c */ BL func_0803fa64 \n\
/* 0803fb10 */ POP {R0} \n\
/* 0803fb12 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
