asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d460 \n\
/* 0803d460 */ LDR R2, =gCurrentEngineData \n\
/* 0803d462 */ LDR R1, [R2] \n\
/* 0803d464 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0803d466 */ STRB R0, [R1] \n\
/* 0803d468 */ LDR R1, [R2] \n\
/* 0803d46a */ LSRS R0, R0, 0x8 \n\
/* 0803d46c */ ADDS R1, 0x29 @ Add 0x29 to R1 \n\
/* 0803d46e */ STRB R0, [R1] \n\
/* 0803d470 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
