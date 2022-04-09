asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e234 \n\
/* 0802e234 */ LDR R0, =D_030055d0 \n\
/* 0802e236 */ LDR R0, [R0] \n\
/* 0802e238 */ MOVS R2, 0xE9 @ Set R2 to 0xE9 \n\
/* 0802e23a */ LSLS R2, R2, 0x1 \n\
/* 0802e23c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802e23e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e240 */ STRB R0, [R1] \n\
/* 0802e242 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
