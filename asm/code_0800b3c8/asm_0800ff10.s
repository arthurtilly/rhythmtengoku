asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ff10 \n\
/* 0800ff10 */ PUSH {R4, R5, LR} \n\
/* 0800ff12 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800ff14 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800ff16 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800ff18 */ BEQ branch_0800ff3e \n\
/* 0800ff1a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0800ff1c */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0800ff1e */ LSLS R2, R1, 0x2 \n\
/* 0800ff20 */ LDRB R1, [R5, 0x12] \n\
/* 0800ff22 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0800ff24 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ff26 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ff28 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800ff2a */ ANDS R4, R3 @ Set R4 to R4 & R3 \n\
/* 0800ff2c */ LSLS R2, R4, 0x3 \n\
/* 0800ff2e */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0800ff30 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800ff32 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ff34 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800ff36 */ STRB R0, [R5, 0x12] \n\
/* 0800ff38 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800ff3a */ BL func_0800f904 \n\
 \n\
branch_0800ff3e: \n\
/* 0800ff3e */ POP {R4, R5} \n\
/* 0800ff40 */ POP {R0} \n\
/* 0800ff42 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
