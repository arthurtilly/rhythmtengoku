asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002db8 \n\
/* 08002db8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002dba */ STR R1, [R0, 0x4] \n\
/* 08002dbc */ STR R1, [R0] \n\
/* 08002dbe */ STR R1, [R0, 0x8] \n\
/* 08002dc0 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
