asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ee00 \n\
/* 0802ee00 */ LDR R0, =D_030055d0 \n\
/* 0802ee02 */ LDR R0, [R0] \n\
/* 0802ee04 */ ADDS R0, 0x92 @ Add 0x92 to R0 \n\
/* 0802ee06 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0802ee08 */ STRH R1, [R0] \n\
/* 0802ee0a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
