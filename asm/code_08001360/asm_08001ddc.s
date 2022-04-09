asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001ddc \n\
/* 08001ddc */ PUSH {R4-R7, LR} \n\
/* 08001dde */ SUB SP, 0x18 \n\
/* 08001de0 */ LDR R7, [SP, 0x2C] \n\
/* 08001de2 */ LSLS R0, R0, 0x18 \n\
/* 08001de4 */ LSLS R1, R1, 0x18 \n\
/* 08001de6 */ LSRS R1, R1, 0x18 \n\
/* 08001de8 */ MOV R6, SP @ Set R6 to SP \n\
/* 08001dea */ LDRH R5, [R6] \n\
/* 08001dec */ LDR R4, =0xfffffe01 \n\
/* 08001dee */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08001df0 */ MOVS R5, 0x40 @ Set R5 to 0x40 \n\
/* 08001df2 */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 08001df4 */ STRH R4, [R6] \n\
/* 08001df6 */ LSRS R0, R0, 0xF \n\
/* 08001df8 */ LDR R4, [SP] \n\
/* 08001dfa */ LDR R5, =0xfffe01ff \n\
/* 08001dfc */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08001dfe */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 08001e00 */ STR R4, [SP] \n\
/* 08001e02 */ MOV R5, SP @ Set R5 to SP \n\
/* 08001e04 */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08001e06 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08001e08 */ LSLS R1, R1, 0x1 \n\
/* 08001e0a */ LDRB R4, [R5, 0x2] \n\
/* 08001e0c */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08001e0e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001e10 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08001e12 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001e14 */ STRB R0, [R5, 0x2] \n\
/* 08001e16 */ STR R2, [SP, 0x4] \n\
/* 08001e18 */ STR R3, [SP, 0x8] \n\
/* 08001e1a */ STR R7, [SP, 0x10] \n\
/* 08001e1c */ MOV R2, SP @ Set R2 to SP \n\
/* 08001e1e */ LDRH R1, [R2, 0x2] \n\
/* 08001e20 */ LDR R0, =0xfffffe7f \n\
/* 08001e22 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001e24 */ STRH R0, [R2, 0x2] \n\
/* 08001e26 */ LDRB R0, [R2] \n\
/* 08001e28 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001e2a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001e2c */ STRB R0, [R2] \n\
/* 08001e2e */ MOV R0, SP @ Set R0 to SP \n\
/* 08001e30 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001e32 */ BL func_08001a64 \n\
/* 08001e36 */ ADD SP, 0x18 \n\
/* 08001e38 */ POP {R4-R7} \n\
/* 08001e3a */ POP {R0} \n\
/* 08001e3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
