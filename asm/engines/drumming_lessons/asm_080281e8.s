asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080281e8 \n\
/* 080281e8 */ LDR R1, =gCurrentEngineData \n\
/* 080281ea */ LDR R1, [R1] \n\
/* 080281ec */ LDR R2, =0x00000576 \n\
/* 080281ee */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080281f0 */ STRB R0, [R1] \n\
/* 080281f2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
