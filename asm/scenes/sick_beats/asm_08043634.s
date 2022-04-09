asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043634 \n\
/* 08043634 */ LDR R1, =D_030055d0 \n\
/* 08043636 */ LDR R1, [R1] \n\
/* 08043638 */ MOVS R2, 0xFE @ Set R2 to 0xFE \n\
/* 0804363a */ LSLS R2, R2, 0x1 \n\
/* 0804363c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804363e */ STR R0, [R1] \n\
/* 08043640 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
