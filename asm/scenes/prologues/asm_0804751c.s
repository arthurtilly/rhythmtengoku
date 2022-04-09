asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804751c \n\
/* 0804751c */ PUSH {LR} \n\
/* 0804751e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047520 */ BL func_0800c604 \n\
/* 08047524 */ BL func_08006d80 \n\
/* 08047528 */ BL func_0800c3b8 \n\
/* 0804752c */ LSLS R0, R0, 0x10 \n\
/* 0804752e */ LSRS R0, R0, 0x10 \n\
/* 08047530 */ LDR R1, =D_089ed400 \n\
/* 08047532 */ BL func_080087b4 \n\
/* 08047536 */ LDR R1, =func_080474ec \n\
/* 08047538 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804753a */ BL func_08005d38 \n\
/* 0804753e */ POP {R0} \n\
/* 08047540 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
