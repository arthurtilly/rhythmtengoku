asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007ef8 \n\
/* 08007ef8 */ PUSH {LR} \n\
/* 08007efa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007efc */ LDR R2, [R3] \n\
/* 08007efe */ LSRS R1, R2, 0x2 \n\
/* 08007f00 */ LDR R0, [R3, 0x4] \n\
/* 08007f02 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007f04 */ LSLS R1, R1, 0x2 \n\
/* 08007f06 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08007f08 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007f0a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007f0c */ STR R0, [R3] \n\
/* 08007f0e */ LDR R1, =gSineTable \n\
/* 08007f10 */ LSLS R0, R0, 0xB \n\
/* 08007f12 */ LSRS R0, R0, 0x15 \n\
/* 08007f14 */ LSLS R0, R0, 0x1 \n\
/* 08007f16 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08007f18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007f1a */ LDRSH R1, [R0, R2] \n\
/* 08007f1c */ LDR R0, [R3, 0x8] \n\
/* 08007f1e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08007f20 */ ASRS R1, R0, 0x8 \n\
/* 08007f22 */ LDRB R0, [R3] \n\
/* 08007f24 */ LSLS R0, R0, 0x1E \n\
/* 08007f26 */ LSRS R0, R0, 0x1E \n\
/* 08007f28 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007f2a */ BEQ branch_08007f48 \n\
/* 08007f2c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007f2e */ BGT branch_08007f3c \n\
/* 08007f30 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007f32 */ BEQ branch_08007f42 \n\
/* 08007f34 */ B branch_08007f52 \n\
\n\
.ltorg \n\
 \n\
branch_08007f3c: \n\
/* 08007f3c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007f3e */ BEQ branch_08007f4e \n\
/* 08007f40 */ B branch_08007f52 \n\
 \n\
branch_08007f42: \n\
/* 08007f42 */ LDR R0, [R3, 0xC] \n\
/* 08007f44 */ STRB R1, [R0] \n\
/* 08007f46 */ B branch_08007f52 \n\
 \n\
branch_08007f48: \n\
/* 08007f48 */ LDR R0, [R3, 0xC] \n\
/* 08007f4a */ STRH R1, [R0] \n\
/* 08007f4c */ B branch_08007f52 \n\
 \n\
branch_08007f4e: \n\
/* 08007f4e */ LDR R0, [R3, 0xC] \n\
/* 08007f50 */ STR R1, [R0] \n\
 \n\
branch_08007f52: \n\
/* 08007f52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007f54 */ POP {R1} \n\
/* 08007f56 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
