asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018138 \n\
/* 08018138 */ PUSH {LR} \n\
/* 0801813a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801813c */ BEQ branch_0801814a \n\
/* 0801813e */ LDR R0, [R0, 0x4] \n\
/* 08018140 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018142 */ BEQ branch_0801814a \n\
/* 08018144 */ STR R0, [R1] \n\
/* 08018146 */ LDR R0, [R0, 0x64] \n\
/* 08018148 */ B branch_0801814e \n\
 \n\
branch_0801814a: \n\
/* 0801814a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801814c */ STR R0, [R1] \n\
 \n\
branch_0801814e: \n\
/* 0801814e */ STR R0, [R2] \n\
/* 08018150 */ POP {R0} \n\
/* 08018152 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
