asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002978 \n\
/* 08002978 */ LDR R2, =D_08aa4460 \n\
/* 0800297a */ LSLS R1, R0, 0x1 \n\
/* 0800297c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800297e */ LSLS R1, R1, 0x2 \n\
/* 08002980 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08002982 */ LDR R0, [R1] \n\
/* 08002984 */ LDR R0, [R0, 0xC] \n\
/* 08002986 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
