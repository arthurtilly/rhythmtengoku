asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b0d8 \n\
/* 0802b0d8 */ PUSH {LR} \n\
/* 0802b0da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802b0dc */ BL func_0800c604 \n\
/* 0802b0e0 */ BL func_0800c3b8 \n\
/* 0802b0e4 */ LSLS R0, R0, 0x10 \n\
/* 0802b0e6 */ LSRS R0, R0, 0x10 \n\
/* 0802b0e8 */ LDR R1, =D_089e3380 \n\
/* 0802b0ea */ BL func_080087b4 \n\
/* 0802b0ee */ LDR R1, =(func_0802b0a8 + 1) \n\
/* 0802b0f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b0f2 */ BL func_08005d38 \n\
/* 0802b0f6 */ POP {R0} \n\
/* 0802b0f8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
