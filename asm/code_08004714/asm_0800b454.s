asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800b454 \n\
/* 0800b454 */ PUSH {R4-R7, LR} \n\
/* 0800b456 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800b458 */ PUSH {R7} \n\
/* 0800b45a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b45c */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0800b45e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800b460 */ BEQ branch_0800b4ce \n\
/* 0800b462 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800b464 */ BLT branch_0800b4ce \n\
/* 0800b466 */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 0800b468 */ LDRSH R0, [R5, R1] \n\
/* 0800b46a */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0800b46c */ BGE branch_0800b4ce \n\
/* 0800b46e */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 0800b470 */ LDRSH R0, [R5, R2] \n\
/* 0800b472 */ SUBS R0, R7, R0 @ Set R0 to R7 - R0 \n\
/* 0800b474 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 0800b476 */ LDRSH R1, [R5, R2] \n\
/* 0800b478 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800b47a */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 0800b47c */ LDRSH R1, [R5, R2] \n\
/* 0800b47e */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0800b480 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800b482 */ BLT branch_0800b4ce \n\
/* 0800b484 */ LDRB R6, [R5, 0x8] \n\
/* 0800b486 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 0800b488 */ BGE branch_0800b4ce \n\
/* 0800b48a */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0800b48c */ LDRSH R0, [R5, R1] \n\
/* 0800b48e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800b490 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b492 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800b494 */ BL __modsi3 \n\
/* 0800b498 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800b49a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800b49c */ BGE branch_0800b4a0 \n\
/* 0800b49e */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
 \n\
branch_0800b4a0: \n\
/* 0800b4a0 */ LDR R2, [R5, 0x4] \n\
/* 0800b4a2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800b4a4 */ LDR R1, [R5, 0x34] \n\
/* 0800b4a6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b4a8 */ BL _call_via_r1 \n\
/* 0800b4ac */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800b4ae */ LDR R1, [R5, 0x38] \n\
/* 0800b4b0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b4b2 */ BEQ branch_0800b4c0 \n\
/* 0800b4b4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b4b6 */ BL _call_via_r1 \n\
/* 0800b4ba */ LSLS R0, R0, 0x10 \n\
/* 0800b4bc */ ASRS R3, R0, 0x10 \n\
/* 0800b4be */ B branch_0800b4c4 \n\
 \n\
branch_0800b4c0: \n\
/* 0800b4c0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0800b4c2 */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_0800b4c4: \n\
/* 0800b4c4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800b4c6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b4c8 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800b4ca */ BL func_0800aac0 \n\
 \n\
branch_0800b4ce: \n\
/* 0800b4ce */ POP {R3} \n\
/* 0800b4d0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800b4d2 */ POP {R4-R7} \n\
/* 0800b4d4 */ POP {R0} \n\
/* 0800b4d6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
