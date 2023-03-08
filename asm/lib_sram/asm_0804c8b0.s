asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start write_sram_fast \n\
/* 0804c8b0 */ PUSH {R4-R7, LR} \n\
/* 0804c8b2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804c8b4 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0804c8b6 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0804c8b8 */ LDR R2, =0x04000204 @ !Hardware REG_WAITCNT \n\
/* 0804c8ba */ LDRH R0, [R2] \n\
/* 0804c8bc */ LDR R1, =0x0000fffc \n\
/* 0804c8be */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804c8c0 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804c8c2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804c8c4 */ STRH R0, [R2] \n\
/* 0804c8c6 */ B branch_0804c8de \n\
\n\
.ltorg \n\
 \n\
branch_0804c8d0: \n\
/* 0804c8d0 */ LDRB R0, [R4] \n\
/* 0804c8d2 */ STRB R0, [R6] \n\
/* 0804c8d4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c8d6 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0804c8d8 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
/* 0804c8da */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804c8dc */ BEQ branch_0804c916 \n\
 \n\
branch_0804c8de: \n\
/* 0804c8de */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c8e0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804c8e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c8e4 */ BNE branch_0804c8d0 \n\
/* 0804c8e6 */ LSRS R7, R5, 0x2 \n\
/* 0804c8e8 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804c8ea */ BEQ branch_0804c900 \n\
/* 0804c8ec */ LDR R0, =write_int_sram_fast \n\
/* 0804c8ee */ LDR R3, [R0] \n\
/* 0804c8f0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c8f2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804c8f4 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0804c8f6 */ BL _call_via_r3 \n\
/* 0804c8fa */ LSLS R0, R7, 0x2 \n\
/* 0804c8fc */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0804c8fe */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
 \n\
branch_0804c900: \n\
/* 0804c900 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804c902 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 0804c904 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804c906 */ BEQ branch_0804c916 \n\
 \n\
branch_0804c908: \n\
/* 0804c908 */ LDRB R0, [R4] \n\
/* 0804c90a */ STRB R0, [R6] \n\
/* 0804c90c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c90e */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0804c910 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
/* 0804c912 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804c914 */ BNE branch_0804c908 \n\
 \n\
branch_0804c916: \n\
/* 0804c916 */ POP {R4-R7} \n\
/* 0804c918 */ POP {R0} \n\
/* 0804c91a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
