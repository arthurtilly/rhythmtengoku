asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ee10 \n\
/* 0802ee10 */ LDR R0, =D_030055d0 \n\
/* 0802ee12 */ LDR R0, [R0] \n\
/* 0802ee14 */ ADDS R0, 0x92 @ Add 0x92 to R0 \n\
/* 0802ee16 */ LDR R1, =0xfff8 \n\
/* 0802ee18 */ STRH R1, [R0] \n\
/* 0802ee1a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
