asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e248 \n\
/* 0802e248 */ LDR R1, =D_030055d0 \n\
/* 0802e24a */ LDR R1, [R1] \n\
/* 0802e24c */ MOVS R2, 0xEB @ Set R2 to 0xEB \n\
/* 0802e24e */ LSLS R2, R2, 0x1 \n\
/* 0802e250 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802e252 */ STRB R0, [R1] \n\
/* 0802e254 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
