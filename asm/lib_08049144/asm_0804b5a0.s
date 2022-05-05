asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b5a0 \n\
/* 0804b5a0 */ PUSH {LR} \n\
/* 0804b5a2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804b5a4 */ LDR R0, [R1, 0xC] \n\
/* 0804b5a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b5a8 */ BNE branch_0804b5b0 \n\
/* 0804b5aa */ B branch_0804b5d0 \n\
 \n\
branch_0804b5ac: \n\
/* 0804b5ac */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b5ae */ B branch_0804b5d2 \n\
 \n\
branch_0804b5b0: \n\
/* 0804b5b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804b5b2 */ LDRH R0, [R1] \n\
/* 0804b5b4 */ LSLS R0, R0, 0x16 \n\
/* 0804b5b6 */ LSRS R0, R0, 0x1B \n\
/* 0804b5b8 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804b5ba */ BCS branch_0804b5d0 \n\
/* 0804b5bc */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804b5be */ LDR R1, [R1, 0x8] \n\
 \n\
branch_0804b5c0: \n\
/* 0804b5c0 */ LDRB R0, [R1] \n\
/* 0804b5c2 */ LSLS R0, R0, 0x1F \n\
/* 0804b5c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b5c6 */ BNE branch_0804b5ac \n\
/* 0804b5c8 */ ADDS R1, 0x1C @ Add 0x1C to R1 \n\
/* 0804b5ca */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804b5cc */ CMP R2, R3 @ Check R2 - R3 \n\
/* 0804b5ce */ BCC branch_0804b5c0 \n\
 \n\
branch_0804b5d0: \n\
/* 0804b5d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804b5d2: \n\
/* 0804b5d2 */ POP {R1} \n\
/* 0804b5d4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
