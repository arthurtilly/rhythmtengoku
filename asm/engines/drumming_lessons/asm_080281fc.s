asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080281fc \n\
/* 080281fc */ LDR R1, =gCurrentEngineData \n\
/* 080281fe */ LDR R1, [R1] \n\
/* 08028200 */ MOVS R2, 0xAF @ Set R2 to 0xAF \n\
/* 08028202 */ LSLS R2, R2, 0x3 \n\
/* 08028204 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08028206 */ STR R0, [R1] \n\
/* 08028208 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
