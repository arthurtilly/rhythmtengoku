asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033b34 \n\
/* 08033b34 */ LDR R1, =gCurrentEngineData \n\
/* 08033b36 */ LDR R2, [R1] \n\
/* 08033b38 */ ADDS R2, 0x92 @ Add 0x92 to R2 \n\
/* 08033b3a */ LDRH R1, [R2] \n\
/* 08033b3c */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08033b3e */ STRH R1, [R2] \n\
/* 08033b40 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
