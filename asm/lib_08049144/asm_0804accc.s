asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804accc \n\
/* 0804accc */ LDR R0, [R0, 0x18] \n\
/* 0804acce */ LSLS R1, R1, 0x5 \n\
/* 0804acd0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804acd2 */ LSLS R2, R2, 0x8 \n\
/* 0804acd4 */ STRH R2, [R1, 0x10] \n\
/* 0804acd6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
