asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ff44 \n\
/* 0800ff44 */ PUSH {LR} \n\
/* 0800ff46 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800ff48 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800ff4a */ BEQ branch_0800ff64 \n\
/* 0800ff4c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800ff4e */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800ff50 */ LSLS R2, R1, 0x2 \n\
/* 0800ff52 */ LDRB R1, [R3, 0x12] \n\
/* 0800ff54 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0800ff56 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ff58 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ff5a */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800ff5c */ STRB R0, [R3, 0x12] \n\
/* 0800ff5e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800ff60 */ BL func_0800f904 \n\
 \n\
branch_0800ff64: \n\
/* 0800ff64 */ POP {R0} \n\
/* 0800ff66 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
