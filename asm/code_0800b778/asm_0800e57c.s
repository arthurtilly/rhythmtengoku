asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e57c \n\
/* 0800e57c */ PUSH {R4-R7, LR} \n\
/* 0800e57e */ SUB SP, 0x14 \n\
/* 0800e580 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800e582 */ LDR R1, [SP, 0x28] \n\
/* 0800e584 */ LDR R4, [SP, 0x2C] \n\
/* 0800e586 */ LDR R5, [SP, 0x30] \n\
/* 0800e588 */ MOV R12, R5 @ Set R12 to R5 \n\
/* 0800e58a */ LSLS R2, R2, 0x10 \n\
/* 0800e58c */ LSRS R7, R2, 0x10 \n\
/* 0800e58e */ LSLS R3, R3, 0x10 \n\
/* 0800e590 */ LSRS R5, R3, 0x10 \n\
/* 0800e592 */ LSLS R1, R1, 0x10 \n\
/* 0800e594 */ LSRS R3, R1, 0x10 \n\
/* 0800e596 */ LSLS R4, R4, 0x10 \n\
/* 0800e598 */ LSRS R4, R4, 0x10 \n\
/* 0800e59a */ ADD R1, SP, 0x4 \n\
/* 0800e59c */ STRH R0, [R1] \n\
/* 0800e59e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800e5a0 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800e5a2 */ STRH R1, [R0, 0xE] \n\
/* 0800e5a4 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800e5a6 */ BEQ branch_0800e5c2 \n\
/* 0800e5a8 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800e5aa */ BCC branch_0800e5b2 \n\
/* 0800e5ac */ CMP R6, 0x2 @ Compare R6 and 0x2 \n\
/* 0800e5ae */ BEQ branch_0800e5d6 \n\
/* 0800e5b0 */ B branch_0800e604 \n\
 \n\
branch_0800e5b2: \n\
/* 0800e5b2 */ ADD R0, SP, 0x4 \n\
/* 0800e5b4 */ STRH R7, [R0, 0x2] \n\
/* 0800e5b6 */ STRH R5, [R0, 0x4] \n\
/* 0800e5b8 */ STRH R3, [R0, 0x6] \n\
/* 0800e5ba */ STRH R4, [R0, 0x8] \n\
/* 0800e5bc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800e5be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e5c0 */ B branch_0800e5fe \n\
 \n\
branch_0800e5c2: \n\
/* 0800e5c2 */ ADD R0, SP, 0x4 \n\
/* 0800e5c4 */ STRH R3, [R0, 0x2] \n\
/* 0800e5c6 */ STRH R4, [R0, 0x4] \n\
/* 0800e5c8 */ STRH R7, [R0, 0x6] \n\
/* 0800e5ca */ STRH R5, [R0, 0x8] \n\
/* 0800e5cc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800e5ce */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0800e5d0 */ STRH R0, [R1, 0xA] \n\
/* 0800e5d2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800e5d4 */ B branch_0800e602 \n\
 \n\
branch_0800e5d6: \n\
/* 0800e5d6 */ ADD R2, SP, 0x4 \n\
/* 0800e5d8 */ LSLS R0, R7, 0x10 \n\
/* 0800e5da */ ASRS R0, R0, 0x10 \n\
/* 0800e5dc */ LSLS R1, R3, 0x10 \n\
/* 0800e5de */ ASRS R1, R1, 0x10 \n\
/* 0800e5e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800e5e2 */ ASRS R0, R0, 0x1 \n\
/* 0800e5e4 */ STRH R0, [R2, 0x2] \n\
/* 0800e5e6 */ LSLS R0, R5, 0x10 \n\
/* 0800e5e8 */ ASRS R0, R0, 0x10 \n\
/* 0800e5ea */ LSLS R1, R4, 0x10 \n\
/* 0800e5ec */ ASRS R1, R1, 0x10 \n\
/* 0800e5ee */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800e5f0 */ ASRS R0, R0, 0x1 \n\
/* 0800e5f2 */ STRH R0, [R2, 0x4] \n\
/* 0800e5f4 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800e5f6 */ STRH R3, [R0, 0x6] \n\
/* 0800e5f8 */ STRH R4, [R0, 0x8] \n\
/* 0800e5fa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800e5fc */ LDR R0, =0xffc0 \n\
 \n\
branch_0800e5fe: \n\
/* 0800e5fe */ STRH R0, [R1, 0xA] \n\
/* 0800e600 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
 \n\
branch_0800e602: \n\
/* 0800e602 */ STRH R0, [R1, 0xC] \n\
 \n\
branch_0800e604: \n\
/* 0800e604 */ BL func_0800c3b8 \n\
/* 0800e608 */ LSLS R0, R0, 0x10 \n\
/* 0800e60a */ LSRS R0, R0, 0x10 \n\
/* 0800e60c */ LDR R1, =D_08936bf4 \n\
/* 0800e60e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e610 */ STR R2, [SP] \n\
/* 0800e612 */ ADD R2, SP, 0x4 \n\
/* 0800e614 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e616 */ BL func_08005b20 \n\
/* 0800e61a */ ADD SP, 0x14 \n\
/* 0800e61c */ POP {R4-R7} \n\
/* 0800e61e */ POP {R1} \n\
/* 0800e620 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
