asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803031c \n\
/* 0803031c */ PUSH {R4, LR} \n\
/* 0803031e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08030320 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08030322 */ BEQ branch_08030354 \n\
/* 08030324 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030326 */ BL func_08017448 \n\
/* 0803032a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803032c */ BL func_08017458 \n\
/* 08030330 */ LDR R0, =D_03005380 \n\
/* 08030332 */ LDR R0, [R0] \n\
/* 08030334 */ LDR R1, =D_030055d0 \n\
/* 08030336 */ LDR R1, [R1] \n\
/* 08030338 */ LDR R2, =0x90c \n\
/* 0803033a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803033c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803033e */ LDRSH R1, [R1, R2] \n\
/* 08030340 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030342 */ BL func_0804d770 \n\
/* 08030346 */ B branch_08030370 \n\
\n\
.ltorg \n\
 \n\
branch_08030354: \n\
/* 08030354 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030356 */ BL func_08017448 \n\
/* 0803035a */ LDR R0, =D_03005380 \n\
/* 0803035c */ LDR R0, [R0] \n\
/* 0803035e */ LDR R1, =D_030055d0 \n\
/* 08030360 */ LDR R1, [R1] \n\
/* 08030362 */ LDR R2, =0x90c \n\
/* 08030364 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08030366 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030368 */ LDRSH R1, [R1, R2] \n\
/* 0803036a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803036c */ BL func_0804d770 \n\
 \n\
branch_08030370: \n\
/* 08030370 */ POP {R4} \n\
/* 08030372 */ POP {R0} \n\
/* 08030374 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
