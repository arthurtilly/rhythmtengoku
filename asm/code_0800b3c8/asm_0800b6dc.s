asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b6dc \n\
/* 0800b6dc */ PUSH {R4-R6, LR} \n\
/* 0800b6de */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800b6e0 */ STRB R6, [R0] \n\
/* 0800b6e2 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0800b6e4 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0800b6e6 */ LDRB R5, [R0, 0x1] \n\
/* 0800b6e8 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0800b6ea */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800b6ec */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 0800b6ee */ ORRS R4, R1 @ Set R4 to R4 | R1 \n\
/* 0800b6f0 */ STRB R4, [R0, 0x1] \n\
/* 0800b6f2 */ LSLS R2, R2, 0x9 \n\
/* 0800b6f4 */ LDR R1, [R0] \n\
/* 0800b6f6 */ LDR R4, =0x1ff \n\
/* 0800b6f8 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0800b6fa */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800b6fc */ STR R1, [R0] \n\
/* 0800b6fe */ STR R3, [R0, 0x4] \n\
/* 0800b700 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800b702 */ STRB R0, [R3] \n\
/* 0800b704 */ LDR R0, [R3] \n\
/* 0800b706 */ LDR R1, =0xfffc00ff \n\
/* 0800b708 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b70a */ STR R0, [R3] \n\
/* 0800b70c */ STR R6, [R3, 0x4] \n\
/* 0800b70e */ POP {R4-R6} \n\
/* 0800b710 */ POP {R0} \n\
/* 0800b712 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
