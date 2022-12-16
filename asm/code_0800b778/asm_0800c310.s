asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c310 \n\
/* 0800c310 */ PUSH {R4, LR} \n\
/* 0800c312 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c314 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c316 */ BEQ branch_0800c346 \n\
/* 0800c318 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c31a */ LDR R0, [R4] \n\
/* 0800c31c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c31e */ BEQ branch_0800c32c \n\
/* 0800c320 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_0800c322: \n\
/* 0800c322 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0800c324 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c326 */ LDR R0, [R1] \n\
/* 0800c328 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c32a */ BNE branch_0800c322 \n\
 \n\
branch_0800c32c: \n\
/* 0800c32c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c32e */ BEQ branch_0800c346 \n\
/* 0800c330 */ LSLS R0, R2, 0x10 \n\
/* 0800c332 */ LSRS R0, R0, 0x10 \n\
/* 0800c334 */ BL agb_random \n\
/* 0800c338 */ LSLS R0, R0, 0x10 \n\
/* 0800c33a */ LSRS R0, R0, 0xE \n\
/* 0800c33c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800c33e */ LDR R0, [R0] \n\
/* 0800c340 */ BL func_0800c280 \n\
/* 0800c344 */ B branch_0800c348 \n\
 \n\
branch_0800c346: \n\
/* 0800c346 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800c348: \n\
/* 0800c348 */ POP {R4} \n\
/* 0800c34a */ POP {R1} \n\
/* 0800c34c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
