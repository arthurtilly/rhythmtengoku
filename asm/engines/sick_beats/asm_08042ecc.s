asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042ecc \n\
/* 08042ecc */ PUSH {R4, LR} \n\
/* 08042ece */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08042ed0 */ LDR R0, =gCurrentEngineData \n\
/* 08042ed2 */ LDR R1, [R0] \n\
/* 08042ed4 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 08042ed6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042ed8 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08042eda */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08042edc */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 08042ede */ LSLS R0, R0, 0x1 \n\
/* 08042ee0 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08042ee2 */ LDR R0, [R2] \n\
/* 08042ee4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042ee6 */ BEQ branch_08042efe \n\
/* 08042ee8 */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 08042eea */ LSLS R0, R0, 0x1 \n\
/* 08042eec */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
 \n\
branch_08042eee: \n\
/* 08042eee */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08042ef0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08042ef2 */ CMP R3, 0xF @ Compare R3 and 0xF \n\
/* 08042ef4 */ BHI branch_08042f34 \n\
/* 08042ef6 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08042ef8 */ LDR R0, [R2] \n\
/* 08042efa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042efc */ BNE branch_08042eee \n\
 \n\
branch_08042efe: \n\
/* 08042efe */ CMP R3, 0xF @ Compare R3 and 0xF \n\
/* 08042f00 */ BHI branch_08042f34 \n\
/* 08042f02 */ STR R4, [R2] \n\
/* 08042f04 */ MOVS R1, 0x81 @ Set R1 to 0x81 \n\
/* 08042f06 */ LSLS R1, R1, 0x1 \n\
/* 08042f08 */ ADD R1, R12 @ Add R12 to R1 \n\
/* 08042f0a */ LDRH R0, [R1] \n\
/* 08042f0c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08042f0e */ STRH R0, [R2, 0x6] \n\
/* 08042f10 */ STR R3, [R2, 0x8] \n\
/* 08042f12 */ MOVS R0, 0x83 @ Set R0 to 0x83 \n\
/* 08042f14 */ LSLS R0, R0, 0x1 \n\
/* 08042f16 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 08042f18 */ LDRB R0, [R0] \n\
/* 08042f1a */ STRB R0, [R2, 0x4] \n\
/* 08042f1c */ LDR R0, =0x107 \n\
/* 08042f1e */ ADD R0, R12 @ Add R12 to R0 \n\
/* 08042f20 */ LDRB R0, [R0] \n\
/* 08042f22 */ STRB R0, [R2, 0x5] \n\
/* 08042f24 */ LDRH R0, [R1] \n\
/* 08042f26 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08042f28 */ STRH R0, [R1] \n\
/* 08042f2a */ LSLS R0, R0, 0x10 \n\
/* 08042f2c */ LSRS R0, R0, 0x10 \n\
/* 08042f2e */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 08042f30 */ BLS branch_08042f34 \n\
/* 08042f32 */ STRH R3, [R1] \n\
 \n\
branch_08042f34: \n\
/* 08042f34 */ POP {R4} \n\
/* 08042f36 */ POP {R0} \n\
/* 08042f38 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
