asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042b88 \n\
/* 08042b88 */ PUSH {R4-R7, LR} \n\
/* 08042b8a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08042b8c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08042b8e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08042b90 */ PUSH {R5-R7} \n\
/* 08042b92 */ SUB SP, 0x14 \n\
/* 08042b94 */ LDR R0, =gCurrentEngineData \n\
/* 08042b96 */ LDR R1, [R0] \n\
/* 08042b98 */ LDRB R1, [R1] \n\
/* 08042b9a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08042b9c */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08042b9e */ BNE branch_08042c60 \n\
/* 08042ba0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08042ba2 */ MOVS R0, 0x8F @ Set R0 to 0x8F \n\
/* 08042ba4 */ LSLS R0, R0, 0x8 \n\
/* 08042ba6 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08042ba8: \n\
/* 08042ba8 */ LSLS R0, R4, 0x1 \n\
/* 08042baa */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08042bac */ LSLS R0, R0, 0x2 \n\
/* 08042bae */ MOVS R1, 0x81 @ Set R1 to 0x81 \n\
/* 08042bb0 */ LSLS R1, R1, 0x2 \n\
/* 08042bb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042bb4 */ LDR R1, [R2] \n\
/* 08042bb6 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 08042bb8 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08042bba */ BNE branch_08042bec \n\
/* 08042bbc */ LDR R2, =D_03005380 \n\
/* 08042bbe */ LDR R0, [R2] \n\
/* 08042bc0 */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 08042bc2 */ STR R1, [SP] \n\
/* 08042bc4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08042bc6 */ STR R1, [SP, 0x4] \n\
/* 08042bc8 */ STR R4, [SP, 0x8] \n\
/* 08042bca */ STR R4, [SP, 0xC] \n\
/* 08042bcc */ STR R4, [SP, 0x10] \n\
/* 08042bce */ LDR R1, =anim_sick_beats_score_counter \n\
/* 08042bd0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042bd2 */ MOVS R3, 0xD6 @ Set R3 to 0xD6 \n\
/* 08042bd4 */ BL func_0804d160 \n\
/* 08042bd8 */ STRH R0, [R5] \n\
/* 08042bda */ MOVS R3, 0xD6 @ Set R3 to 0xD6 \n\
/* 08042bdc */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 08042bde */ B branch_08042c10 \n\
\n\
.ltorg \n\
 \n\
branch_08042bec: \n\
/* 08042bec */ LDR R2, =D_03005380 \n\
/* 08042bee */ LDR R0, [R2] \n\
/* 08042bf0 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08042bf2 */ STR R1, [SP] \n\
/* 08042bf4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08042bf6 */ STR R1, [SP, 0x4] \n\
/* 08042bf8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042bfa */ STR R1, [SP, 0x8] \n\
/* 08042bfc */ STR R1, [SP, 0xC] \n\
/* 08042bfe */ STR R1, [SP, 0x10] \n\
/* 08042c00 */ LDR R1, =anim_sick_beats_high_score_counter \n\
/* 08042c02 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042c04 */ MOVS R3, 0xD6 @ Set R3 to 0xD6 \n\
/* 08042c06 */ BL func_0804d160 \n\
/* 08042c0a */ STRH R0, [R5] \n\
/* 08042c0c */ MOVS R3, 0xD6 @ Set R3 to 0xD6 \n\
/* 08042c0e */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
 \n\
branch_08042c10: \n\
/* 08042c10 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08042c12 */ LSLS R1, R1, 0x10 \n\
/* 08042c14 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08042c16 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08042c18 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08042c1a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08042c1c */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08042c1e */ LSLS R4, R3, 0x10 \n\
 \n\
branch_08042c20: \n\
/* 08042c20 */ LDR R2, =D_03005380 \n\
/* 08042c22 */ LDR R0, [R2] \n\
/* 08042c24 */ ASRS R3, R4, 0x10 \n\
/* 08042c26 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08042c28 */ ASRS R1, R2, 0x10 \n\
/* 08042c2a */ STR R1, [SP] \n\
/* 08042c2c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08042c2e */ STR R1, [SP, 0x4] \n\
/* 08042c30 */ STR R6, [SP, 0x8] \n\
/* 08042c32 */ STR R6, [SP, 0xC] \n\
/* 08042c34 */ STR R6, [SP, 0x10] \n\
/* 08042c36 */ LDR R1, =anim_sick_beats_score_num \n\
/* 08042c38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042c3a */ BL func_0804d160 \n\
/* 08042c3e */ STRH R0, [R5] \n\
/* 08042c40 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08042c42 */ LDR R2, =0xfffb0000 \n\
/* 08042c44 */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08042c46 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08042c48 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 08042c4a */ BLS branch_08042c20 \n\
/* 08042c4c */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08042c4e */ LDR R2, =gCurrentEngineData \n\
/* 08042c50 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08042c52 */ BLS branch_08042ba8 \n\
/* 08042c54 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042c56 */ LDR R0, [R2] \n\
/* 08042c58 */ MOVS R2, 0x87 @ Set R2 to 0x87 \n\
/* 08042c5a */ LSLS R2, R2, 0x2 \n\
/* 08042c5c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08042c5e */ STRB R1, [R0] \n\
 \n\
branch_08042c60: \n\
/* 08042c60 */ ADD SP, 0x14 \n\
/* 08042c62 */ POP {R3-R5} \n\
/* 08042c64 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08042c66 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08042c68 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08042c6a */ POP {R4-R7} \n\
/* 08042c6c */ POP {R0} \n\
/* 08042c6e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
