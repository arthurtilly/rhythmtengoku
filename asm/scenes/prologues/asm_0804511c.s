asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804511c \n\
/* 0804511c */ PUSH {LR} \n\
/* 0804511e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045120 */ BL func_0800c604 \n\
/* 08045124 */ BL func_0800c3b8 \n\
/* 08045128 */ LSLS R0, R0, 0x10 \n\
/* 0804512a */ LSRS R0, R0, 0x10 \n\
/* 0804512c */ LDR R1, =D_089ea08c \n\
/* 0804512e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045130 */ LSLS R2, R2, 0x6 \n\
/* 08045132 */ BL func_08002ee0 \n\
/* 08045136 */ LDR R1, =func_0804510c \n\
/* 08045138 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804513a */ BL func_08005d38 \n\
/* 0804513e */ POP {R0} \n\
/* 08045140 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
