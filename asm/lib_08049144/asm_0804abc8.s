asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804abc8 \n\
/* 0804abc8 */ PUSH {R4, R5, LR} \n\
/* 0804abca */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804abcc */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804abce */ LSLS R2, R2, 0x10 \n\
/* 0804abd0 */ LSRS R2, R2, 0x10 \n\
/* 0804abd2 */ LDR R1, [R4, 0x18] \n\
/* 0804abd4 */ LSLS R0, R5, 0x5 \n\
/* 0804abd6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804abd8 */ LDR R0, [R0] \n\
/* 0804abda */ LSLS R0, R0, 0x9 \n\
/* 0804abdc */ LSRS R3, R0, 0x12 \n\
/* 0804abde */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804abe0 */ LSLS R0, R0, 0x8 \n\
/* 0804abe2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804abe4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804abe6 */ BEQ branch_0804abf8 \n\
/* 0804abe8 */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 0804abea */ LSLS R0, R0, 0x6 \n\
/* 0804abec */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0804abee */ LSLS R0, R2, 0x7 \n\
/* 0804abf0 */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0804abf2 */ LSLS R0, R3, 0x10 \n\
/* 0804abf4 */ LSRS R3, R0, 0x10 \n\
/* 0804abf6 */ B branch_0804abfe \n\
 \n\
branch_0804abf8: \n\
/* 0804abf8 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804abfa */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0804abfc */ ORRS R3, R2 @ Set R3 to R3 | R2 \n\
 \n\
branch_0804abfe: \n\
/* 0804abfe */ LDR R0, [R4, 0x18] \n\
/* 0804ac00 */ LSLS R2, R5, 0x5 \n\
/* 0804ac02 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804ac04 */ LDR R0, =0x00003fff \n\
/* 0804ac06 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0804ac08 */ LSLS R3, R3, 0x9 \n\
/* 0804ac0a */ LDR R0, [R2] \n\
/* 0804ac0c */ LDR R1, =0xff8001ff \n\
/* 0804ac0e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804ac10 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 0804ac12 */ STR R0, [R2] \n\
/* 0804ac14 */ POP {R4, R5} \n\
/* 0804ac16 */ POP {R0} \n\
/* 0804ac18 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
