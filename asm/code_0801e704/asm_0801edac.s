asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801edac \n\
/* 0801edac */ PUSH {LR} \n\
/* 0801edae */ BL func_0800c3b8 \n\
/* 0801edb2 */ LSLS R0, R0, 0x10 \n\
/* 0801edb4 */ LSRS R0, R0, 0x10 \n\
/* 0801edb6 */ LDR R1, =(func_0801ed7c + 1) \n\
/* 0801edb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801edba */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801edbc */ BL func_0800856c \n\
/* 0801edc0 */ POP {R0} \n\
/* 0801edc2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
