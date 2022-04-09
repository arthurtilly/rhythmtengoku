asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001e4c \n\
/* 08001e4c */ PUSH {R4-R7, LR} \n\
/* 08001e4e */ SUB SP, 0x18 \n\
/* 08001e50 */ LDR R7, [SP, 0x2C] \n\
/* 08001e52 */ LSLS R0, R0, 0x18 \n\
/* 08001e54 */ LSLS R1, R1, 0x18 \n\
/* 08001e56 */ LSRS R1, R1, 0x18 \n\
/* 08001e58 */ MOV R6, SP @ Set R6 to SP \n\
/* 08001e5a */ LDRH R5, [R6] \n\
/* 08001e5c */ LDR R4, =0xfffffe01 \n\
/* 08001e5e */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08001e60 */ MOVS R5, 0x40 @ Set R5 to 0x40 \n\
/* 08001e62 */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 08001e64 */ STRH R4, [R6] \n\
/* 08001e66 */ LSRS R0, R0, 0xF \n\
/* 08001e68 */ LDR R4, [SP] \n\
/* 08001e6a */ LDR R5, =0xfffe01ff \n\
/* 08001e6c */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08001e6e */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 08001e70 */ STR R4, [SP] \n\
/* 08001e72 */ MOV R5, SP @ Set R5 to SP \n\
/* 08001e74 */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08001e76 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08001e78 */ LSLS R1, R1, 0x1 \n\
/* 08001e7a */ LDRB R4, [R5, 0x2] \n\
/* 08001e7c */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08001e7e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001e80 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08001e82 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001e84 */ STRB R0, [R5, 0x2] \n\
/* 08001e86 */ STR R2, [SP, 0x4] \n\
/* 08001e88 */ STR R3, [SP, 0x8] \n\
/* 08001e8a */ STR R7, [SP, 0x10] \n\
/* 08001e8c */ MOV R2, SP @ Set R2 to SP \n\
/* 08001e8e */ LDRH R1, [R2, 0x2] \n\
/* 08001e90 */ LDR R0, =0xfffffe7f \n\
/* 08001e92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001e94 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08001e96 */ LSLS R3, R3, 0x1 \n\
/* 08001e98 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08001e9a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001e9c */ STRH R0, [R2, 0x2] \n\
/* 08001e9e */ LDRB R0, [R2] \n\
/* 08001ea0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001ea2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001ea4 */ STRB R0, [R2] \n\
/* 08001ea6 */ MOV R0, SP @ Set R0 to SP \n\
/* 08001ea8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001eaa */ BL func_08001a64 \n\
/* 08001eae */ ADD SP, 0x18 \n\
/* 08001eb0 */ POP {R4-R7} \n\
/* 08001eb2 */ POP {R0} \n\
/* 08001eb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
