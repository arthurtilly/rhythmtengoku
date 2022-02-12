asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080206a0 \n\
/* 080206a0 */ LDR R1, =D_089dec38 \n\
/* 080206a2 */ LSLS R0, R0, 0x2 \n\
/* 080206a4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080206a6 */ LDR R1, =D_030055d0 \n\
/* 080206a8 */ LDR R1, [R1] \n\
/* 080206aa */ LDRB R1, [R1] \n\
/* 080206ac */ LDR R0, [R0] \n\
/* 080206ae */ LSLS R1, R1, 0x2 \n\
/* 080206b0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080206b2 */ LDR R0, [R1] \n\
/* 080206b4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
