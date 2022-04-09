asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d080 \n\
/* 0802d080 */ PUSH {LR} \n\
/* 0802d082 */ LDR R1, =D_030055d0 \n\
/* 0802d084 */ LDR R2, [R1] \n\
/* 0802d086 */ LSLS R1, R0, 0x2 \n\
/* 0802d088 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802d08a */ LSLS R1, R1, 0x3 \n\
/* 0802d08c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802d08e */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802d090 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d092 */ LDR R0, [R0] \n\
/* 0802d094 */ CMP R0, 0x8 @ Compare R0 and 0x8 \n\
/* 0802d096 */ BEQ branch_0802d0a8 \n\
/* 0802d098 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802d09a */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0802d09c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d09e */ LDR R0, [R0] \n\
/* 0802d0a0 */ B branch_0802d0b2 \n\
\n\
.ltorg \n\
 \n\
branch_0802d0a8: \n\
/* 0802d0a8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802d0aa */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0802d0ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d0ae */ LDR R0, [R0] \n\
/* 0802d0b0 */ ADDS R0, 0xD @ Add 0xD to R0 \n\
 \n\
branch_0802d0b2: \n\
/* 0802d0b2 */ POP {R1} \n\
/* 0802d0b4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
