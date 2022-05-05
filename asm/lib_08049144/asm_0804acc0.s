asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804acc0 \n\
/* 0804acc0 */ LDR R0, [R0, 0x18] \n\
/* 0804acc2 */ LSLS R1, R1, 0x5 \n\
/* 0804acc4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804acc6 */ STRB R2, [R1, 0xC] \n\
/* 0804acc8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
