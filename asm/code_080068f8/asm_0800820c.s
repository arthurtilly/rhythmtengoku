asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800820c \n\
/* 0800820c */ PUSH {R4-R6, LR} \n\
/* 0800820e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08008210 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08008212 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08008214 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008216 */ B branch_08008230 \n\
 \n\
branch_08008218: \n\
/* 08008218 */ LDRB R3, [R4] \n\
/* 0800821a */ CMP R1, R3 @ Check R1 - R3 \n\
/* 0800821c */ BEQ branch_0800822a \n\
/* 0800821e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008220 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08008222 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 08008224 */ BLS branch_08008242 \n\
/* 08008226 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008228 */ B branch_08008242 \n\
 \n\
branch_0800822a: \n\
/* 0800822a */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800822c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800822e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_08008230: \n\
/* 08008230 */ LDRB R1, [R5] \n\
/* 08008232 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08008234 */ BNE branch_0800823c \n\
/* 08008236 */ LDRB R0, [R4] \n\
/* 08008238 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800823a */ BEQ branch_08008240 \n\
 \n\
branch_0800823c: \n\
/* 0800823c */ CMP R2, R6 @ Check R2 - R6 \n\
/* 0800823e */ BCC branch_08008218 \n\
 \n\
branch_08008240: \n\
/* 08008240 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08008242: \n\
/* 08008242 */ POP {R4-R6} \n\
/* 08008244 */ POP {R1} \n\
/* 08008246 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
