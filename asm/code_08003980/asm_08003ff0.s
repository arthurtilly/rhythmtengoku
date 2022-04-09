asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003ff0 \n\
/* 08003ff0 */ PUSH {R4, LR} \n\
/* 08003ff2 */ LDR R3, =D_03000748 \n\
/* 08003ff4 */ LDRB R4, [R3] \n\
/* 08003ff6 */ LSLS R0, R4, 0x1C \n\
/* 08003ff8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003ffa */ BGE branch_08004022 \n\
/* 08003ffc */ LDR R0, [R3, 0x10] \n\
/* 08003ffe */ STR R0, [R3, 0x8] \n\
/* 08004000 */ LDR R0, [R3, 0x14] \n\
/* 08004002 */ STR R0, [R3, 0xC] \n\
/* 08004004 */ LDRH R0, [R3, 0x4] \n\
/* 08004006 */ STRH R0, [R3, 0x2] \n\
/* 08004008 */ LSLS R1, R4, 0x1D \n\
/* 0800400a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800400c */ LSRS R1, R1, 0x1F \n\
/* 0800400e */ LSLS R1, R1, 0x1 \n\
/* 08004010 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08004012 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08004014 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08004016 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08004018 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0800401a */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800401c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800401e */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08004020 */ STRB R0, [R3] \n\
 \n\
branch_08004022: \n\
/* 08004022 */ POP {R4} \n\
/* 08004024 */ POP {R0} \n\
/* 08004026 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
