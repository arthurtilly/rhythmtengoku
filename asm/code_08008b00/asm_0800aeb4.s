asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800aeb4 \n\
/* 0800aeb4 */ PUSH {R4-R7, LR} \n\
/* 0800aeb6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800aeb8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800aeba */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800aebc */ PUSH {R5-R7} \n\
/* 0800aebe */ SUB SP, 0x14 \n\
/* 0800aec0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800aec2 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800aec4 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800aec6 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0800aec8 */ LDR R0, [SP, 0x6C] \n\
/* 0800aeca */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800aecc */ LSLS R4, R4, 0x10 \n\
/* 0800aece */ LSRS R4, R4, 0x10 \n\
/* 0800aed0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800aed2 */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 0800aed4 */ BL mem_heap_alloc_id \n\
/* 0800aed8 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800aeda */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800aedc */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800aede */ STRH R4, [R7] \n\
/* 0800aee0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800aee2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800aee4 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800aee6 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800aee8 */ BL func_0800a204 \n\
/* 0800aeec */ STR R0, [R7, 0x4] \n\
/* 0800aeee */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800aef0 */ BL func_0800adc0 \n\
/* 0800aef4 */ LDR R0, [R7, 0x4] \n\
/* 0800aef6 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800aef8 */ ADDS R1, 0x1C @ Add 0x1C to R1 \n\
/* 0800aefa */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800aefc */ ADDS R2, 0x1E @ Add 0x1E to R2 \n\
/* 0800aefe */ BL func_0800ad98 \n\
/* 0800af02 */ LDR R0, [R7, 0x4] \n\
/* 0800af04 */ LDR R2, [SP, 0x40] \n\
/* 0800af06 */ LSLS R1, R2, 0x10 \n\
/* 0800af08 */ ASRS R5, R1, 0x10 \n\
/* 0800af0a */ LDR R1, [SP, 0x44] \n\
/* 0800af0c */ LSLS R2, R1, 0x10 \n\
/* 0800af0e */ ASRS R2, R2, 0x10 \n\
/* 0800af10 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800af12 */ BL func_0800ac68 \n\
/* 0800af16 */ LDR R0, [R7, 0x4] \n\
/* 0800af18 */ LDR R2, [SP, 0x48] \n\
/* 0800af1a */ LSLS R1, R2, 0x10 \n\
/* 0800af1c */ LSRS R4, R1, 0x10 \n\
/* 0800af1e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800af20 */ BL func_0800aca0 \n\
/* 0800af24 */ LDR R0, [R7, 0x4] \n\
/* 0800af26 */ LDR R1, [SP, 0x38] \n\
/* 0800af28 */ BL func_0800acb0 \n\
/* 0800af2c */ LDR R0, [R7, 0x4] \n\
/* 0800af2e */ LDR R1, [SP, 0x3C] \n\
/* 0800af30 */ BL func_0800acbc \n\
/* 0800af34 */ LDR R0, [R7, 0x4] \n\
/* 0800af36 */ LDR R1, [SP, 0x4C] \n\
/* 0800af38 */ BL func_0800ae00 \n\
/* 0800af3c */ LDR R0, [R7, 0x4] \n\
/* 0800af3e */ LDR R1, =func_0800ae88 \n\
/* 0800af40 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800af42 */ BL func_0800ad20 \n\
/* 0800af46 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800af48 */ STRB R0, [R7, 0x8] \n\
/* 0800af4a */ ADD R1, SP, 0x34 \n\
/* 0800af4c */ LDRB R1, [R1] \n\
/* 0800af4e */ STRB R1, [R7, 0x12] \n\
/* 0800af50 */ ADD R2, SP, 0x38 \n\
/* 0800af52 */ LDRB R2, [R2] \n\
/* 0800af54 */ STRB R2, [R7, 0x13] \n\
/* 0800af56 */ ADD R0, SP, 0x3C \n\
/* 0800af58 */ LDRB R0, [R0] \n\
/* 0800af5a */ STRB R0, [R7, 0x14] \n\
/* 0800af5c */ ADD R1, SP, 0x40 \n\
/* 0800af5e */ LDRH R1, [R1] \n\
/* 0800af60 */ STRH R1, [R7, 0xA] \n\
/* 0800af62 */ ADD R2, SP, 0x44 \n\
/* 0800af64 */ LDRH R2, [R2] \n\
/* 0800af66 */ STRH R2, [R7, 0xC] \n\
/* 0800af68 */ ADD R0, SP, 0x48 \n\
/* 0800af6a */ LDRH R0, [R0] \n\
/* 0800af6c */ STRH R0, [R7, 0xE] \n\
/* 0800af6e */ ADD R1, SP, 0x4C \n\
/* 0800af70 */ LDRH R1, [R1] \n\
/* 0800af72 */ STRH R1, [R7, 0x10] \n\
/* 0800af74 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800af76 */ STRH R2, [R7, 0x16] \n\
/* 0800af78 */ STRH R2, [R7, 0x1A] \n\
/* 0800af7a */ STRH R2, [R7, 0x18] \n\
/* 0800af7c */ STRH R2, [R7, 0x20] \n\
/* 0800af7e */ STRH R2, [R7, 0x1C] \n\
/* 0800af80 */ STRH R2, [R7, 0x1E] \n\
/* 0800af82 */ ADD R0, SP, 0x50 \n\
/* 0800af84 */ LDRH R0, [R0] \n\
/* 0800af86 */ STRH R0, [R7, 0x26] \n\
/* 0800af88 */ ADD R1, SP, 0x54 \n\
/* 0800af8a */ LDRH R1, [R1] \n\
/* 0800af8c */ STRH R1, [R7, 0x28] \n\
/* 0800af8e */ ADD R2, SP, 0x5C \n\
/* 0800af90 */ LDRH R2, [R2] \n\
/* 0800af92 */ STRH R2, [R7, 0x2C] \n\
/* 0800af94 */ ADD R0, SP, 0x60 \n\
/* 0800af96 */ LDRH R0, [R0] \n\
/* 0800af98 */ STRH R0, [R7, 0x2E] \n\
/* 0800af9a */ ADD R1, SP, 0x64 \n\
/* 0800af9c */ LDRH R1, [R1] \n\
/* 0800af9e */ STRH R1, [R7, 0x30] \n\
/* 0800afa0 */ LDR R2, [SP, 0x68] \n\
/* 0800afa2 */ STR R2, [R7, 0x34] \n\
/* 0800afa4 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800afa6 */ STR R0, [R7, 0x38] \n\
/* 0800afa8 */ LDR R1, [SP, 0x58] \n\
/* 0800afaa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800afac */ BEQ branch_0800afe0 \n\
/* 0800afae */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800afb0 */ BL func_0800ae1c \n\
/* 0800afb4 */ LSLS R0, R0, 0x10 \n\
/* 0800afb6 */ ASRS R0, R0, 0x10 \n\
/* 0800afb8 */ LDR R1, =D_03005380 \n\
/* 0800afba */ LDR R1, [R1] \n\
/* 0800afbc */ STR R0, [SP] \n\
/* 0800afbe */ STR R4, [SP, 0x4] \n\
/* 0800afc0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800afc2 */ STR R0, [SP, 0x8] \n\
/* 0800afc4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800afc6 */ STR R2, [SP, 0xC] \n\
/* 0800afc8 */ STR R2, [SP, 0x10] \n\
/* 0800afca */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800afcc */ LDR R1, [SP, 0x58] \n\
/* 0800afce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800afd0 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800afd2 */ BL func_0804d160 \n\
/* 0800afd6 */ B branch_0800afe2 \n\
\n\
.ltorg \n\
 \n\
branch_0800afe0: \n\
/* 0800afe0 */ LDR R0, =0xffff \n\
 \n\
branch_0800afe2: \n\
/* 0800afe2 */ STRH R0, [R7, 0x2A] \n\
/* 0800afe4 */ LDR R0, =D_03005380 \n\
/* 0800afe6 */ LDR R0, [R0] \n\
/* 0800afe8 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 0800afea */ LDRSH R1, [R7, R2] \n\
/* 0800afec */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800afee */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 0800aff0 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0800aff2 */ ADDS R3, 0x1E @ Add 0x1E to R3 \n\
/* 0800aff4 */ BL func_0804db44 \n\
/* 0800aff8 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800affa */ ADDS R2, 0x3C @ Add 0x3C to R2 \n\
/* 0800affc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800affe */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800b000 */ STRB R0, [R2] \n\
/* 0800b002 */ STR R1, [R7, 0x40] \n\
/* 0800b004 */ STR R1, [R7, 0x48] \n\
/* 0800b006 */ LDR R1, [SP, 0x50] \n\
/* 0800b008 */ LDR R2, [SP, 0x64] \n\
/* 0800b00a */ SUBS R0, R1, R2 @ Set R0 to R1 - R2 \n\
/* 0800b00c */ LDR R1, [SP, 0x5C] \n\
/* 0800b00e */ SUBS R4, R0, R1 @ Set R4 to R0 - R1 \n\
/* 0800b010 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800b012 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800b014 */ CMP R8, R9 @ Compare R8 and R9 \n\
/* 0800b016 */ BCS branch_0800b060 \n\
 \n\
branch_0800b018: \n\
/* 0800b018 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800b01a */ BLT branch_0800b056 \n\
/* 0800b01c */ LDR R0, [SP, 0x54] \n\
/* 0800b01e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0800b020 */ BGE branch_0800b056 \n\
/* 0800b022 */ LDR R6, [R7, 0x4] \n\
/* 0800b024 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b026 */ LDR R1, [SP, 0x68] \n\
/* 0800b028 */ BL _call_via_r1 \n\
/* 0800b02c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b02e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800b030 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800b032 */ BEQ branch_0800b048 \n\
/* 0800b034 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b036 */ BL _call_via_sl \n\
/* 0800b03a */ LSLS R0, R0, 0x10 \n\
/* 0800b03c */ ASRS R3, R0, 0x10 \n\
/* 0800b03e */ B branch_0800b04c \n\
\n\
.ltorg \n\
 \n\
branch_0800b048: \n\
/* 0800b048 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0800b04a */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_0800b04c: \n\
/* 0800b04c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b04e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800b050 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800b052 */ BL func_0800aac0 \n\
 \n\
branch_0800b056: \n\
/* 0800b056 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800b058 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800b05a */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0800b05c */ CMP R8, R9 @ Compare R8 and R9 \n\
/* 0800b05e */ BCC branch_0800b018 \n\
 \n\
branch_0800b060: \n\
/* 0800b060 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b062 */ ADD SP, 0x14 \n\
/* 0800b064 */ POP {R3-R5} \n\
/* 0800b066 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800b068 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800b06a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800b06c */ POP {R4-R7} \n\
/* 0800b06e */ POP {R1} \n\
/* 0800b070 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
