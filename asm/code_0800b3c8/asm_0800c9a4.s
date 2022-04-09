asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c9a4 \n\
/* 0800c9a4 */ PUSH {LR} \n\
/* 0800c9a6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0800c9a8: \n\
/* 0800c9a8 */ LDRB R1, [R0] \n\
/* 0800c9aa */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0800c9ac */ CMP R1, 0x1A @ Compare R1 and 0x1A \n\
/* 0800c9ae */ BEQ branch_0800c9b6 \n\
/* 0800c9b0 */ CMP R1, 0x1B @ Compare R1 and 0x1B \n\
/* 0800c9b2 */ BEQ branch_0800c9ba \n\
/* 0800c9b4 */ B branch_0800c9a8 \n\
 \n\
branch_0800c9b6: \n\
/* 0800c9b6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c9b8 */ B branch_0800c9a8 \n\
 \n\
branch_0800c9ba: \n\
/* 0800c9ba */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c9bc */ BEQ branch_0800c9c2 \n\
/* 0800c9be */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0800c9c0 */ B branch_0800c9a8 \n\
 \n\
branch_0800c9c2: \n\
/* 0800c9c2 */ POP {R1} \n\
/* 0800c9c4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
