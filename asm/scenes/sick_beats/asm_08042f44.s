asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042f44 \n\
/* 08042f44 */ LDR R1, =D_030055d0 \n\
/* 08042f46 */ LDR R1, [R1] \n\
/* 08042f48 */ MOVS R2, 0x97 @ Set R2 to 0x97 \n\
/* 08042f4a */ LSLS R2, R2, 0x1 \n\
/* 08042f4c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042f4e */ STRB R0, [R1] \n\
/* 08042f50 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
