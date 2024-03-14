asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ad60 \n\
/* 0803ad60 */ PUSH {R4-R7, LR} \n\
/* 0803ad62 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803ad64 */ LDR R0, =gCurrentEngineData \n\
/* 0803ad66 */ LDR R1, [R0] \n\
/* 0803ad68 */ LDRB R0, [R1, 0x10] \n\
/* 0803ad6a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ad6c */ BNE branch_0803ad70 \n\
/* 0803ad6e */ B branch_0803aede \n\
 \n\
branch_0803ad70: \n\
/* 0803ad70 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803ad72 */ ADDS R0, 0xDE @ Add 0xDE to R0 \n\
/* 0803ad74 */ LDRB R0, [R0] \n\
/* 0803ad76 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0803ad78 */ BLS branch_0803ad7c \n\
/* 0803ad7a */ B branch_0803ae6c \n\
 \n\
branch_0803ad7c: \n\
/* 0803ad7c */ LSLS R0, R0, 0x2 \n\
/* 0803ad7e */ LDR R1, =jtbl_0803ad90 \n\
/* 0803ad80 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803ad82 */ LDR R0, [R0] \n\
/* 0803ad84 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803ad90: \n\
.word branch_0803ae6c \n\
.word jump_0803ada4 \n\
.word branch_0803ae6c \n\
.word jump_0803adec \n\
.word jump_0803ae18 \n\
jump_0803ada4: \n\
/* 0803ada4 */ LDR R2, =gCurrentEngineData \n\
/* 0803ada6 */ LDR R1, [R2] \n\
/* 0803ada8 */ ADDS R1, 0xE0 @ Add 0xE0 to R1 \n\
/* 0803adaa */ LDRB R0, [R1] \n\
/* 0803adac */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0803adae */ STRB R0, [R1] \n\
/* 0803adb0 */ LDR R0, [R2] \n\
/* 0803adb2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803adb4 */ ADDS R1, 0xE0 @ Add 0xE0 to R1 \n\
/* 0803adb6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803adb8 */ LDRSB R0, [R1, R0] \n\
/* 0803adba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803adbc */ BGT branch_0803adca \n\
/* 0803adbe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803adc0 */ STRB R0, [R1] \n\
/* 0803adc2 */ LDR R0, [R2] \n\
/* 0803adc4 */ ADDS R0, 0xDE @ Add 0xDE to R0 \n\
/* 0803adc6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803adc8 */ STRB R1, [R0] \n\
 \n\
branch_0803adca: \n\
/* 0803adca */ LDR R2, [R2] \n\
/* 0803adcc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803adce */ ADDS R0, 0xDF @ Add 0xDF to R0 \n\
/* 0803add0 */ LDRB R0, [R0] \n\
/* 0803add2 */ LSLS R0, R0, 0x18 \n\
/* 0803add4 */ ASRS R0, R0, 0x18 \n\
/* 0803add6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803add8 */ LSLS R1, R1, 0x1 \n\
/* 0803adda */ ADDS R2, 0xE0 @ Add 0xE0 to R2 \n\
/* 0803addc */ LDRB R2, [R2] \n\
/* 0803adde */ LSLS R2, R2, 0x18 \n\
/* 0803ade0 */ ASRS R2, R2, 0x18 \n\
/* 0803ade2 */ BL set_affine_scale_rotation \n\
/* 0803ade6 */ B branch_0803ae6c \n\
\n\
.ltorg \n\
jump_0803adec: \n\
/* 0803adec */ BL func_0800c398 \n\
/* 0803adf0 */ LDR R1, =gCurrentEngineData \n\
/* 0803adf2 */ LDR R3, [R1] \n\
/* 0803adf4 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0803adf6 */ ADDS R2, 0xE2 @ Add 0xE2 to R2 \n\
/* 0803adf8 */ LDRH R1, [R2] \n\
/* 0803adfa */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803adfc */ STRH R1, [R2] \n\
/* 0803adfe */ LSLS R1, R1, 0x10 \n\
/* 0803ae00 */ LSRS R1, R1, 0x18 \n\
/* 0803ae02 */ CMP R1, 0x23 @ Compare R1 and 0x23 \n\
/* 0803ae04 */ BLS branch_0803ae6c \n\
/* 0803ae06 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ae08 */ STRH R0, [R2] \n\
/* 0803ae0a */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803ae0c */ ADDS R1, 0xDE @ Add 0xDE to R1 \n\
/* 0803ae0e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803ae10 */ STRB R0, [R1] \n\
/* 0803ae12 */ B branch_0803ae6c \n\
\n\
.ltorg \n\
jump_0803ae18: \n\
/* 0803ae18 */ LDR R4, =gCurrentEngineData \n\
/* 0803ae1a */ LDR R1, [R4] \n\
/* 0803ae1c */ ADDS R1, 0xE0 @ Add 0xE0 to R1 \n\
/* 0803ae1e */ LDRB R0, [R1] \n\
/* 0803ae20 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0803ae22 */ STRB R0, [R1] \n\
/* 0803ae24 */ LDR R0, [R4] \n\
/* 0803ae26 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803ae28 */ ADDS R1, 0xE0 @ Add 0xE0 to R1 \n\
/* 0803ae2a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ae2c */ LDRSB R0, [R1, R0] \n\
/* 0803ae2e */ CMP R0, 0x3F @ Compare R0 and 0x3F \n\
/* 0803ae30 */ BLE branch_0803ae50 \n\
/* 0803ae32 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0803ae34 */ STRB R0, [R1] \n\
/* 0803ae36 */ LDR R0, [R4] \n\
/* 0803ae38 */ ADDS R0, 0xDE @ Add 0xDE to R0 \n\
/* 0803ae3a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ae3c */ STRB R1, [R0] \n\
/* 0803ae3e */ LDR R0, =gSpriteHandler \n\
/* 0803ae40 */ LDR R0, [R0] \n\
/* 0803ae42 */ LDR R1, [R4] \n\
/* 0803ae44 */ ADDS R1, 0xDC @ Add 0xDC to R1 \n\
/* 0803ae46 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ae48 */ LDRSH R1, [R1, R2] \n\
/* 0803ae4a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ae4c */ BL sprite_set_visible \n\
 \n\
branch_0803ae50: \n\
/* 0803ae50 */ LDR R2, [R4] \n\
/* 0803ae52 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803ae54 */ ADDS R0, 0xDF @ Add 0xDF to R0 \n\
/* 0803ae56 */ LDRB R0, [R0] \n\
/* 0803ae58 */ LSLS R0, R0, 0x18 \n\
/* 0803ae5a */ ASRS R0, R0, 0x18 \n\
/* 0803ae5c */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803ae5e */ LSLS R1, R1, 0x1 \n\
/* 0803ae60 */ ADDS R2, 0xE0 @ Add 0xE0 to R2 \n\
/* 0803ae62 */ LDRB R2, [R2] \n\
/* 0803ae64 */ LSLS R2, R2, 0x18 \n\
/* 0803ae66 */ ASRS R2, R2, 0x18 \n\
/* 0803ae68 */ BL set_affine_scale_rotation \n\
 \n\
branch_0803ae6c: \n\
/* 0803ae6c */ LDR R0, =gCurrentEngineData \n\
/* 0803ae6e */ LDR R1, [R0] \n\
/* 0803ae70 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803ae72 */ ADDS R4, 0xE4 @ Add 0xE4 to R4 \n\
/* 0803ae74 */ LDRH R5, [R4] \n\
/* 0803ae76 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ae78 */ LDRSH R1, [R4, R3] \n\
/* 0803ae7a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803ae7c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803ae7e */ BEQ branch_0803aebc \n\
/* 0803ae80 */ LDR R2, =gSineTable \n\
/* 0803ae82 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803ae84 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803ae86 */ BGE branch_0803ae8c \n\
/* 0803ae88 */ LDR R3, =0x7ff \n\
/* 0803ae8a */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
 \n\
branch_0803ae8c: \n\
/* 0803ae8c */ ASRS R0, R0, 0xB \n\
/* 0803ae8e */ LSLS R0, R0, 0xB \n\
/* 0803ae90 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0803ae92 */ LDR R3, =0x7ff \n\
/* 0803ae94 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803ae96 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803ae98 */ LSLS R0, R0, 0x1 \n\
/* 0803ae9a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803ae9c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ae9e */ LDRSH R0, [R0, R1] \n\
/* 0803aea0 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0803aea2 */ BL __divsi3 \n\
/* 0803aea6 */ ADDS R0, 0x14 @ Add 0x14 to R0 \n\
/* 0803aea8 */ LSLS R0, R0, 0x18 \n\
/* 0803aeaa */ LSRS R7, R0, 0x18 \n\
/* 0803aeac */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803aeae */ SUBS R0, 0x80 @ Subtract 0x80 from R0 \n\
/* 0803aeb0 */ STRH R0, [R4] \n\
/* 0803aeb2 */ LSLS R0, R0, 0x10 \n\
/* 0803aeb4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803aeb6 */ BGE branch_0803aebc \n\
/* 0803aeb8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803aeba */ STRH R0, [R4] \n\
 \n\
branch_0803aebc: \n\
/* 0803aebc */ LDR R2, [R6] \n\
/* 0803aebe */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803aec0 */ ADDS R0, 0xDF @ Add 0xDF to R0 \n\
/* 0803aec2 */ LDRB R0, [R0] \n\
/* 0803aec4 */ LSLS R0, R0, 0x18 \n\
/* 0803aec6 */ ASRS R0, R0, 0x18 \n\
/* 0803aec8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803aeca */ LSLS R1, R1, 0x1 \n\
/* 0803aecc */ ADDS R2, 0xE0 @ Add 0xE0 to R2 \n\
/* 0803aece */ LDRB R2, [R2] \n\
/* 0803aed0 */ LSLS R2, R2, 0x18 \n\
/* 0803aed2 */ ASRS R2, R2, 0x18 \n\
/* 0803aed4 */ LSLS R3, R7, 0x18 \n\
/* 0803aed6 */ ASRS R3, R3, 0x18 \n\
/* 0803aed8 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803aeda */ BL set_affine_scale_rotation \n\
 \n\
branch_0803aede: \n\
/* 0803aede */ POP {R4-R7} \n\
/* 0803aee0 */ POP {R0} \n\
/* 0803aee2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
