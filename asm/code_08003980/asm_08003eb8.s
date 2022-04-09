asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003eb8 \n\
/* 08003eb8 */ PUSH {R4-R7, LR} \n\
/* 08003eba */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08003ebc */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08003ebe */ BL func_0800869c \n\
/* 08003ec2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08003ec4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08003ec6 */ LDR R5, [R1] \n\
/* 08003ec8 */ LDRB R0, [R1, 0xC] \n\
/* 08003eca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003ecc */ BEQ branch_08003ee2 \n\
/* 08003ece */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08003ed0 */ LDRH R2, [R1, 0xA] \n\
/* 08003ed2 */ LSLS R2, R2, 0x1 \n\
/* 08003ed4 */ ADDS R2, R6, R2 @ Set R2 to R6 + R2 \n\
/* 08003ed6 */ LDRH R1, [R0, 0x4] \n\
/* 08003ed8 */ LSLS R1, R1, 0x1 \n\
/* 08003eda */ SUBS R5, R2, R1 @ Set R5 to R2 - R1 \n\
/* 08003edc */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08003ede */ BL func_08008608 \n\
 \n\
branch_08003ee2: \n\
/* 08003ee2 */ LDR R7, =D_03004af0 \n\
/* 08003ee4 */ LDR R2, [R4, 0x4] \n\
/* 08003ee6 */ LDRH R3, [R4, 0x8] \n\
/* 08003ee8 */ LSLS R3, R3, 0x10 \n\
/* 08003eea */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08003eec */ LSLS R0, R0, 0x8 \n\
/* 08003eee */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 08003ef0 */ LDR R4, [R7] \n\
/* 08003ef2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08003ef4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08003ef6 */ BL _call_via_r4 \n\
/* 08003efa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08003efc */ LDR R1, =D_030053b0 \n\
/* 08003efe */ LDRB R0, [R1] \n\
/* 08003f00 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003f02 */ BEQ branch_08003f18 \n\
/* 08003f04 */ ADDS R6, R7, 0x0 @ Set R6 to R7 + 0x0 \n\
/* 08003f06 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_08003f08: \n\
/* 08003f08 */ LDR R1, [R6] \n\
/* 08003f0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003f0c */ BL _call_via_r1 \n\
/* 08003f10 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08003f12 */ LDRB R0, [R5] \n\
/* 08003f14 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003f16 */ BNE branch_08003f08 \n\
 \n\
branch_08003f18: \n\
/* 08003f18 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003f1a */ POP {R4-R7} \n\
/* 08003f1c */ POP {R1} \n\
/* 08003f1e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
