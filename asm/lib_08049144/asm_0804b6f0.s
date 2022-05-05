asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b6f0 \n\
/* 0804b6f0 */ PUSH {LR} \n\
/* 0804b6f2 */ LSLS R0, R0, 0x10 \n\
/* 0804b6f4 */ LSRS R0, R0, 0x10 \n\
/* 0804b6f6 */ LSLS R1, R1, 0x10 \n\
/* 0804b6f8 */ LSRS R1, R1, 0x10 \n\
/* 0804b6fa */ LSLS R2, R2, 0x10 \n\
/* 0804b6fc */ LSRS R2, R2, 0x10 \n\
/* 0804b6fe */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804b700 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0804b702 */ MOVS R1, 0xE1 @ Set R1 to 0xE1 \n\
/* 0804b704 */ LSLS R1, R1, 0x4 \n\
/* 0804b706 */ BL __udivsi3 \n\
/* 0804b70a */ POP {R1} \n\
/* 0804b70c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
