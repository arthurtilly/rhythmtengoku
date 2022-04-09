asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802bc4c \n\
/* 0802bc4c */ PUSH {LR} \n\
/* 0802bc4e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bc50 */ BL func_0800c604 \n\
/* 0802bc54 */ BL func_0800c3b8 \n\
/* 0802bc58 */ LSLS R0, R0, 0x10 \n\
/* 0802bc5a */ LSRS R0, R0, 0x10 \n\
/* 0802bc5c */ LDR R1, =D_089e384c \n\
/* 0802bc5e */ BL func_080087b4 \n\
/* 0802bc62 */ LDR R1, =func_0802bc0c \n\
/* 0802bc64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bc66 */ BL func_08005d38 \n\
/* 0802bc6a */ POP {R0} \n\
/* 0802bc6c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
