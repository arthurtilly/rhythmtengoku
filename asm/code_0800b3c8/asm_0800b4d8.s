asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b4d8 \n\
/* 0800b4d8 */ PUSH {R4-R6, LR} \n\
/* 0800b4da */ SUB SP, 0x14 \n\
/* 0800b4dc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b4de */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800b4e0 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800b4e2 */ BEQ branch_0800b540 \n\
/* 0800b4e4 */ MOVS R1, 0x2A @ Set R1 to 0x2A \n\
/* 0800b4e6 */ LDRSH R0, [R5, R1] \n\
/* 0800b4e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b4ea */ BLT branch_0800b4f8 \n\
/* 0800b4ec */ LDR R0, =D_03005380 \n\
/* 0800b4ee */ LDR R0, [R0] \n\
/* 0800b4f0 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 0800b4f2 */ LDRSH R1, [R5, R2] \n\
/* 0800b4f4 */ BL func_0804d504 \n\
 \n\
branch_0800b4f8: \n\
/* 0800b4f8 */ LDR R0, =0xFFFF \n\
/* 0800b4fa */ STRH R0, [R5, 0x2A] \n\
/* 0800b4fc */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800b4fe */ BEQ branch_0800b540 \n\
/* 0800b500 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800b502 */ BL func_0800ae1c \n\
/* 0800b506 */ LSLS R0, R0, 0x10 \n\
/* 0800b508 */ ASRS R0, R0, 0x10 \n\
/* 0800b50a */ LDR R4, =D_03005380 \n\
/* 0800b50c */ LDR R1, [R4] \n\
/* 0800b50e */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0800b510 */ LDRSH R3, [R5, R2] \n\
/* 0800b512 */ STR R0, [SP] \n\
/* 0800b514 */ LDRH R0, [R5, 0xE] \n\
/* 0800b516 */ STR R0, [SP, 0x4] \n\
/* 0800b518 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800b51a */ STR R0, [SP, 0x8] \n\
/* 0800b51c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800b51e */ STR R0, [SP, 0xC] \n\
/* 0800b520 */ STR R0, [SP, 0x10] \n\
/* 0800b522 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800b524 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800b526 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800b528 */ BL func_0804d160 \n\
/* 0800b52c */ STRH R0, [R5, 0x2A] \n\
/* 0800b52e */ LDR R0, [R4] \n\
/* 0800b530 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 0800b532 */ LDRSH R1, [R5, R2] \n\
/* 0800b534 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800b536 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 0800b538 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800b53a */ ADDS R3, 0x1E @ Add 0x1E to R3 \n\
/* 0800b53c */ BL func_0804db44 \n\
 \n\
branch_0800b540: \n\
/* 0800b540 */ ADD SP, 0x14 \n\
/* 0800b542 */ POP {R4-R6} \n\
/* 0800b544 */ POP {R0} \n\
/* 0800b546 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
