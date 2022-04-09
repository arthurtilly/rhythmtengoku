asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ee6c \n\
/* 0802ee6c */ LDR R0, =D_030055d0 \n\
/* 0802ee6e */ LDR R1, [R0] \n\
/* 0802ee70 */ LDR R0, [R1, 0x18] \n\
/* 0802ee72 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802ee74 */ STR R0, [R1, 0x18] \n\
/* 0802ee76 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
