asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b560 \n\
/* 0804b560 */ PUSH {R4, LR} \n\
/* 0804b562 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804b564 */ LDR R0, [R4, 0x4] \n\
/* 0804b566 */ BL func_08049e3c \n\
/* 0804b56a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804b56c */ STR R0, [R4, 0xC] \n\
/* 0804b56e */ POP {R4} \n\
/* 0804b570 */ POP {R0} \n\
/* 0804b572 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
