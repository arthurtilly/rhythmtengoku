asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004270 \n\
/* 08004270 */ PUSH {LR} \n\
/* 08004272 */ LDR R0, =D_03000748 \n\
/* 08004274 */ LDRB R0, [R0] \n\
/* 08004276 */ LSLS R0, R0, 0x1F \n\
/* 08004278 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800427a */ BEQ branch_08004284 \n\
/* 0800427c */ LDR R0, =D_030008a4 \n\
/* 0800427e */ LDRB R0, [R0] \n\
/* 08004280 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004282 */ BNE branch_08004294 \n\
 \n\
branch_08004284: \n\
/* 08004284 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08004286 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08004288 */ B branch_0800429a \n\
\n\
.ltorg \n\
 \n\
branch_08004294: \n\
/* 08004294 */ LDR R0, =D_030008aa \n\
/* 08004296 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004298 */ LDRSH R0, [R0, R1] \n\
 \n\
branch_0800429a: \n\
/* 0800429a */ POP {R1} \n\
/* 0800429c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
