asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080142e8 \n\
/* 080142e8 */ PUSH {R4-R7, LR} \n\
/* 080142ea */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 080142ec */ LDR R2, =D_030046a8 \n\
/* 080142ee */ LDR R4, [R2] \n\
/* 080142f0 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 080142f2 */ ADDS R6, 0x10 @ Add 0x10 to R6 \n\
/* 080142f4 */ LSLS R3, R0, 0x2 \n\
/* 080142f6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080142f8 */ LSLS R3, R3, 0x2 \n\
/* 080142fa */ LSLS R2, R1, 0x2 \n\
/* 080142fc */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080142fe */ LSLS R0, R2, 0x4 \n\
/* 08014300 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 08014302 */ LSLS R0, R0, 0x2 \n\
/* 08014304 */ LDR R1, =D_089ceafc \n\
/* 08014306 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014308 */ ADDS R2, R3, R0 @ Set R2 to R3 + R0 \n\
/* 0801430a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801430c */ LDRSH R0, [R2, R3] \n\
/* 0801430e */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08014310 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014312 */ BLT branch_080143b0 \n\
/* 08014314 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08014316 */ LDRSH R1, [R2, R0] \n\
/* 08014318 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801431a */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 0801431c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801431e */ LDRB R0, [R0] \n\
/* 08014320 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08014322 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014324 */ BEQ branch_08014334 \n\
/* 08014326 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08014328 */ BEQ branch_0801433a \n\
/* 0801432a */ B branch_08014340 \n\
\n\
.ltorg \n\
 \n\
branch_08014334: \n\
/* 08014334 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08014336 */ BNE branch_0801433a \n\
/* 08014338 */ LDR R4, [R2, 0x4] \n\
 \n\
branch_0801433a: \n\
/* 0801433a */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0801433c */ BNE branch_08014340 \n\
/* 0801433e */ LDR R4, [R2, 0x8] \n\
 \n\
branch_08014340: \n\
/* 08014340 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08014342 */ BEQ branch_080143b0 \n\
 \n\
branch_08014344: \n\
/* 08014344 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014346 */ LDRSB R1, [R4, R1] \n\
/* 08014348 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801434a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801434c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801434e */ BNE branch_08014354 \n\
/* 08014350 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08014352 */ B branch_080143b8 \n\
 \n\
branch_08014354: \n\
/* 08014354 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08014356 */ LDRSB R0, [R4, R0] \n\
/* 08014358 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801435a */ LDRSB R3, [R4, R3] \n\
/* 0801435c */ LSLS R2, R0, 0x2 \n\
/* 0801435e */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08014360 */ LSLS R2, R2, 0x2 \n\
/* 08014362 */ LSLS R1, R3, 0x2 \n\
/* 08014364 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08014366 */ LSLS R0, R1, 0x4 \n\
/* 08014368 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801436a */ LSLS R0, R0, 0x2 \n\
/* 0801436c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801436e */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08014370 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014372 */ LDRSH R0, [R2, R1] \n\
/* 08014374 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014376 */ BLT branch_080143b0 \n\
/* 08014378 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801437a */ LDRSH R1, [R2, R3] \n\
/* 0801437c */ ADDS R0, R6, 0x6 @ Set R0 to R6 + 0x6 \n\
/* 0801437e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014380 */ LDRB R0, [R0] \n\
/* 08014382 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014384 */ LDRSB R1, [R4, R1] \n\
/* 08014386 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08014388 */ BEQ branch_080143a4 \n\
/* 0801438a */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 0801438c */ BGT branch_08014394 \n\
/* 0801438e */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 08014390 */ BEQ branch_080143a8 \n\
/* 08014392 */ B branch_080143b0 \n\
 \n\
branch_08014394: \n\
/* 08014394 */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
/* 08014396 */ BEQ branch_080143a0 \n\
/* 08014398 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 0801439a */ BNE branch_080143b0 \n\
/* 0801439c */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0801439e */ BEQ branch_080143b0 \n\
 \n\
branch_080143a0: \n\
/* 080143a0 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080143a2 */ BEQ branch_080143b0 \n\
 \n\
branch_080143a4: \n\
/* 080143a4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080143a6 */ BEQ branch_080143b0 \n\
 \n\
branch_080143a8: \n\
/* 080143a8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080143aa */ BEQ branch_080143b0 \n\
/* 080143ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080143ae */ BNE branch_080143b4 \n\
 \n\
branch_080143b0: \n\
/* 080143b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080143b2 */ B branch_080143b8 \n\
 \n\
branch_080143b4: \n\
/* 080143b4 */ ADDS R4, 0x3 @ Add 0x3 to R4 \n\
/* 080143b6 */ B branch_08014344 \n\
 \n\
branch_080143b8: \n\
/* 080143b8 */ POP {R4-R7} \n\
/* 080143ba */ POP {R1} \n\
/* 080143bc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
