asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023bb8 \n\
/* 08023bb8 */ LDR R1, =gCurrentEngineData \n\
/* 08023bba */ LDR R1, [R1] \n\
/* 08023bbc */ MOVS R2, 0xEB @ Set R2 to 0xEB \n\
/* 08023bbe */ LSLS R2, R2, 0x2 \n\
/* 08023bc0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023bc2 */ STR R0, [R1] \n\
/* 08023bc4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
