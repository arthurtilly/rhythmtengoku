asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803397c \n\
/* 0803397c */ PUSH {R4, LR} \n\
/* 0803397e */ LDR R2, =gCurrentEngineData \n\
/* 08033980 */ LDR R1, [R2] \n\
/* 08033982 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033984 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033986 */ STRH R0, [R1, 0xC] \n\
/* 08033988 */ MOVS R0, 0x8E @ Set R0 to 0x8E \n\
/* 0803398a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803398c */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0803398e */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 08033990 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 08033992 */ STRH R0, [R4] \n\
/* 08033994 */ ADDS R1, 0x90 @ Add 0x90 to R1 \n\
/* 08033996 */ STRB R3, [R1] \n\
/* 08033998 */ LDR R1, [R2] \n\
/* 0803399a */ LDR R0, =D_03004b10 \n\
/* 0803399c */ LDRH R0, [R0, 0x16] \n\
/* 0803399e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080339a0 */ ADDS R2, 0x92 @ Add 0x92 to R2 \n\
/* 080339a2 */ STRH R0, [R2] \n\
/* 080339a4 */ ADDS R1, 0x94 @ Add 0x94 to R1 \n\
/* 080339a6 */ LDR R0, =0xffff \n\
/* 080339a8 */ STRH R0, [R1] \n\
/* 080339aa */ POP {R4} \n\
/* 080339ac */ POP {R0} \n\
/* 080339ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
