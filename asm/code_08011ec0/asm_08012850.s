asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012850 \n\
/* 08012850 */ LDR R1, =D_03001320 \n\
/* 08012852 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08012854 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08012856 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08012858 */ STRB R0, [R1] \n\
/* 0801285a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
