asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803eea0 \n\
/* 0803eea0 */ PUSH {R4-R7, LR} \n\
/* 0803eea2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803eea4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803eea6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803eea8 */ PUSH {R5-R7} \n\
/* 0803eeaa */ SUB SP, 0xC \n\
/* 0803eeac */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803eeae */ LDR R0, =gCurrentEngineData \n\
/* 0803eeb0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803eeb2 */ LDR R1, =D_089e8660 \n\
/* 0803eeb4 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0803eeb6: \n\
/* 0803eeb6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803eeb8 */ LDR R2, [R3] \n\
/* 0803eeba */ LSLS R4, R7, 0x2 \n\
/* 0803eebc */ MOVS R6, 0xE1 @ Set R6 to 0xE1 \n\
/* 0803eebe */ LSLS R6, R6, 0x2 \n\
/* 0803eec0 */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 0803eec2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803eec4 */ LDR R1, [R0] \n\
/* 0803eec6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803eec8 */ BEQ branch_0803ef36 \n\
/* 0803eeca */ SUBS R5, R1, 0x1 @ Set R5 to R1 - 0x1 \n\
/* 0803eecc */ STR R5, [R0] \n\
/* 0803eece */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803eed0 */ BNE branch_0803ef36 \n\
/* 0803eed2 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 0803eed4 */ LSLS R0, R0, 0x2 \n\
/* 0803eed6 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803eed8 */ LDR R1, =toss_boys_button_masks \n\
/* 0803eeda */ LSLS R3, R7, 0x1 \n\
/* 0803eedc */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803eede */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0803eee0 */ LDRH R0, [R2] \n\
/* 0803eee2 */ LDRH R1, [R1] \n\
/* 0803eee4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0803eee6 */ STRH R0, [R2] \n\
/* 0803eee8 */ LDRH R0, [R2] \n\
/* 0803eeea */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803eeec */ BL gameplay_set_input_buttons \n\
/* 0803eef0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803eef2 */ LDR R3, [R6] \n\
/* 0803eef4 */ LDR R1, =0x35d \n\
/* 0803eef6 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803eef8 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0803eefa */ LDRB R1, [R0] \n\
/* 0803eefc */ LSLS R0, R1, 0x1 \n\
/* 0803eefe */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0803ef00 */ LSLS R0, R2, 0x2 \n\
/* 0803ef02 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0803ef04 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 0803ef06 */ LDR R4, [R0] \n\
/* 0803ef08 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803ef0a */ BEQ branch_0803ef36 \n\
/* 0803ef0c */ LDR R0, =gSpriteHandler \n\
/* 0803ef0e */ LDR R0, [R0] \n\
/* 0803ef10 */ MOVS R6, 0xD5 @ Set R6 to 0xD5 \n\
/* 0803ef12 */ LSLS R6, R6, 0x2 \n\
/* 0803ef14 */ ADDS R1, R3, R6 @ Set R1 to R3 + R6 \n\
/* 0803ef16 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0803ef18 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ef1a */ LDRSH R1, [R1, R3] \n\
/* 0803ef1c */ LDR R3, =D_089e8690 \n\
/* 0803ef1e */ ADDS R2, R7, R2 @ Set R2 to R7 + R2 \n\
/* 0803ef20 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803ef22 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ef24 */ LDRSB R3, [R2, R3] \n\
/* 0803ef26 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803ef28 */ STR R2, [SP] \n\
/* 0803ef2a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803ef2c */ STR R2, [SP, 0x4] \n\
/* 0803ef2e */ STR R5, [SP, 0x8] \n\
/* 0803ef30 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0803ef32 */ BL sprite_set_anim \n\
 \n\
branch_0803ef36: \n\
/* 0803ef36 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0803ef38 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0803ef3a */ BLS branch_0803eeb6 \n\
/* 0803ef3c */ ADD SP, 0xC \n\
/* 0803ef3e */ POP {R3-R5} \n\
/* 0803ef40 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803ef42 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803ef44 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803ef46 */ POP {R4-R7} \n\
/* 0803ef48 */ POP {R0} \n\
/* 0803ef4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
