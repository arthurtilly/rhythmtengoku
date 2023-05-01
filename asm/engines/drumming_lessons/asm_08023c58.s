asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023c58 \n\
/* 08023c58 */ LDR R1, =gCurrentEngineData \n\
/* 08023c5a */ LDR R1, [R1] \n\
/* 08023c5c */ MOVS R2, 0xEA @ Set R2 to 0xEA \n\
/* 08023c5e */ LSLS R2, R2, 0x2 \n\
/* 08023c60 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023c62 */ STRB R0, [R1] \n\
/* 08023c64 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
