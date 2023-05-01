asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c400 \n\
/* 0803c400 */ PUSH {LR} \n\
/* 0803c402 */ LDR R0, =D_03004b10 \n\
/* 0803c404 */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0803c406 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c408 */ STRH R1, [R0] \n\
/* 0803c40a */ LDR R0, =gCurrentEngineData \n\
/* 0803c40c */ LDR R0, [R0] \n\
/* 0803c40e */ LDRB R0, [R0, 0x1] \n\
/* 0803c410 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803c412 */ BEQ branch_0803c432 \n\
/* 0803c414 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803c416 */ BGT branch_0803c428 \n\
/* 0803c418 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803c41a */ BEQ branch_0803c42c \n\
/* 0803c41c */ B branch_0803c436 \n\
\n\
.ltorg \n\
 \n\
branch_0803c428: \n\
/* 0803c428 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803c42a */ BGT branch_0803c436 \n\
 \n\
branch_0803c42c: \n\
/* 0803c42c */ BL func_0803c2f4 \n\
/* 0803c430 */ B branch_0803c436 \n\
 \n\
branch_0803c432: \n\
/* 0803c432 */ BL func_0803c3c4 \n\
 \n\
branch_0803c436: \n\
/* 0803c436 */ POP {R0} \n\
/* 0803c438 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
