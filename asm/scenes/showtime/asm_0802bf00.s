asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802bf00 \n\
/* 0802bf00 */ PUSH {R4, LR} \n\
/* 0802bf02 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802bf04 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802bf06 */ BL func_0800c3a4 \n\
/* 0802bf0a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802bf0c */ BHI branch_0802bf12 \n\
/* 0802bf0e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bf10 */ B branch_0802bf14 \n\
 \n\
branch_0802bf12: \n\
/* 0802bf12 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802bf14: \n\
/* 0802bf14 */ POP {R4} \n\
/* 0802bf16 */ POP {R1} \n\
/* 0802bf18 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
