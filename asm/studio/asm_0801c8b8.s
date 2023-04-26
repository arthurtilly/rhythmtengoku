asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c8b8 \n\
/* 0801c8b8 */ PUSH {R4, R5, LR} \n\
/* 0801c8ba */ LDR R5, =gCurrentSceneData \n\
/* 0801c8bc */ LDR R1, [R5] \n\
/* 0801c8be */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 0801c8c0 */ LSLS R2, R2, 0x2 \n\
/* 0801c8c2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801c8c4 */ LDR R0, [R0] \n\
/* 0801c8c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c8c8 */ BEQ branch_0801c910 \n\
/* 0801c8ca */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801c8cc */ LSLS R2, R2, 0x2 \n\
/* 0801c8ce */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801c8d0 */ LDR R0, [R0] \n\
/* 0801c8d2 */ BL func_0800b368 \n\
/* 0801c8d6 */ NEGS R1, R0 @ Set R1 to -R0 \n\
/* 0801c8d8 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0801c8da */ LSRS R4, R1, 0x1F \n\
/* 0801c8dc */ LDR R0, [R5] \n\
/* 0801c8de */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801c8e0 */ LSLS R1, R1, 0x2 \n\
/* 0801c8e2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c8e4 */ LDR R0, [R0] \n\
/* 0801c8e6 */ BL func_0800b368 \n\
/* 0801c8ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c8ec */ BEQ branch_0801c8f0 \n\
/* 0801c8ee */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801c8f0: \n\
/* 0801c8f0 */ LDR R0, [R5] \n\
/* 0801c8f2 */ MOVS R2, 0xDA @ Set R2 to 0xDA \n\
/* 0801c8f4 */ LSLS R2, R2, 0x2 \n\
/* 0801c8f6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c8f8 */ LDR R0, [R0] \n\
/* 0801c8fa */ BL func_0800b368 \n\
/* 0801c8fe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c900 */ BEQ branch_0801c904 \n\
/* 0801c902 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801c904: \n\
/* 0801c904 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801c906 */ BNE branch_0801c910 \n\
/* 0801c908 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801c90a */ B branch_0801c912 \n\
\n\
.ltorg \n\
 \n\
branch_0801c910: \n\
/* 0801c910 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801c912: \n\
/* 0801c912 */ POP {R4, R5} \n\
/* 0801c914 */ POP {R1} \n\
/* 0801c916 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
