asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802be10 \n\
/* 0802be10 */ LDR R1, =gCurrentEngineData \n\
/* 0802be12 */ LDR R1, [R1] \n\
/* 0802be14 */ MOVS R2, 0xF4 @ Set R2 to 0xF4 \n\
/* 0802be16 */ LSLS R2, R2, 0x2 \n\
/* 0802be18 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802be1a */ STRB R0, [R1] \n\
/* 0802be1c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
