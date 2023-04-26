asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e960 \n\
/* 0803e960 */ PUSH {LR} \n\
/* 0803e962 */ LDR R0, =gCurrentEngineData \n\
/* 0803e964 */ LDR R1, [R0] \n\
/* 0803e966 */ MOVS R2, 0xE7 @ Set R2 to 0xE7 \n\
/* 0803e968 */ LSLS R2, R2, 0x2 \n\
/* 0803e96a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803e96c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e96e */ LDRSH R0, [R0, R2] \n\
/* 0803e970 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e972 */ BLT branch_0803e982 \n\
/* 0803e974 */ LDR R0, =0x39e \n\
/* 0803e976 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803e978 */ LDRH R0, [R1] \n\
/* 0803e97a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e97c */ BEQ branch_0803e982 \n\
/* 0803e97e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803e980 */ STRH R0, [R1] \n\
 \n\
branch_0803e982: \n\
/* 0803e982 */ POP {R0} \n\
/* 0803e984 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
