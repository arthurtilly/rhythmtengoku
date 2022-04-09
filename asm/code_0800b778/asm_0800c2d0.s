asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c2d0 \n\
/* 0800c2d0 */ PUSH {R4, LR} \n\
/* 0800c2d2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c2d4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c2d6 */ BEQ branch_0800c306 \n\
/* 0800c2d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c2da */ LDR R0, [R4] \n\
/* 0800c2dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c2de */ BEQ branch_0800c2ec \n\
/* 0800c2e0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_0800c2e2: \n\
/* 0800c2e2 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0800c2e4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c2e6 */ LDR R0, [R1] \n\
/* 0800c2e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c2ea */ BNE branch_0800c2e2 \n\
 \n\
branch_0800c2ec: \n\
/* 0800c2ec */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c2ee */ BEQ branch_0800c306 \n\
/* 0800c2f0 */ LSLS R0, R2, 0x10 \n\
/* 0800c2f2 */ LSRS R0, R0, 0x10 \n\
/* 0800c2f4 */ BL func_08001980 \n\
/* 0800c2f8 */ LSLS R0, R0, 0x10 \n\
/* 0800c2fa */ LSRS R0, R0, 0xE \n\
/* 0800c2fc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800c2fe */ LDR R0, [R0] \n\
/* 0800c300 */ BL func_08002634 \n\
/* 0800c304 */ B branch_0800c308 \n\
 \n\
branch_0800c306: \n\
/* 0800c306 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800c308: \n\
/* 0800c308 */ POP {R4} \n\
/* 0800c30a */ POP {R1} \n\
/* 0800c30c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
