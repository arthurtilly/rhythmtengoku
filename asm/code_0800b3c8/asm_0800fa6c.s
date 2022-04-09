asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fa6c \n\
/* 0800fa6c */ PUSH {R4-R7, LR} \n\
/* 0800fa6e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800fa70 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800fa72 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800fa74 */ PUSH {R5-R7} \n\
/* 0800fa76 */ SUB SP, 0x20 \n\
/* 0800fa78 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800fa7a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800fa7c */ LDR R4, [SP, 0x40] \n\
/* 0800fa7e */ LDR R0, [SP, 0x44] \n\
/* 0800fa80 */ LDR R1, [SP, 0x48] \n\
/* 0800fa82 */ LDR R5, [SP, 0x4C] \n\
/* 0800fa84 */ LDR R6, [SP, 0x50] \n\
/* 0800fa86 */ LDR R7, [SP, 0x54] \n\
/* 0800fa88 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 0800fa8a */ LSLS R2, R2, 0x10 \n\
/* 0800fa8c */ LSRS R2, R2, 0x10 \n\
/* 0800fa8e */ STR R2, [SP, 0x14] \n\
/* 0800fa90 */ LSLS R3, R3, 0x10 \n\
/* 0800fa92 */ LSRS R3, R3, 0x10 \n\
/* 0800fa94 */ STR R3, [SP, 0x18] \n\
/* 0800fa96 */ LSLS R4, R4, 0x10 \n\
/* 0800fa98 */ LSRS R4, R4, 0x10 \n\
/* 0800fa9a */ LSLS R0, R0, 0x10 \n\
/* 0800fa9c */ LSRS R0, R0, 0x10 \n\
/* 0800fa9e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800faa0 */ LSLS R1, R1, 0x10 \n\
/* 0800faa2 */ LSRS R1, R1, 0x10 \n\
/* 0800faa4 */ STR R1, [SP, 0x1C] \n\
/* 0800faa6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800faa8 */ LSLS R0, R0, 0x10 \n\
/* 0800faaa */ LSRS R0, R0, 0x10 \n\
/* 0800faac */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800faae */ LDR R1, =D_03005380 \n\
/* 0800fab0 */ LDR R0, [R1] \n\
/* 0800fab2 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800fab4 */ LSLS R2, R2, 0x18 \n\
/* 0800fab6 */ ASRS R2, R2, 0x18 \n\
/* 0800fab8 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800faba */ LDR R7, [SP, 0x14] \n\
/* 0800fabc */ LSLS R3, R7, 0x10 \n\
/* 0800fabe */ ASRS R3, R3, 0x10 \n\
/* 0800fac0 */ LDR R2, [SP, 0x18] \n\
/* 0800fac2 */ LSLS R1, R2, 0x10 \n\
/* 0800fac4 */ ASRS R1, R1, 0x10 \n\
/* 0800fac6 */ STR R1, [SP] \n\
/* 0800fac8 */ STR R4, [SP, 0x4] \n\
/* 0800faca */ LSLS R5, R5, 0x18 \n\
/* 0800facc */ ASRS R5, R5, 0x18 \n\
/* 0800face */ STR R5, [SP, 0x8] \n\
/* 0800fad0 */ LSLS R6, R6, 0x18 \n\
/* 0800fad2 */ ASRS R6, R6, 0x18 \n\
/* 0800fad4 */ STR R6, [SP, 0xC] \n\
/* 0800fad6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800fad8 */ STR R7, [SP, 0x10] \n\
/* 0800fada */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800fadc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800fade */ BL func_0804d160 \n\
/* 0800fae2 */ LSLS R0, R0, 0x10 \n\
/* 0800fae4 */ LSRS R0, R0, 0x10 \n\
/* 0800fae6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800fae8 */ LSLS R0, R7, 0x10 \n\
/* 0800faea */ ASRS R0, R0, 0x10 \n\
/* 0800faec */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800faee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800faf0 */ BLT branch_0800fb0c \n\
/* 0800faf2 */ BL func_0800c42c \n\
/* 0800faf6 */ LSLS R0, R0, 0x18 \n\
/* 0800faf8 */ LSRS R6, R0, 0x18 \n\
/* 0800fafa */ ASRS R5, R0, 0x18 \n\
/* 0800fafc */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800fafe */ BLT branch_0800fb0c \n\
/* 0800fb00 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0800fb02 */ BL func_0800c43c \n\
/* 0800fb06 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800fb08 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800fb0a */ BNE branch_0800fb14 \n\
 \n\
branch_0800fb0c: \n\
/* 0800fb0c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800fb0e */ B branch_0800fb8c \n\
\n\
.ltorg \n\
 \n\
branch_0800fb14: \n\
/* 0800fb14 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800fb16 */ STRH R7, [R4] \n\
/* 0800fb18 */ STRB R6, [R4, 0x2] \n\
/* 0800fb1a */ ADD R1, SP, 0x58 \n\
/* 0800fb1c */ LDRB R1, [R1] \n\
/* 0800fb1e */ STRB R1, [R4, 0x3] \n\
/* 0800fb20 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800fb22 */ STRH R2, [R4, 0x4] \n\
/* 0800fb24 */ STRH R2, [R4, 0x6] \n\
/* 0800fb26 */ MOV R7, SP @ Set R7 to SP \n\
/* 0800fb28 */ LDRH R7, [R7, 0x1C] \n\
/* 0800fb2a */ STRH R7, [R4, 0x8] \n\
/* 0800fb2c */ MOV R1, SP @ Set R1 to SP \n\
/* 0800fb2e */ LDRH R1, [R1, 0x14] \n\
/* 0800fb30 */ STRH R1, [R4, 0xA] \n\
/* 0800fb32 */ MOV R2, SP @ Set R2 to SP \n\
/* 0800fb34 */ LDRH R2, [R2, 0x18] \n\
/* 0800fb36 */ STRH R2, [R4, 0xC] \n\
/* 0800fb38 */ STRH R0, [R4, 0xE] \n\
/* 0800fb3a */ STRH R0, [R4, 0x10] \n\
/* 0800fb3c */ LDRB R1, [R4, 0x12] \n\
/* 0800fb3e */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0800fb40 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fb42 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800fb44 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800fb46 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0800fb48 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800fb4a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fb4c */ SUBS R1, 0x4 @ Subtract 0x4 from R1 \n\
/* 0800fb4e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fb50 */ SUBS R1, 0x8 @ Subtract 0x8 from R1 \n\
/* 0800fb52 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800fb54 */ STRB R0, [R4, 0x12] \n\
/* 0800fb56 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800fb58 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800fb5a */ BL func_08007468 \n\
/* 0800fb5e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800fb60 */ BL func_080022d8 \n\
/* 0800fb64 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0800fb66 */ LDRSH R1, [R4, R7] \n\
/* 0800fb68 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0800fb6a */ LDRSH R2, [R4, R0] \n\
/* 0800fb6c */ MOVS R7, 0x8 @ Set R7 to 0x8 \n\
/* 0800fb6e */ LDRSH R3, [R4, R7] \n\
/* 0800fb70 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800fb72 */ BL func_080074c4 \n\
/* 0800fb76 */ LDR R1, =D_03005380 \n\
/* 0800fb78 */ LDR R0, [R1] \n\
/* 0800fb7a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800fb7c */ LDR R7, [SP, 0x58] \n\
/* 0800fb7e */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800fb80 */ BEQ branch_0800fb84 \n\
/* 0800fb82 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_0800fb84: \n\
/* 0800fb84 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800fb86 */ BL func_0804dc8c \n\
/* 0800fb8a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0800fb8c: \n\
/* 0800fb8c */ ADD SP, 0x20 \n\
/* 0800fb8e */ POP {R3-R5} \n\
/* 0800fb90 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800fb92 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800fb94 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800fb96 */ POP {R4-R7} \n\
/* 0800fb98 */ POP {R1} \n\
/* 0800fb9a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
