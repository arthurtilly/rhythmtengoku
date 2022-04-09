asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002f40 \n\
/* 08002f40 */ STR R1, [R0] \n\
/* 08002f42 */ STR R2, [R0, 0x4] \n\
/* 08002f44 */ STR R3, [R0, 0x8] \n\
/* 08002f46 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
