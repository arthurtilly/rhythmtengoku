asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b590 \n\
/* 0800b590 */ PUSH {R4, R5, LR} \n\
/* 0800b592 */ LDR R2, =D_03001304 \n\
/* 0800b594 */ LDR R1, [R2] \n\
/* 0800b596 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800b598 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800b59a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b59c */ BHI branch_0800b5a2 \n\
/* 0800b59e */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0800b5a0 */ STR R0, [R2] \n\
 \n\
branch_0800b5a2: \n\
/* 0800b5a2 */ LDR R0, =0x04000130 @ !Hardware REG_KEY \n\
/* 0800b5a4 */ LDRH R0, [R0] \n\
/* 0800b5a6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800b5a8 */ LDR R0, =D_0300130e \n\
/* 0800b5aa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b5ac */ LDRH R0, [R5] \n\
/* 0800b5ae */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0800b5b0 */ BNE branch_0800b5d8 \n\
/* 0800b5b2 */ LDR R0, =D_0300130c \n\
/* 0800b5b4 */ LDRH R2, [R0] \n\
/* 0800b5b6 */ LDR R1, =0xfffe \n\
/* 0800b5b8 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800b5ba */ CMP R2, R1 @ Check R2 - R1 \n\
/* 0800b5bc */ BHI branch_0800b5e0 \n\
/* 0800b5be */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
/* 0800b5c0 */ STRH R0, [R3] \n\
/* 0800b5c2 */ B branch_0800b5e0 \n\
\n\
.ltorg \n\
 \n\
branch_0800b5d8: \n\
/* 0800b5d8 */ LDR R1, =D_0300130c \n\
/* 0800b5da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800b5dc */ STRH R0, [R1] \n\
/* 0800b5de */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
 \n\
branch_0800b5e0: \n\
/* 0800b5e0 */ STRH R4, [R5] \n\
/* 0800b5e2 */ LDRH R1, [R3] \n\
/* 0800b5e4 */ LDR R0, =0x257 \n\
/* 0800b5e6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b5e8 */ BHI branch_0800b5fa \n\
/* 0800b5ea */ LDR R2, =D_03001308 \n\
/* 0800b5ec */ LDR R1, [R2] \n\
/* 0800b5ee */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800b5f0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800b5f2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b5f4 */ BHI branch_0800b5fa \n\
/* 0800b5f6 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0800b5f8 */ STR R0, [R2] \n\
 \n\
branch_0800b5fa: \n\
/* 0800b5fa */ POP {R4, R5} \n\
/* 0800b5fc */ POP {R0} \n\
/* 0800b5fe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
