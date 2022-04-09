asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801adf0 \n\
/* 0801adf0 */ PUSH {R4-R7, LR} \n\
/* 0801adf2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801adf4 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801adf6 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0801adf8 */ LDR R7, =D_030046a8 \n\
/* 0801adfa */ LDR R1, [R7] \n\
/* 0801adfc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801adfe */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 0801ae00 */ LDRB R2, [R0] \n\
/* 0801ae02 */ CMP R2, 0x36 @ Compare R2 and 0x36 \n\
/* 0801ae04 */ BGT branch_0801ae28 \n\
/* 0801ae06 */ LSLS R0, R2, 0x2 \n\
/* 0801ae08 */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 0801ae0a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0801ae0c */ STRB R4, [R0] \n\
/* 0801ae0e */ STRB R5, [R0, 0x1] \n\
/* 0801ae10 */ STRB R6, [R0, 0x2] \n\
/* 0801ae12 */ STRB R3, [R0, 0x3] \n\
/* 0801ae14 */ LDR R1, [R7] \n\
/* 0801ae16 */ ADDS R1, 0xC2 @ Add 0xC2 to R1 \n\
/* 0801ae18 */ LDRB R0, [R1] \n\
/* 0801ae1a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801ae1c */ STRB R0, [R1] \n\
/* 0801ae1e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801ae20 */ B branch_0801ae2c \n\
\n\
.ltorg \n\
 \n\
branch_0801ae28: \n\
/* 0801ae28 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801ae2a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0801ae2c: \n\
/* 0801ae2c */ POP {R4-R7} \n\
/* 0801ae2e */ POP {R1} \n\
/* 0801ae30 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
