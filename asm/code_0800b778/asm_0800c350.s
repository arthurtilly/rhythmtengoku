asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c350 \n\
/* 0800c350 */ PUSH {R4, LR} \n\
/* 0800c352 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c354 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c356 */ BEQ branch_0800c386 \n\
/* 0800c358 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c35a */ LDR R0, [R4] \n\
/* 0800c35c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c35e */ BEQ branch_0800c36c \n\
/* 0800c360 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_0800c362: \n\
/* 0800c362 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0800c364 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c366 */ LDR R0, [R1] \n\
/* 0800c368 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c36a */ BNE branch_0800c362 \n\
 \n\
branch_0800c36c: \n\
/* 0800c36c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c36e */ BEQ branch_0800c386 \n\
/* 0800c370 */ LSLS R0, R2, 0x10 \n\
/* 0800c372 */ LSRS R0, R0, 0x10 \n\
/* 0800c374 */ BL agb_random \n\
/* 0800c378 */ LSLS R0, R0, 0x10 \n\
/* 0800c37a */ LSRS R0, R0, 0xE \n\
/* 0800c37c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800c37e */ LDR R0, [R0] \n\
/* 0800c380 */ BL func_0800c2b0 \n\
/* 0800c384 */ B branch_0800c388 \n\
 \n\
branch_0800c386: \n\
/* 0800c386 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800c388: \n\
/* 0800c388 */ POP {R4} \n\
/* 0800c38a */ POP {R1} \n\
/* 0800c38c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
