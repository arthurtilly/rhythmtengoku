asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002f04 \n\
/* 08002f04 */ PUSH {R4, R5, LR} \n\
/* 08002f06 */ SUB SP, 0x4 \n\
/* 08002f08 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002f0a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08002f0c */ B branch_08002f26 \n\
 \n\
branch_08002f0e: \n\
/* 08002f0e */ LDR R0, [R4] \n\
/* 08002f10 */ LDR R1, [R4, 0x4] \n\
/* 08002f12 */ LSLS R1, R1, 0x1 \n\
/* 08002f14 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 08002f16 */ LDR R2, [R4, 0x8] \n\
/* 08002f18 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08002f1a */ LSLS R3, R3, 0x1 \n\
/* 08002f1c */ STR R3, [SP] \n\
/* 08002f1e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08002f20 */ BL func_0800186c \n\
/* 08002f24 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
 \n\
branch_08002f26: \n\
/* 08002f26 */ LDR R0, [R4] \n\
/* 08002f28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002f2a */ BNE branch_08002f0e \n\
/* 08002f2c */ LDR R0, [R4, 0x4] \n\
/* 08002f2e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002f30 */ BNE branch_08002f0e \n\
/* 08002f32 */ LDR R0, [R4, 0x8] \n\
/* 08002f34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002f36 */ BNE branch_08002f0e \n\
/* 08002f38 */ ADD SP, 0x4 \n\
/* 08002f3a */ POP {R4, R5} \n\
/* 08002f3c */ POP {R0} \n\
/* 08002f3e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
