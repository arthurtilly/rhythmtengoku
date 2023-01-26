asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005f04 \n\
/* 08005f04 */ PUSH {R4, R5, LR} \n\
/* 08005f06 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005f08 */ LSLS R3, R3, 0x10 \n\
/* 08005f0a */ LSRS R3, R3, 0x10 \n\
/* 08005f0c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005f0e */ BLT branch_08005f2c \n\
/* 08005f10 */ LDRH R0, [R4, 0x4] \n\
/* 08005f12 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08005f14 */ BGE branch_08005f2c \n\
/* 08005f16 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08005f18 */ BLT branch_08005f2c \n\
/* 08005f1a */ LDRH R5, [R4, 0x6] \n\
/* 08005f1c */ CMP R2, R5 @ Check R2 - R5 \n\
/* 08005f1e */ BGE branch_08005f2c \n\
/* 08005f20 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08005f22 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08005f24 */ LDR R1, [R4] \n\
/* 08005f26 */ LSLS R0, R0, 0x1 \n\
/* 08005f28 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08005f2a */ STRH R3, [R0] \n\
 \n\
branch_08005f2c: \n\
/* 08005f2c */ POP {R4, R5} \n\
/* 08005f2e */ POP {R0} \n\
/* 08005f30 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
