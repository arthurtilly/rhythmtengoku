asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_input_event \n\
/* 08023530 */ PUSH {R4, LR} \n\
/* 08023532 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08023534 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08023536 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08023538 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802353a */ BEQ branch_08023542 \n\
/* 0802353c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802353e */ BL func_08022ce8 \n\
 \n\
branch_08023542: \n\
/* 08023542 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08023544 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08023546 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023548 */ BEQ branch_08023550 \n\
/* 0802354a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802354c */ BL func_08022ce8 \n\
 \n\
branch_08023550: \n\
/* 08023550 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08023552 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08023554 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023556 */ BEQ branch_0802355e \n\
/* 08023558 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802355a */ BL func_08022ce8 \n\
 \n\
branch_0802355e: \n\
/* 0802355e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08023560 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08023562 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023564 */ BEQ branch_0802356c \n\
/* 08023566 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08023568 */ BL func_08022ce8 \n\
 \n\
branch_0802356c: \n\
/* 0802356c */ POP {R4} \n\
/* 0802356e */ POP {R0} \n\
/* 08023570 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
