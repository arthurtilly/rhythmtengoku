asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023150 \n\
/* 08023150 */ LDR R1, =gCurrentEngineData \n\
/* 08023152 */ LDR R1, [R1] \n\
/* 08023154 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08023156 */ LSLS R2, R2, 0x3 \n\
/* 08023158 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802315a */ STR R0, [R1] \n\
/* 0802315c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
