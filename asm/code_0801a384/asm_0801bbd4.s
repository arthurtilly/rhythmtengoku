asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801bbd4 \n\
/* 0801bbd4 */ LDR R0, =D_030046a4 \n\
/* 0801bbd6 */ LDR R0, [R0] \n\
/* 0801bbd8 */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801bbda */ LSLS R1, R1, 0x2 \n\
/* 0801bbdc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bbde */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801bbe0 */ STRB R1, [R0] \n\
/* 0801bbe2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
