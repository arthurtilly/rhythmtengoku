asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08022e2c \n\
/* 08022e2c */ PUSH {LR} \n\
/* 08022e2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022e30 */ BL func_0800c604 \n\
/* 08022e34 */ BL func_0800c3b8 \n\
/* 08022e38 */ LSLS R0, R0, 0x10 \n\
/* 08022e3a */ LSRS R0, R0, 0x10 \n\
/* 08022e3c */ LDR R1, =D_089df3ac \n\
/* 08022e3e */ BL func_080087b4 \n\
/* 08022e42 */ LDR R1, =(func_08022dfc + 1) \n\
/* 08022e44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022e46 */ BL func_08005d38 \n\
/* 08022e4a */ POP {R0} \n\
/* 08022e4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
