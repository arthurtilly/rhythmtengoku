asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804249c \n\
/* 0804249c */ PUSH {R4, R5, LR} \n\
/* 0804249e */ LDR R5, =gCurrentEngineData \n\
/* 080424a0 */ LDR R0, [R5] \n\
/* 080424a2 */ MOVS R4, 0xB9 @ Set R4 to 0xB9 \n\
/* 080424a4 */ LSLS R4, R4, 0x2 \n\
/* 080424a6 */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 080424a8 */ LDR R2, [R3] \n\
/* 080424aa */ MOVS R1, 0xBA @ Set R1 to 0xBA \n\
/* 080424ac */ LSLS R1, R1, 0x2 \n\
/* 080424ae */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080424b0 */ LDRB R0, [R0] \n\
/* 080424b2 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080424b4 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 080424b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080424b8 */ BEQ branch_080424bc \n\
/* 080424ba */ SUBS R1, 0x80 @ Subtract 0x80 from R1 \n\
 \n\
branch_080424bc: \n\
/* 080424bc */ STR R1, [R3] \n\
/* 080424be */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080424c0 */ LSLS R2, R2, 0x5 \n\
/* 080424c2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080424c4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080424c6 */ BL clamp_int32 \n\
/* 080424ca */ LDR R1, [R5] \n\
/* 080424cc */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080424ce */ STR R0, [R1] \n\
/* 080424d0 */ LSLS R0, R0, 0x8 \n\
/* 080424d2 */ LSRS R0, R0, 0x10 \n\
/* 080424d4 */ LDR R2, =D_03004b10 \n\
/* 080424d6 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 080424d8 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080424da */ LSLS R1, R1, 0x8 \n\
/* 080424dc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080424de */ ADDS R2, 0x4E @ Add 0x4E to R2 \n\
/* 080424e0 */ STRH R0, [R2] \n\
/* 080424e2 */ POP {R4, R5} \n\
/* 080424e4 */ POP {R0} \n\
/* 080424e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
