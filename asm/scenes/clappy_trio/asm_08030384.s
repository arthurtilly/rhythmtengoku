asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030384 \n\
/* 08030384 */ LDR R1, =D_089e4560 \n\
/* 08030386 */ LSLS R0, R0, 0x2 \n\
/* 08030388 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803038a */ LDR R1, =D_030055d0 \n\
/* 0803038c */ LDR R1, [R1] \n\
/* 0803038e */ LDRB R1, [R1] \n\
/* 08030390 */ LDR R0, [R0] \n\
/* 08030392 */ LSLS R1, R1, 0x2 \n\
/* 08030394 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08030396 */ LDR R0, [R1] \n\
/* 08030398 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
