asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a1e4 \n\
/* 0803a1e4 */ LDR R0, =gCurrentEngineData \n\
/* 0803a1e6 */ LDR R1, [R0] \n\
/* 0803a1e8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803a1ea */ LSLS R0, R0, 0x9 \n\
/* 0803a1ec */ STR R0, [R1, 0x24] \n\
/* 0803a1ee */ STR R0, [R1, 0x20] \n\
/* 0803a1f0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
