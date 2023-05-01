asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027888 \n\
/* 08027888 */ PUSH {R4, LR} \n\
/* 0802788a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802788c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802788e */ BEQ branch_080278b8 \n\
/* 08027890 */ LDR R0, =gCurrentEngineData \n\
/* 08027892 */ LDR R2, [R0] \n\
/* 08027894 */ LDR R0, =0x0000042e \n\
/* 08027896 */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 08027898 */ LDRB R0, [R3] \n\
/* 0802789a */ ADDS R1, R0, 0x1 @ Set R1 to R0 + 0x1 \n\
/* 0802789c */ STRB R1, [R3] \n\
/* 0802789e */ LSLS R0, R0, 0x18 \n\
/* 080278a0 */ LSRS R0, R0, 0x16 \n\
/* 080278a2 */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 080278a4 */ LSLS R1, R1, 0x3 \n\
/* 080278a6 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080278a8 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080278aa */ STR R4, [R2] \n\
/* 080278ac */ B branch_080278c2 \n\
\n\
.ltorg \n\
 \n\
branch_080278b8: \n\
/* 080278b8 */ LDR R0, =gCurrentEngineData \n\
/* 080278ba */ LDR R0, [R0] \n\
/* 080278bc */ LDR R1, =0x0000042e \n\
/* 080278be */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080278c0 */ STRB R4, [R0] \n\
 \n\
branch_080278c2: \n\
/* 080278c2 */ POP {R4} \n\
/* 080278c4 */ POP {R0} \n\
/* 080278c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
