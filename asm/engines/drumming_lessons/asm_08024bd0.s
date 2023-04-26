asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024bd0 \n\
/* 08024bd0 */ LDR R1, =D_089e01c4 \n\
/* 08024bd2 */ LDR R0, =gCurrentEngineData \n\
/* 08024bd4 */ LDR R0, [R0] \n\
/* 08024bd6 */ LDRB R0, [R0] \n\
/* 08024bd8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024bda */ LDRB R0, [R0] \n\
/* 08024bdc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
