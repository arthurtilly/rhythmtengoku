asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009150 \n\
/* 08009150 */ LDR R1, =D_030010fc \n\
/* 08009152 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009154 */ STR R0, [R1] \n\
/* 08009156 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
