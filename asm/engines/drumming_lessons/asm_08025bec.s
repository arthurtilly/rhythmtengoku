asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025bec \n\
/* 08025bec */ PUSH {R4, LR} \n\
/* 08025bee */ SUB SP, 0x4 \n\
/* 08025bf0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025bf2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025bf4 */ BL clamp_int32 \n\
/* 08025bf8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08025bfa */ LDR R0, =D_030055d0 \n\
/* 08025bfc */ LDR R0, [R0] \n\
/* 08025bfe */ LDR R1, =0x000013a8 \n\
/* 08025c00 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08025c02 */ LDR R2, =D_089e0758 \n\
/* 08025c04 */ LSLS R1, R4, 0x2 \n\
/* 08025c06 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025c08 */ LDR R1, [R1] \n\
/* 08025c0a */ LDR R3, =(VRAMBase + 0xe000) \n\
/* 08025c0c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08025c0e */ LSLS R2, R2, 0x4 \n\
/* 08025c10 */ STR R2, [SP] \n\
/* 08025c12 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08025c14 */ BL func_08003bd4 \n\
/* 08025c18 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08025c1a */ BLT branch_08025c28 \n\
/* 08025c1c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025c1e */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08025c20 */ BLE branch_08025c2a \n\
/* 08025c22 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08025c24 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08025c26 */ BLE branch_08025c2a \n\
 \n\
branch_08025c28: \n\
/* 08025c28 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08025c2a: \n\
/* 08025c2a */ BL func_08026b0c \n\
/* 08025c2e */ ADD SP, 0x4 \n\
/* 08025c30 */ POP {R4} \n\
/* 08025c32 */ POP {R0} \n\
/* 08025c34 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
