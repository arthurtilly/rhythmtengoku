asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080278d0 \n\
/* 080278d0 */ LDR R1, =gCurrentEngineData \n\
/* 080278d2 */ LDR R1, [R1] \n\
/* 080278d4 */ LSLS R0, R0, 0x2 \n\
/* 080278d6 */ MOVS R2, 0x86 @ Set R2 to 0x86 \n\
/* 080278d8 */ LSLS R2, R2, 0x3 \n\
/* 080278da */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080278dc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080278de */ LDR R0, [R1] \n\
/* 080278e0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
