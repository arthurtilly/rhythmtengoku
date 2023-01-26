asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d5d4 \n\
/* 0804d5d4 */ PUSH {R4-R7, LR} \n\
/* 0804d5d6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d5d8 */ LSLS R2, R2, 0x10 \n\
/* 0804d5da */ LSRS R6, R2, 0x10 \n\
/* 0804d5dc */ LSLS R3, R3, 0x10 \n\
/* 0804d5de */ LSRS R7, R3, 0x10 \n\
/* 0804d5e0 */ LDR R2, =D_03004428 \n\
/* 0804d5e2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0804d5e4 */ STRB R0, [R2] \n\
/* 0804d5e6 */ LSLS R1, R1, 0x10 \n\
/* 0804d5e8 */ ASRS R4, R1, 0x10 \n\
/* 0804d5ea */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d5ec */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d5ee */ BL func_0804cc68 \n\
/* 0804d5f2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d5f4 */ BNE branch_0804d608 \n\
/* 0804d5f6 */ LDR R0, [R5, 0x8] \n\
/* 0804d5f8 */ LSLS R1, R4, 0x4 \n\
/* 0804d5fa */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d5fc */ LSLS R1, R1, 0x2 \n\
/* 0804d5fe */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804d600 */ STRH R6, [R0, 0x2] \n\
/* 0804d602 */ LDR R0, [R5, 0x8] \n\
/* 0804d604 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d606 */ STRH R7, [R1, 0x4] \n\
 \n\
branch_0804d608: \n\
/* 0804d608 */ POP {R4-R7} \n\
/* 0804d60a */ POP {R0} \n\
/* 0804d60c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
