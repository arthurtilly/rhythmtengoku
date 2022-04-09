asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ff68 \n\
/* 0800ff68 */ PUSH {LR} \n\
/* 0800ff6a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800ff6c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800ff6e */ BEQ branch_0800ff88 \n\
/* 0800ff70 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800ff72 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800ff74 */ LSLS R2, R1, 0x3 \n\
/* 0800ff76 */ LDRB R1, [R3, 0x12] \n\
/* 0800ff78 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0800ff7a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ff7c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ff7e */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800ff80 */ STRB R0, [R3, 0x12] \n\
/* 0800ff82 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800ff84 */ BL func_0800f904 \n\
 \n\
branch_0800ff88: \n\
/* 0800ff88 */ POP {R0} \n\
/* 0800ff8a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
