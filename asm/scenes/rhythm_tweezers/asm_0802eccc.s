asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802eccc \n\
/* 0802eccc */ PUSH {R4-R6, LR} \n\
/* 0802ecce */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802ecd0 */ PUSH {R6} \n\
/* 0802ecd2 */ SUB SP, 0x14 \n\
/* 0802ecd4 */ LDR R5, =D_030055d0 \n\
/* 0802ecd6 */ LDR R1, [R5] \n\
/* 0802ecd8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802ecda */ STRB R0, [R1] \n\
/* 0802ecdc */ BL func_0802eca0 \n\
/* 0802ece0 */ BL func_0800e0ec \n\
/* 0802ece4 */ MOVS R6, 0xA0 @ Set R6 to 0xA0 \n\
/* 0802ece6 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 0802ece8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802ecea */ STR R0, [SP] \n\
/* 0802ecec */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0802ecee */ STR R0, [SP, 0x4] \n\
/* 0802ecf0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802ecf2 */ LSLS R0, R0, 0x8 \n\
/* 0802ecf4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802ecf6 */ STR R0, [SP, 0x8] \n\
/* 0802ecf8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ecfa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802ecfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ecfe */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0802ed00 */ BL func_0800e0a0 \n\
/* 0802ed04 */ STR R4, [SP] \n\
/* 0802ed06 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0802ed08 */ STR R0, [SP, 0x4] \n\
/* 0802ed0a */ LDR R0, =0x4002 \n\
/* 0802ed0c */ STR R0, [SP, 0x8] \n\
/* 0802ed0e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802ed10 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802ed12 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ed14 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ed16 */ BL func_0800e0a0 \n\
/* 0802ed1a */ BL func_0802eaf8 \n\
/* 0802ed1e */ BL func_0802e99c \n\
/* 0802ed22 */ BL func_0802e750 \n\
/* 0802ed26 */ LDR R0, [R5] \n\
/* 0802ed28 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802ed2a */ ADDS R1, 0x90 @ Add 0x90 to R1 \n\
/* 0802ed2c */ STRH R6, [R1] \n\
/* 0802ed2e */ ADDS R0, 0x92 @ Add 0x92 to R0 \n\
/* 0802ed30 */ LDR R1, =0xfff8 \n\
/* 0802ed32 */ STRH R1, [R0] \n\
/* 0802ed34 */ LDR R0, =D_03005380 \n\
/* 0802ed36 */ LDR R0, [R0] \n\
/* 0802ed38 */ LDR R1, =D_088e8910 \n\
/* 0802ed3a */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0802ed3c */ STR R2, [SP] \n\
/* 0802ed3e */ STR R4, [SP, 0x4] \n\
/* 0802ed40 */ STR R4, [SP, 0x8] \n\
/* 0802ed42 */ STR R4, [SP, 0xC] \n\
/* 0802ed44 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802ed46 */ STR R2, [SP, 0x10] \n\
/* 0802ed48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ed4a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802ed4c */ BL func_0804d160 \n\
/* 0802ed50 */ LDR R1, [R5] \n\
/* 0802ed52 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0802ed54 */ STRH R0, [R1] \n\
/* 0802ed56 */ BL func_0800c3b8 \n\
/* 0802ed5a */ LSLS R0, R0, 0x10 \n\
/* 0802ed5c */ LSRS R0, R0, 0x10 \n\
/* 0802ed5e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802ed60 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802ed62 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0802ed64 */ BL func_0800a204 \n\
/* 0802ed68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802ed6a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ed6c */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 0802ed6e */ BL func_0800ac68 \n\
/* 0802ed72 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0802ed74 */ LSLS R1, R1, 0x8 \n\
/* 0802ed76 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ed78 */ BL func_0800aca0 \n\
/* 0802ed7c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ed7e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802ed80 */ BL func_0800acd8 \n\
/* 0802ed84 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ed86 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802ed88 */ BL func_0800acb0 \n\
/* 0802ed8c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ed8e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ed90 */ BL func_0800acbc \n\
/* 0802ed94 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ed96 */ BL func_08018630 \n\
/* 0802ed9a */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 0802ed9c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ed9e */ BL func_08017338 \n\
/* 0802eda2 */ ADD SP, 0x14 \n\
/* 0802eda4 */ POP {R3} \n\
/* 0802eda6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802eda8 */ POP {R4-R6} \n\
/* 0802edaa */ POP {R0} \n\
/* 0802edac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
