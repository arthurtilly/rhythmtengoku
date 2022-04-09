asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080049dc \n\
/* 080049dc */ LDR R2, =D_08936b50 \n\
/* 080049de */ LDRB R1, [R0] \n\
/* 080049e0 */ SUBS R1, 0x61 @ Subtract 0x61 from R1 \n\
/* 080049e2 */ LSLS R1, R1, 0x1 \n\
/* 080049e4 */ LDR R0, [R2] \n\
/* 080049e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080049e8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
