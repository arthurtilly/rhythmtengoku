asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e92c \n\
/* 0804e92c */ LDR R0, =D_0300443c \n\
/* 0804e92e */ LDR R0, [R0] \n\
/* 0804e930 */ LDR R0, [R0, 0x8] \n\
/* 0804e932 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
