asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ee7c \n\
/* 0802ee7c */ PUSH {R4-R7, LR} \n\
/* 0802ee7e */ SUB SP, 0x1C \n\
/* 0802ee80 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802ee82 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0802ee84 */ LDR R7, =D_030055d0 \n\
/* 0802ee86 */ LDR R2, [R7] \n\
/* 0802ee88 */ MOVS R6, 0xD0 @ Set R6 to 0xD0 \n\
/* 0802ee8a */ LSLS R6, R6, 0x2 \n\
/* 0802ee8c */ LDR R1, [R2, 0x18] \n\
/* 0802ee8e */ LSLS R0, R1, 0x2 \n\
/* 0802ee90 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802ee92 */ LSLS R0, R0, 0x7 \n\
/* 0802ee94 */ LDR R1, [R2, 0x1C] \n\
/* 0802ee96 */ BL __udivsi3 \n\
/* 0802ee9a */ SUBS R6, R6, R0 @ Set R6 to R6 - R0 \n\
/* 0802ee9c */ LDR R1, =D_088e89a8 \n\
/* 0802ee9e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802eea0 */ BNE branch_0802eea4 \n\
/* 0802eea2 */ LDR R1, =D_088e8768 \n\
 \n\
branch_0802eea4: \n\
/* 0802eea4 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 0802eea6 */ LSLS R0, R0, 0x7 \n\
/* 0802eea8 */ STR R0, [SP] \n\
/* 0802eeaa */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802eeac */ LSLS R0, R0, 0x1 \n\
/* 0802eeae */ STR R0, [SP, 0x4] \n\
/* 0802eeb0 */ LDR R0, =0xfffffe00 \n\
/* 0802eeb2 */ STR R0, [SP, 0x8] \n\
/* 0802eeb4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802eeb6 */ STR R0, [SP, 0xC] \n\
/* 0802eeb8 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0802eeba */ STR R0, [SP, 0x10] \n\
/* 0802eebc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802eebe */ STR R0, [SP, 0x14] \n\
/* 0802eec0 */ STR R0, [SP, 0x18] \n\
/* 0802eec2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802eec4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802eec6 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0802eec8 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0802eeca */ BL func_0800fa6c \n\
/* 0802eece */ STR R0, [R4, 0x4] \n\
/* 0802eed0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802eed2 */ BL func_0800feec \n\
/* 0802eed6 */ LDR R0, [R4, 0x4] \n\
/* 0802eed8 */ LSLS R1, R6, 0x10 \n\
/* 0802eeda */ ASRS R1, R1, 0x10 \n\
/* 0802eedc */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 0802eede */ BL func_0800fed0 \n\
/* 0802eee2 */ LDR R0, [R4, 0x4] \n\
/* 0802eee4 */ LDR R1, [R7] \n\
/* 0802eee6 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 0802eee8 */ LDR R2, =D_03004b22 \n\
/* 0802eeea */ BL func_080102a8 \n\
/* 0802eeee */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0802eef0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802eef2 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802eef4 */ LSLS R1, R1, 0x5 \n\
/* 0802eef6 */ LDRH R2, [R4] \n\
/* 0802eef8 */ LDR R0, =0xfffffe1f \n\
/* 0802eefa */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0802eefc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802eefe */ STRH R0, [R4] \n\
/* 0802ef00 */ LDRB R1, [R4, 0x1] \n\
/* 0802ef02 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802ef04 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802ef06 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802ef08 */ STRB R0, [R4, 0x1] \n\
/* 0802ef0a */ LDR R1, [R7] \n\
/* 0802ef0c */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 0802ef0e */ LDRH R0, [R1] \n\
/* 0802ef10 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802ef12 */ STRH R0, [R1] \n\
/* 0802ef14 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802ef16 */ BNE branch_0802ef40 \n\
/* 0802ef18 */ LDR R0, =s_hanabi_pon_seqData \n\
/* 0802ef1a */ MOVS R1, 0xD0 @ Set R1 to 0xD0 \n\
/* 0802ef1c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ef1e */ BL func_08002698 \n\
/* 0802ef22 */ B branch_0802ef46 \n\
\n\
.ltorg \n\
 \n\
branch_0802ef40: \n\
/* 0802ef40 */ LDR R0, =s_f_hair_appear_long_seqData \n\
/* 0802ef42 */ BL func_08002634 \n\
 \n\
branch_0802ef46: \n\
/* 0802ef46 */ ADD SP, 0x1C \n\
/* 0802ef48 */ POP {R4-R7} \n\
/* 0802ef4a */ POP {R0} \n\
/* 0802ef4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
