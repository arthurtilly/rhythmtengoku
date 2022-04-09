asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08021f04 \n\
/* 08021f04 */ PUSH {R4-R7, LR} \n\
/* 08021f06 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08021f08 */ PUSH {R7} \n\
/* 08021f0a */ SUB SP, 0xC \n\
/* 08021f0c */ LDR R0, =D_030055d0 \n\
/* 08021f0e */ LDR R7, [R0] \n\
/* 08021f10 */ ADDS R6, R7, 0x4 @ Set R6 to R7 + 0x4 \n\
/* 08021f12 */ BL func_080221cc \n\
/* 08021f16 */ LDRB R0, [R7, 0x4] \n\
/* 08021f18 */ LSLS R0, R0, 0x1C \n\
/* 08021f1a */ LSRS R0, R0, 0x1C \n\
/* 08021f1c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08021f1e */ BNE branch_08021f44 \n\
/* 08021f20 */ LDR R5, =D_03005380 \n\
/* 08021f22 */ LDR R0, [R5] \n\
/* 08021f24 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021f26 */ LDRSH R1, [R6, R2] \n\
/* 08021f28 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08021f2a */ BL func_0804ddb0 \n\
/* 08021f2e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08021f30 */ LDR R0, [R5] \n\
/* 08021f32 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021f34 */ LDRSH R1, [R6, R2] \n\
/* 08021f36 */ BL func_0804d6cc \n\
/* 08021f3a */ LSLS R0, R0, 0x18 \n\
/* 08021f3c */ ASRS R0, R0, 0x18 \n\
/* 08021f3e */ SUBS R4, 0x4 @ Subtract 0x4 from R4 \n\
/* 08021f40 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08021f42 */ BCC branch_08021fe2 \n\
 \n\
branch_08021f44: \n\
/* 08021f44 */ LDRB R1, [R7, 0x4] \n\
/* 08021f46 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08021f48 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08021f4a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021f4c */ STRB R0, [R7, 0x4] \n\
/* 08021f4e */ LDR R0, =D_03005380 \n\
/* 08021f50 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08021f52 */ LDR R0, [R0] \n\
/* 08021f54 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021f56 */ LDRSH R1, [R6, R2] \n\
/* 08021f58 */ LDR R2, =D_088accdc \n\
/* 08021f5a */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08021f5c */ STR R7, [SP] \n\
/* 08021f5e */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08021f60 */ STR R5, [SP, 0x4] \n\
/* 08021f62 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08021f64 */ STR R4, [SP, 0x8] \n\
/* 08021f66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021f68 */ BL func_0804d8f8 \n\
/* 08021f6c */ LDRH R0, [R6, 0xA] \n\
/* 08021f6e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021f70 */ BEQ branch_08021f88 \n\
/* 08021f72 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021f74 */ LDR R0, [R1] \n\
/* 08021f76 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021f78 */ LDRSH R1, [R6, R2] \n\
/* 08021f7a */ LDR R2, =D_088acdd4 \n\
/* 08021f7c */ STR R7, [SP] \n\
/* 08021f7e */ STR R5, [SP, 0x4] \n\
/* 08021f80 */ STR R4, [SP, 0x8] \n\
/* 08021f82 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021f84 */ BL func_0804d8f8 \n\
 \n\
branch_08021f88: \n\
/* 08021f88 */ LDRH R0, [R6, 0x6] \n\
/* 08021f8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021f8c */ BEQ branch_08021fa4 \n\
/* 08021f8e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021f90 */ LDR R0, [R1] \n\
/* 08021f92 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021f94 */ LDRSH R1, [R6, R2] \n\
/* 08021f96 */ LDR R2, =D_088acd94 \n\
/* 08021f98 */ STR R7, [SP] \n\
/* 08021f9a */ STR R5, [SP, 0x4] \n\
/* 08021f9c */ STR R4, [SP, 0x8] \n\
/* 08021f9e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021fa0 */ BL func_0804d8f8 \n\
 \n\
branch_08021fa4: \n\
/* 08021fa4 */ LDRH R0, [R6, 0xC] \n\
/* 08021fa6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021fa8 */ BEQ branch_08021fc0 \n\
/* 08021faa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021fac */ LDR R0, [R1] \n\
/* 08021fae */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021fb0 */ LDRSH R1, [R6, R2] \n\
/* 08021fb2 */ LDR R2, =D_088acdf4 \n\
/* 08021fb4 */ STR R7, [SP] \n\
/* 08021fb6 */ STR R5, [SP, 0x4] \n\
/* 08021fb8 */ STR R4, [SP, 0x8] \n\
/* 08021fba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021fbc */ BL func_0804d8f8 \n\
 \n\
branch_08021fc0: \n\
/* 08021fc0 */ LDRH R0, [R6, 0x8] \n\
/* 08021fc2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021fc4 */ BEQ branch_08021fe2 \n\
/* 08021fc6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021fc8 */ LDR R0, [R1] \n\
/* 08021fca */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021fcc */ LDRSH R1, [R6, R2] \n\
/* 08021fce */ LDR R2, =D_088acdb4 \n\
/* 08021fd0 */ STR R7, [SP] \n\
/* 08021fd2 */ STR R5, [SP, 0x4] \n\
/* 08021fd4 */ STR R4, [SP, 0x8] \n\
/* 08021fd6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021fd8 */ BL func_0804d8f8 \n\
/* 08021fdc */ LDR R0, =s_f_boxing_v_nua_seqData \n\
/* 08021fde */ BL func_08002634 \n\
 \n\
branch_08021fe2: \n\
/* 08021fe2 */ ADD SP, 0xC \n\
/* 08021fe4 */ POP {R3} \n\
/* 08021fe6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08021fe8 */ POP {R4-R7} \n\
/* 08021fea */ POP {R0} \n\
/* 08021fec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
