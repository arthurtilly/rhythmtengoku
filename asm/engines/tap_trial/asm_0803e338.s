asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e338 \n\
/* 0803e338 */ PUSH {LR} \n\
/* 0803e33a */ LDR R1, =gCurrentEngineData \n\
/* 0803e33c */ LDR R1, [R1] \n\
/* 0803e33e */ MOVS R2, 0xE4 @ Set R2 to 0xE4 \n\
/* 0803e340 */ LSLS R2, R2, 0x2 \n\
/* 0803e342 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e344 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e346 */ BGE branch_0803e34a \n\
/* 0803e348 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0803e34a: \n\
/* 0803e34a */ STR R0, [R1] \n\
/* 0803e34c */ POP {R0} \n\
/* 0803e34e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
