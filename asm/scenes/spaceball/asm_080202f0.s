asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080202f0 \n\
/* 080202f0 */ PUSH {LR} \n\
/* 080202f2 */ LDR R0, =D_030055d0 \n\
/* 080202f4 */ LDR R0, [R0] \n\
/* 080202f6 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 080202f8 */ BL func_080201cc \n\
/* 080202fc */ BL func_0801fe6c \n\
/* 08020300 */ POP {R0} \n\
/* 08020302 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
