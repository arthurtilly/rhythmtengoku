asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ea20 \n\
/* 0802ea20 */ PUSH {R4-R7, LR} \n\
/* 0802ea22 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802ea24 */ LDR R7, =D_030055d0 \n\
/* 0802ea26 */ MOVS R5, 0x24 @ Set R5 to 0x24 \n\
 \n\
branch_0802ea28: \n\
/* 0802ea28 */ LDR R0, [R7] \n\
/* 0802ea2a */ ADDS R4, R0, R5 @ Set R4 to R0 + R5 \n\
/* 0802ea2c */ LDR R2, [R4, 0x4] \n\
/* 0802ea2e */ LDR R0, =0xc7ff \n\
/* 0802ea30 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0802ea32 */ BGT branch_0802ea5e \n\
/* 0802ea34 */ LDR R1, [R4, 0x8] \n\
/* 0802ea36 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802ea38 */ STR R1, [R4, 0x8] \n\
/* 0802ea3a */ ADDS R1, R2, R1 @ Set R1 to R2 + R1 \n\
/* 0802ea3c */ STR R1, [R4, 0x4] \n\
/* 0802ea3e */ LDRH R0, [R4, 0xE] \n\
/* 0802ea40 */ LDRH R2, [R4, 0xC] \n\
/* 0802ea42 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802ea44 */ STRH R0, [R4, 0xC] \n\
/* 0802ea46 */ LDR R0, [R4] \n\
/* 0802ea48 */ ASRS R1, R1, 0x8 \n\
/* 0802ea4a */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0802ea4c */ LSLS R1, R1, 0x10 \n\
/* 0802ea4e */ ASRS R1, R1, 0x10 \n\
/* 0802ea50 */ BL func_0800fe0c \n\
/* 0802ea54 */ LDR R0, [R4] \n\
/* 0802ea56 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802ea58 */ LDRSH R1, [R4, R2] \n\
/* 0802ea5a */ BL func_0800fe94 \n\
 \n\
branch_0802ea5e: \n\
/* 0802ea5e */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0802ea60 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0802ea62 */ CMP R6, 0x4 @ Compare R6 and 0x4 \n\
/* 0802ea64 */ BLS branch_0802ea28 \n\
/* 0802ea66 */ POP {R4-R7} \n\
/* 0802ea68 */ POP {R0} \n\
/* 0802ea6a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
