asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803538c \n\
/* 0803538c */ PUSH {R4, LR} \n\
/* 0803538e */ LDR R0, =D_030055d0 \n\
/* 08035390 */ LDR R4, [R0] \n\
/* 08035392 */ BL func_08034ff4 \n\
/* 08035396 */ BL func_08035358 \n\
/* 0803539a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803539c */ BEQ branch_080353b2 \n\
/* 0803539e */ BL func_08018068 \n\
/* 080353a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080353a4 */ BL func_080179d8 \n\
/* 080353a8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080353aa */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080353ac */ LDRB R0, [R0] \n\
/* 080353ae */ BL func_08035094 \n\
 \n\
branch_080353b2: \n\
/* 080353b2 */ POP {R4} \n\
/* 080353b4 */ POP {R0} \n\
/* 080353b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
