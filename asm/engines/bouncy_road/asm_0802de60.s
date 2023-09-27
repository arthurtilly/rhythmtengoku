asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802de60 \n\
/* 0802de60 */ PUSH {R4-R7, LR} \n\
/* 0802de62 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802de64 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0802de66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802de68 */ LDR R7, =gCurrentEngineData \n\
/* 0802de6a */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
 \n\
branch_0802de6c: \n\
/* 0802de6c */ LDR R0, [R7] \n\
/* 0802de6e */ ADDS R4, R0, R2 @ Set R4 to R0 + R2 \n\
/* 0802de70 */ LDRB R1, [R4, 0x4] \n\
/* 0802de72 */ LSLS R0, R1, 0x1F \n\
/* 0802de74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802de76 */ BEQ branch_0802dea0 \n\
/* 0802de78 */ LDRH R0, [R4, 0x8] \n\
/* 0802de7a */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0802de7c */ BNE branch_0802dea0 \n\
/* 0802de7e */ MOVS R2, 0x1F @ Set R2 to 0x1F \n\
/* 0802de80 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802de82 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802de84 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802de86 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802de88 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802de8a */ STRB R0, [R4, 0x4] \n\
/* 0802de8c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802de8e */ STR R0, [R4, 0x1C] \n\
/* 0802de90 */ LDRH R0, [R4, 0xA] \n\
/* 0802de92 */ BL ticks_to_frames \n\
/* 0802de96 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802de98 */ STR R0, [R4, 0x20] \n\
/* 0802de9a */ B branch_0802dea8 \n\
\n\
.ltorg \n\
 \n\
branch_0802dea0: \n\
/* 0802dea0 */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802dea2 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802dea4 */ CMP R3, 0x9 @ Compare R3 and 0x9 \n\
/* 0802dea6 */ BLS branch_0802de6c \n\
 \n\
branch_0802dea8: \n\
/* 0802dea8 */ POP {R4-R7} \n\
/* 0802deaa */ POP {R0} \n\
/* 0802deac */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
