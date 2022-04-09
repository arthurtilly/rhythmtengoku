asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804554c \n\
/* 0804554c */ PUSH {LR} \n\
/* 0804554e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045550 */ BL func_0800c604 \n\
/* 08045554 */ BL func_08006d80 \n\
/* 08045558 */ BL func_0800c3b8 \n\
/* 0804555c */ LSLS R0, R0, 0x10 \n\
/* 0804555e */ LSRS R0, R0, 0x10 \n\
/* 08045560 */ LDR R1, =D_089ea650 \n\
/* 08045562 */ BL func_080087b4 \n\
/* 08045566 */ LDR R1, =func_0804551c \n\
/* 08045568 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804556a */ BL func_08005d38 \n\
/* 0804556e */ POP {R0} \n\
/* 08045570 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
