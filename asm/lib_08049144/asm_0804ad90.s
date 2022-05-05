asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ad90 \n\
/* 0804ad90 */ LDR R0, [R0, 0x18] \n\
/* 0804ad92 */ LSLS R1, R1, 0x5 \n\
/* 0804ad94 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ad96 */ STRB R2, [R1, 0x1C] \n\
/* 0804ad98 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
