asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019420 \n\
/* 08019420 */ PUSH {R4, LR} \n\
/* 08019422 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08019424 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08019426 */ LDR R2, =D_089d7980 \n\
/* 08019428 */ LSLS R1, R0, 0x1 \n\
/* 0801942a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801942c */ LSLS R1, R1, 0x3 \n\
/* 0801942e */ ADDS R1, 0x7C @ Add 0x7C to R1 \n\
/* 08019430 */ LDR R0, [R2] \n\
/* 08019432 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08019434 */ LDRB R0, [R0] \n\
/* 08019436 */ LSLS R0, R0, 0x1E \n\
/* 08019438 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801943a */ BGE branch_08019478 \n\
/* 0801943c */ LDRH R0, [R1] \n\
/* 0801943e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08019440 */ STRH R0, [R1] \n\
/* 08019442 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08019444 */ BEQ branch_0801945c \n\
/* 08019446 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08019448 */ BCC branch_08019454 \n\
/* 0801944a */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 0801944c */ BEQ branch_08019464 \n\
/* 0801944e */ B branch_08019466 \n\
\n\
.ltorg \n\
 \n\
branch_08019454: \n\
/* 08019454 */ LDRH R0, [R1, 0x2] \n\
/* 08019456 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08019458 */ STRH R0, [R1, 0x2] \n\
/* 0801945a */ B branch_08019466 \n\
 \n\
branch_0801945c: \n\
/* 0801945c */ LDRH R0, [R1, 0x4] \n\
/* 0801945e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08019460 */ STRH R0, [R1, 0x4] \n\
/* 08019462 */ B branch_08019466 \n\
 \n\
branch_08019464: \n\
/* 08019464 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08019466: \n\
/* 08019466 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08019468 */ BGE branch_08019472 \n\
/* 0801946a */ LDRH R0, [R1, 0x6] \n\
/* 0801946c */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0801946e */ STRH R0, [R1, 0x6] \n\
/* 08019470 */ B branch_08019478 \n\
 \n\
branch_08019472: \n\
/* 08019472 */ LDRH R0, [R1, 0x8] \n\
/* 08019474 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08019476 */ STRH R0, [R1, 0x8] \n\
 \n\
branch_08019478: \n\
/* 08019478 */ POP {R4} \n\
/* 0801947a */ POP {R0} \n\
/* 0801947c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
