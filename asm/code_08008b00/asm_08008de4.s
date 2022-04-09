asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008de4 \n\
/* 08008de4 */ PUSH {LR} \n\
/* 08008de6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008de8 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 08008dea */ BCS branch_08008df6 \n\
 \n\
branch_08008dec: \n\
/* 08008dec */ STRH R2, [R0] \n\
/* 08008dee */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08008df0 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08008df2 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 08008df4 */ BCC branch_08008dec \n\
 \n\
branch_08008df6: \n\
/* 08008df6 */ POP {R0} \n\
/* 08008df8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
