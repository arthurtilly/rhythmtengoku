asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037dc8 \n\
/* 08037dc8 */ PUSH {R4, R5, LR} \n\
/* 08037dca */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08037dcc */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08037dce */ BEQ branch_08037df8 \n\
/* 08037dd0 */ LDR R4, =gCurrentEngineData \n\
/* 08037dd2 */ LDR R0, [R4] \n\
/* 08037dd4 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08037dd6 */ LDRB R0, [R0] \n\
/* 08037dd8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037dda */ BNE branch_08037e10 \n\
/* 08037ddc */ BL get_beatscript_tempo \n\
/* 08037de0 */ LDR R1, [R4] \n\
/* 08037de2 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08037de4 */ ADDS R2, 0x46 @ Add 0x46 to R2 \n\
/* 08037de6 */ STRH R0, [R2] \n\
/* 08037de8 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 08037dea */ LDRH R0, [R1] \n\
/* 08037dec */ BL set_beatscript_tempo \n\
/* 08037df0 */ B branch_08037e10 \n\
\n\
.ltorg \n\
 \n\
branch_08037df8: \n\
/* 08037df8 */ LDR R0, =gCurrentEngineData \n\
/* 08037dfa */ LDR R1, [R0] \n\
/* 08037dfc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08037dfe */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08037e00 */ LDRB R0, [R0] \n\
/* 08037e02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037e04 */ BEQ branch_08037e10 \n\
/* 08037e06 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08037e08 */ ADDS R0, 0x46 @ Add 0x46 to R0 \n\
/* 08037e0a */ LDRH R0, [R0] \n\
/* 08037e0c */ BL set_beatscript_tempo \n\
 \n\
branch_08037e10: \n\
/* 08037e10 */ LDR R0, =gCurrentEngineData \n\
/* 08037e12 */ LDR R0, [R0] \n\
/* 08037e14 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08037e16 */ STRB R5, [R0] \n\
/* 08037e18 */ POP {R4, R5} \n\
/* 08037e1a */ POP {R0} \n\
/* 08037e1c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
