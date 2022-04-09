asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045248 \n\
/* 08045248 */ PUSH {LR} \n\
/* 0804524a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804524c */ BL func_0800c604 \n\
/* 08045250 */ BL func_08006d80 \n\
/* 08045254 */ BL func_0800c3b8 \n\
/* 08045258 */ LSLS R0, R0, 0x10 \n\
/* 0804525a */ LSRS R0, R0, 0x10 \n\
/* 0804525c */ LDR R1, =D_089ea26c \n\
/* 0804525e */ BL func_080087b4 \n\
/* 08045262 */ LDR R1, =func_08045218 \n\
/* 08045264 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045266 */ BL func_08005d38 \n\
/* 0804526a */ POP {R0} \n\
/* 0804526c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
