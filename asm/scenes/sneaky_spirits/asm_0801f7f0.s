asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f7f0 \n\
/* 0801f7f0 */ PUSH {R4, LR} \n\
/* 0801f7f2 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0801f7f4 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0801f7f6 */ BL func_0800c3a4 \n\
/* 0801f7fa */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0801f7fc */ BHI branch_0801f802 \n\
/* 0801f7fe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f800 */ B branch_0801f804 \n\
 \n\
branch_0801f802: \n\
/* 0801f802 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801f804: \n\
/* 0801f804 */ POP {R4} \n\
/* 0801f806 */ POP {R1} \n\
/* 0801f808 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
