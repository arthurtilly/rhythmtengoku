asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c334 \n\
/* 0802c334 */ PUSH {R4, LR} \n\
/* 0802c336 */ LDR R4, =D_030055d0 \n\
/* 0802c338 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c33a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_0802c33c: \n\
/* 0802c33c */ LDR R1, [R4] \n\
/* 0802c33e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c340 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0802c342 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802c344 */ LDR R0, [R0] \n\
/* 0802c346 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c348 */ BEQ branch_0802c358 \n\
/* 0802c34a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c34c */ BNE branch_0802c358 \n\
/* 0802c34e */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0802c350 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802c352 */ LDR R0, [R1] \n\
/* 0802c354 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802c356 */ STR R0, [R1] \n\
 \n\
branch_0802c358: \n\
/* 0802c358 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 0802c35a */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0802c35c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802c35e */ BGE branch_0802c33c \n\
/* 0802c360 */ POP {R4} \n\
/* 0802c362 */ POP {R0} \n\
/* 0802c364 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
