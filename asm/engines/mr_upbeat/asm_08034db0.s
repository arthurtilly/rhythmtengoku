asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034db0 \n\
/* 08034db0 */ LDR R0, =D_030046a8 \n\
/* 08034db2 */ LDR R1, [R0] \n\
/* 08034db4 */ MOVS R0, 0xA9 @ Set R0 to 0xA9 \n\
/* 08034db6 */ LSLS R0, R0, 0x2 \n\
/* 08034db8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08034dba */ LDR R0, =gCurrentEngineData \n\
/* 08034dbc */ LDR R0, [R0] \n\
/* 08034dbe */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08034dc0 */ LDRH R0, [R0] \n\
/* 08034dc2 */ STR R0, [R1] \n\
/* 08034dc4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
