asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034850 \n\
/* 08034850 */ LDR R1, =gCurrentEngineData \n\
/* 08034852 */ LDR R1, [R1] \n\
/* 08034854 */ ADDS R1, 0x45 @ Add 0x45 to R1 \n\
/* 08034856 */ STRB R0, [R1] \n\
/* 08034858 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
