asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ace4 \n\
/* 0804ace4 */ LDR R0, [R0, 0x18] \n\
/* 0804ace6 */ LSLS R1, R1, 0x5 \n\
/* 0804ace8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804acea */ STRB R2, [R1, 0xF] \n\
/* 0804acec */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
