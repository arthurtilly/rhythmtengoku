asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002f54 \n\
/* 08002f54 */ STR R1, [R0] \n\
/* 08002f56 */ STR R2, [R0, 0x4] \n\
/* 08002f58 */ STR R3, [R0, 0x8] \n\
/* 08002f5a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
