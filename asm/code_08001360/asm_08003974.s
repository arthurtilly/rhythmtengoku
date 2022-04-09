asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003974 \n\
/* 08003974 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08003976 */ STR R1, [R0] \n\
/* 08003978 */ STRB R1, [R0, 0x5] \n\
/* 0800397a */ STRB R1, [R0, 0x4] \n\
/* 0800397c */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
