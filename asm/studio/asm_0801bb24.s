asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801bb24 \n\
/* 0801bb24 */ PUSH {R4, R5, LR} \n\
/* 0801bb26 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801bb28 */ LDR R0, =D_030046a8 \n\
/* 0801bb2a */ LDR R0, [R0] \n\
/* 0801bb2c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801bb2e */ ADDS R2, 0xC2 @ Add 0xC2 to R2 \n\
/* 0801bb30 */ LDRB R2, [R2] \n\
/* 0801bb32 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0801bb34 */ BCS branch_0801bb58 \n\
/* 0801bb36 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0801bb38 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0801bb3a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801bb3c */ ADDS R2, 0xC7 @ Add 0xC7 to R2 \n\
 \n\
branch_0801bb3e: \n\
/* 0801bb3e */ LDRB R1, [R2] \n\
/* 0801bb40 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801bb42 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801bb44 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bb46 */ BNE branch_0801bb50 \n\
/* 0801bb48 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801bb4a */ B branch_0801bb5a \n\
\n\
.ltorg \n\
 \n\
branch_0801bb50: \n\
/* 0801bb50 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0801bb52 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0801bb54 */ CMP R3, R4 @ Check R3 - R4 \n\
/* 0801bb56 */ BCC branch_0801bb3e \n\
 \n\
branch_0801bb58: \n\
/* 0801bb58 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801bb5a: \n\
/* 0801bb5a */ POP {R4, R5} \n\
/* 0801bb5c */ POP {R1} \n\
/* 0801bb5e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
