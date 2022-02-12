asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f7cc \n\
/* 0801f7cc */ PUSH {LR} \n\
/* 0801f7ce */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801f7d0 */ LSLS R0, R0, 0x1 \n\
/* 0801f7d2 */ BL func_0800be88 \n\
/* 0801f7d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f7d8 */ BL func_0800c0c4 \n\
/* 0801f7dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f7de */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f7e0 */ BL func_0800c0f8 \n\
/* 0801f7e4 */ POP {R0} \n\
/* 0801f7e6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
