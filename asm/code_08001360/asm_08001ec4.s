asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001ec4 \n\
/* 08001ec4 */ PUSH {R4-R7, LR} \n\
/* 08001ec6 */ SUB SP, 0x18 \n\
/* 08001ec8 */ LDR R7, [SP, 0x2C] \n\
/* 08001eca */ LSLS R0, R0, 0x18 \n\
/* 08001ecc */ LSLS R1, R1, 0x18 \n\
/* 08001ece */ LSRS R1, R1, 0x18 \n\
/* 08001ed0 */ MOV R6, SP @ Set R6 to SP \n\
/* 08001ed2 */ LDRH R5, [R6] \n\
/* 08001ed4 */ LDR R4, =0xfffffe01 \n\
/* 08001ed6 */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08001ed8 */ MOVS R5, 0x40 @ Set R5 to 0x40 \n\
/* 08001eda */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 08001edc */ STRH R4, [R6] \n\
/* 08001ede */ LSRS R0, R0, 0xF \n\
/* 08001ee0 */ LDR R4, [SP] \n\
/* 08001ee2 */ LDR R5, =0xfffe01ff \n\
/* 08001ee4 */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08001ee6 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 08001ee8 */ STR R4, [SP] \n\
/* 08001eea */ MOV R5, SP @ Set R5 to SP \n\
/* 08001eec */ MOVS R0, 0x3F @ Set R0 to 0x3F \n\
/* 08001eee */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08001ef0 */ LSLS R1, R1, 0x1 \n\
/* 08001ef2 */ LDRB R4, [R5, 0x2] \n\
/* 08001ef4 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08001ef6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001ef8 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08001efa */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001efc */ STRB R0, [R5, 0x2] \n\
/* 08001efe */ STR R2, [SP, 0x4] \n\
/* 08001f00 */ STR R3, [SP, 0x8] \n\
/* 08001f02 */ STR R7, [SP, 0x10] \n\
/* 08001f04 */ MOV R2, SP @ Set R2 to SP \n\
/* 08001f06 */ LDRH R0, [R2, 0x2] \n\
/* 08001f08 */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 08001f0a */ LSLS R3, R3, 0x1 \n\
/* 08001f0c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08001f0e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001f10 */ STRH R0, [R2, 0x2] \n\
/* 08001f12 */ LDRB R0, [R2] \n\
/* 08001f14 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001f16 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08001f18 */ STRB R0, [R2] \n\
/* 08001f1a */ MOV R0, SP @ Set R0 to SP \n\
/* 08001f1c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001f1e */ BL func_08001a64 \n\
/* 08001f22 */ ADD SP, 0x18 \n\
/* 08001f24 */ POP {R4-R7} \n\
/* 08001f26 */ POP {R0} \n\
/* 08001f28 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
