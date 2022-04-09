asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045418 \n\
/* 08045418 */ PUSH {LR} \n\
/* 0804541a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804541c */ BL func_0800c604 \n\
/* 08045420 */ BL func_0800c3b8 \n\
/* 08045424 */ LSLS R0, R0, 0x10 \n\
/* 08045426 */ LSRS R0, R0, 0x10 \n\
/* 08045428 */ LDR R1, =D_089ea518 \n\
/* 0804542a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804542c */ LSLS R2, R2, 0x6 \n\
/* 0804542e */ BL func_08002ee0 \n\
/* 08045432 */ LDR R1, =func_08045408 \n\
/* 08045434 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045436 */ BL func_08005d38 \n\
/* 0804543a */ POP {R0} \n\
/* 0804543c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
