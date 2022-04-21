asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804acd8 \n\
/* 0804acd8 */ LDR R0, [R0, 0x18] \n\
/* 0804acda */ LSLS R1, R1, 0x5 \n\
/* 0804acdc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804acde */ STRB R2, [R1, 0x14] \n\
/* 0804ace0 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
