asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803051c \n\
/* 0803051c */ PUSH {LR} \n\
/* 0803051e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030520 */ BL func_0800c604 \n\
/* 08030524 */ BL func_0800c3b8 \n\
/* 08030528 */ LSLS R0, R0, 0x10 \n\
/* 0803052a */ LSRS R0, R0, 0x10 \n\
/* 0803052c */ LDR R2, =D_089e4614 \n\
/* 0803052e */ LDR R1, =D_030055d0 \n\
/* 08030530 */ LDR R1, [R1] \n\
/* 08030532 */ LDRB R1, [R1] \n\
/* 08030534 */ LSLS R1, R1, 0x2 \n\
/* 08030536 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08030538 */ LDR R1, [R1] \n\
/* 0803053a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803053c */ LSLS R2, R2, 0x6 \n\
/* 0803053e */ BL func_08002ee0 \n\
/* 08030542 */ LDR R1, =func_0803050c \n\
/* 08030544 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030546 */ BL func_08005d38 \n\
/* 0803054a */ POP {R0} \n\
/* 0803054c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
