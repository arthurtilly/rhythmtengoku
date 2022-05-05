asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080493e4 \n\
/* 080493e4 */ LDR R2, =D_03005b88 \n\
/* 080493e6 */ LDR R2, [R2] \n\
/* 080493e8 */ LSLS R0, R0, 0x5 \n\
/* 080493ea */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080493ec */ STRB R1, [R0, 0x1] \n\
/* 080493ee */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
