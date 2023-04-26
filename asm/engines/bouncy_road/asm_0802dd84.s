asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802dd84 \n\
/* 0802dd84 */ PUSH {R4-R7, LR} \n\
/* 0802dd86 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802dd88 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802dd8a */ PUSH {R6, R7} \n\
/* 0802dd8c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802dd8e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dd90 */ LDR R1, =gCurrentEngineData \n\
/* 0802dd92 */ LDR R0, [R1] \n\
/* 0802dd94 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0802dd96 */ ADDS R7, 0x40 @ Add 0x40 to R7 \n\
/* 0802dd98 */ LDRB R0, [R7, 0x4] \n\
/* 0802dd9a */ LSLS R0, R0, 0x1F \n\
/* 0802dd9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802dd9e */ BEQ branch_0802ddb8 \n\
/* 0802dda0 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0802dda2 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
 \n\
branch_0802dda4: \n\
/* 0802dda4 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0802dda6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0802dda8 */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 0802ddaa */ BHI branch_0802de50 \n\
/* 0802ddac */ LDR R0, [R3] \n\
/* 0802ddae */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 0802ddb0 */ LDRB R0, [R7, 0x4] \n\
/* 0802ddb2 */ LSLS R0, R0, 0x1F \n\
/* 0802ddb4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ddb6 */ BNE branch_0802dda4 \n\
 \n\
branch_0802ddb8: \n\
/* 0802ddb8 */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 0802ddba */ BHI branch_0802de50 \n\
/* 0802ddbc */ LDRB R0, [R7, 0x4] \n\
/* 0802ddbe */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802ddc0 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802ddc2 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802ddc4 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0802ddc6 */ MOVS R1, 0x41 @ Set R1 to 0x41 \n\
/* 0802ddc8 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0802ddca */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802ddcc */ STRB R0, [R7, 0x4] \n\
/* 0802ddce */ BL func_0802e3b8 \n\
/* 0802ddd2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802ddd4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ddd6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802ddd8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802ddda */ STRH R6, [R7, 0xA] \n\
/* 0802dddc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802ddde */ BL beats_to_ticks \n\
/* 0802dde2 */ STRH R0, [R7, 0xC] \n\
/* 0802dde4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802dde6 */ STRB R1, [R7, 0xE] \n\
/* 0802dde8 */ STR R5, [R7, 0x10] \n\
/* 0802ddea */ STR R5, [R7, 0x14] \n\
/* 0802ddec */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 0802ddee */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ddf0 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0802ddf2 */ BL beats_to_ticks \n\
/* 0802ddf6 */ STR R0, [R7, 0x18] \n\
/* 0802ddf8 */ LDR R4, =gCurrentEngineData \n\
/* 0802ddfa */ LDR R0, [R4] \n\
/* 0802ddfc */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 0802ddfe */ LSLS R2, R2, 0x1 \n\
/* 0802de00 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802de02 */ LDRH R2, [R0] \n\
/* 0802de04 */ ADDS R1, R2, 0x1 @ Set R1 to R2 + 0x1 \n\
/* 0802de06 */ STRH R1, [R0] \n\
/* 0802de08 */ STRH R2, [R7, 0x8] \n\
/* 0802de0a */ LDRB R0, [R7, 0x4] \n\
/* 0802de0c */ MOVS R2, 0x1F @ Set R2 to 0x1F \n\
/* 0802de0e */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802de10 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0802de12 */ STRB R2, [R7, 0x4] \n\
/* 0802de14 */ LDR R0, [R4] \n\
/* 0802de16 */ MOVS R3, 0xE9 @ Set R3 to 0xE9 \n\
/* 0802de18 */ LSLS R3, R3, 0x1 \n\
/* 0802de1a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802de1c */ LDRB R1, [R0] \n\
/* 0802de1e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802de20 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802de22 */ LSLS R1, R1, 0x5 \n\
/* 0802de24 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 0802de26 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802de28 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0802de2a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802de2c */ STRB R0, [R7, 0x4] \n\
/* 0802de2e */ LDR R0, [R4] \n\
/* 0802de30 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802de32 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802de34 */ STRB R1, [R0] \n\
/* 0802de36 */ BL gameplay_get_marking_criteria \n\
/* 0802de3a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0802de3c */ ADDS R1, 0x26 @ Add 0x26 to R1 \n\
/* 0802de3e */ STRB R0, [R1] \n\
/* 0802de40 */ LDR R0, [R7] \n\
/* 0802de42 */ LDR R1, [R4] \n\
/* 0802de44 */ MOVS R2, 0xEB @ Set R2 to 0xEB \n\
/* 0802de46 */ LSLS R2, R2, 0x1 \n\
/* 0802de48 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802de4a */ LDRB R1, [R1] \n\
/* 0802de4c */ BL affine_sprite_set_palette \n\
 \n\
branch_0802de50: \n\
/* 0802de50 */ POP {R3, R4} \n\
/* 0802de52 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802de54 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802de56 */ POP {R4-R7} \n\
/* 0802de58 */ POP {R0} \n\
/* 0802de5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
