asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002f48 \n\
/* 08002f48 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002f4a */ STR R1, [R0] \n\
/* 08002f4c */ STR R1, [R0, 0x4] \n\
/* 08002f4e */ STR R1, [R0, 0x8] \n\
/* 08002f50 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
