asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006e30 \n\
/* 08006e30 */ PUSH {R4, R5, LR} \n\
/* 08006e32 */ SUB SP, 0x10 \n\
/* 08006e34 */ LDR R4, [SP, 0x1C] \n\
/* 08006e36 */ LSLS R1, R1, 0x10 \n\
/* 08006e38 */ LSRS R1, R1, 0x10 \n\
/* 08006e3a */ LSLS R2, R2, 0x10 \n\
/* 08006e3c */ LSRS R5, R2, 0x10 \n\
/* 08006e3e */ LSLS R3, R3, 0x10 \n\
/* 08006e40 */ LSRS R3, R3, 0x10 \n\
/* 08006e42 */ LSLS R4, R4, 0x10 \n\
/* 08006e44 */ LSRS R4, R4, 0x10 \n\
/* 08006e46 */ SUBS R2, R0, 0x2 @ Set R2 to R0 - 0x2 \n\
/* 08006e48 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08006e4a */ BHI branch_08006e74 \n\
/* 08006e4c */ MOV R0, SP @ Set R0 to SP \n\
/* 08006e4e */ STRH R1, [R0] \n\
/* 08006e50 */ STRH R5, [R0, 0x2] \n\
/* 08006e52 */ STRH R3, [R0, 0x4] \n\
/* 08006e54 */ STRH R4, [R0, 0x6] \n\
/* 08006e56 */ LDR R0, [SP, 0x20] \n\
/* 08006e58 */ STR R0, [SP, 0x8] \n\
/* 08006e5a */ LDR R0, [SP, 0x24] \n\
/* 08006e5c */ STR R0, [SP, 0xC] \n\
/* 08006e5e */ LDR R1, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 08006e60 */ MOV R0, SP @ Set R0 to SP \n\
/* 08006e62 */ STR R0, [R1] \n\
/* 08006e64 */ LDR R0, =(D_03004b10 + 0x1c) \n\
/* 08006e66 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08006e68 */ BEQ branch_08006e6c \n\
/* 08006e6a */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
 \n\
branch_08006e6c: \n\
/* 08006e6c */ STR R0, [R1, 0x4] \n\
/* 08006e6e */ LDR R0, =0x84000004 \n\
/* 08006e70 */ STR R0, [R1, 0x8] \n\
/* 08006e72 */ LDR R0, [R1, 0x8] \n\
 \n\
branch_08006e74: \n\
/* 08006e74 */ ADD SP, 0x10 \n\
/* 08006e76 */ POP {R4, R5} \n\
/* 08006e78 */ POP {R0} \n\
/* 08006e7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
