asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08031c54 \n\
/* 08031c54 */ LDR R1, =gCurrentEngineData \n\
/* 08031c56 */ LDR R1, [R1] \n\
/* 08031c58 */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 08031c5a */ LSLS R2, R2, 0x1 \n\
/* 08031c5c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08031c5e */ STRB R0, [R1] \n\
/* 08031c60 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
