asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e598 \n\
/* 0804e598 */ PUSH {R4-R6, LR} \n\
/* 0804e59a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804e59c */ PUSH {R6} \n\
/* 0804e59e */ SUB SP, 0x4 \n\
/* 0804e5a0 */ LDR R2, =func_0804e938 \n\
/* 0804e5a2 */ LDR R0, =D_08bd0cd0 \n\
/* 0804e5a4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804e5a6 */ LDR R0, [R0] \n\
/* 0804e5a8 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0804e5aa */ STRH R6, [R0] \n\
/* 0804e5ac */ LDR R4, =D_03004438 \n\
/* 0804e5ae */ LDRH R1, [R4] \n\
/* 0804e5b0 */ LDR R0, =0x0000fffe \n\
/* 0804e5b2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e5b4 */ STRH R0, [R4] \n\
/* 0804e5b6 */ LDR R5, =D_08bd0cc8 \n\
/* 0804e5b8 */ LDR R1, [R5] \n\
/* 0804e5ba */ LDRH R0, [R4] \n\
/* 0804e5bc */ STRH R0, [R1] \n\
/* 0804e5be */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e5c0 */ BL _call_via_r2 \n\
/* 0804e5c4 */ STR R0, [SP] \n\
/* 0804e5c6 */ LDRH R0, [R4] \n\
/* 0804e5c8 */ ORRS R0, R6 @ Set R0 to R0 | R6 \n\
/* 0804e5ca */ STRH R0, [R4] \n\
/* 0804e5cc */ LDR R1, [R5] \n\
/* 0804e5ce */ LDRH R0, [R4] \n\
/* 0804e5d0 */ STRH R0, [R1] \n\
/* 0804e5d2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804e5d4 */ LDR R1, [R0] \n\
/* 0804e5d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804e5d8 */ STRH R0, [R1] \n\
/* 0804e5da */ LDR R0, [SP] \n\
/* 0804e5dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e5de */ BEQ branch_0804e608 \n\
/* 0804e5e0 */ LDR R1, [SP] \n\
/* 0804e5e2 */ LDR R0, =0x00000fff \n\
/* 0804e5e4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e5e6 */ BEQ branch_0804e608 \n\
/* 0804e5e8 */ LDR R0, [SP] \n\
/* 0804e5ea */ LSLS R0, R0, 0x4 \n\
/* 0804e5ec */ B branch_0804e60c \n\
\n\
.ltorg \n\
 \n\
branch_0804e608: \n\
/* 0804e608 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e60a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804e60c: \n\
/* 0804e60c */ ADD SP, 0x4 \n\
/* 0804e60e */ POP {R3} \n\
/* 0804e610 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804e612 */ POP {R4-R6} \n\
/* 0804e614 */ POP {R1} \n\
/* 0804e616 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
