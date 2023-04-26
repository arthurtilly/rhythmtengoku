asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023c44 \n\
/* 08023c44 */ LDR R1, =gCurrentEngineData \n\
/* 08023c46 */ LDR R1, [R1] \n\
/* 08023c48 */ MOVS R2, 0xEC @ Set R2 to 0xEC \n\
/* 08023c4a */ LSLS R2, R2, 0x2 \n\
/* 08023c4c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023c4e */ STR R0, [R1] \n\
/* 08023c50 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
