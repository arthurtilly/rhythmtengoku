asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e2f4 \n\
/* 0803e2f4 */ PUSH {LR} \n\
/* 0803e2f6 */ LDR R1, =gCurrentEngineData \n\
/* 0803e2f8 */ LDR R1, [R1] \n\
/* 0803e2fa */ MOVS R2, 0xE3 @ Set R2 to 0xE3 \n\
/* 0803e2fc */ LSLS R2, R2, 0x2 \n\
/* 0803e2fe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e300 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e302 */ BGE branch_0803e306 \n\
/* 0803e304 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0803e306: \n\
/* 0803e306 */ STR R0, [R1] \n\
/* 0803e308 */ POP {R0} \n\
/* 0803e30a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
