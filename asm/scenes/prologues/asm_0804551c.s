asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804551c \n\
/* 0804551c */ PUSH {LR} \n\
/* 0804551e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045520 */ BL func_0800c604 \n\
/* 08045524 */ BL func_0800c3b8 \n\
/* 08045528 */ LSLS R0, R0, 0x10 \n\
/* 0804552a */ LSRS R0, R0, 0x10 \n\
/* 0804552c */ LDR R1, =D_089ea654 \n\
/* 0804552e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045530 */ LSLS R2, R2, 0x6 \n\
/* 08045532 */ BL func_08002ee0 \n\
/* 08045536 */ LDR R1, =func_0804550c \n\
/* 08045538 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804553a */ BL func_08005d38 \n\
/* 0804553e */ POP {R0} \n\
/* 08045540 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
