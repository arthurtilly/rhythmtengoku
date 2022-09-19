asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dfdc \n\
/* 0801dfdc */ LDR R1, =D_03004498 \n\
/* 0801dfde */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801dfe0 */ STRB R0, [R1] \n\
/* 0801dfe2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
