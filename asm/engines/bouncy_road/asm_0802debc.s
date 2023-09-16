asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802debc \n\
/* 0802debc */ PUSH {R4-R6, LR} \n\
/* 0802debe */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802dec0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802dec2 */ LDR R6, =gCurrentEngineData \n\
/* 0802dec4 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
 \n\
branch_0802dec6: \n\
/* 0802dec6 */ LDR R0, [R6] \n\
/* 0802dec8 */ ADDS R4, R0, R2 @ Set R4 to R0 + R2 \n\
/* 0802deca */ LDRB R1, [R4, 0x4] \n\
/* 0802decc */ LSLS R0, R1, 0x1F \n\
/* 0802dece */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ded0 */ BEQ branch_0802def8 \n\
/* 0802ded2 */ LDRH R0, [R4, 0x8] \n\
/* 0802ded4 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0802ded6 */ BNE branch_0802def8 \n\
/* 0802ded8 */ MOVS R2, 0x1F @ Set R2 to 0x1F \n\
/* 0802deda */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802dedc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802dede */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802dee0 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802dee2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802dee4 */ STRB R0, [R4, 0x4] \n\
/* 0802dee6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802dee8 */ STR R0, [R4, 0x1C] \n\
/* 0802deea */ LDRH R0, [R4, 0xA] \n\
/* 0802deec */ BL ticks_to_frames \n\
/* 0802def0 */ STR R0, [R4, 0x20] \n\
/* 0802def2 */ B branch_0802df00 \n\
\n\
.ltorg \n\
 \n\
branch_0802def8: \n\
/* 0802def8 */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802defa */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802defc */ CMP R3, 0x9 @ Compare R3 and 0x9 \n\
/* 0802defe */ BLS branch_0802dec6 \n\
 \n\
branch_0802df00: \n\
/* 0802df00 */ POP {R4-R6} \n\
/* 0802df02 */ POP {R0} \n\
/* 0802df04 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
