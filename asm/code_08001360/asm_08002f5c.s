asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002f5c \n\
/* 08002f5c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002f5e */ STR R1, [R0] \n\
/* 08002f60 */ STR R1, [R0, 0x4] \n\
/* 08002f62 */ STR R1, [R0, 0x8] \n\
/* 08002f64 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
