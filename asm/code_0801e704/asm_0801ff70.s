asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ff70 \n\
/* 0801ff70 */ PUSH {LR} \n\
/* 0801ff72 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ff74 */ BL func_0800c604 \n\
/* 0801ff78 */ BL func_0800c3b8 \n\
/* 0801ff7c */ LSLS R0, R0, 0x10 \n\
/* 0801ff7e */ LSRS R0, R0, 0x10 \n\
/* 0801ff80 */ LDR R1, =D_089de940 \n\
/* 0801ff82 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801ff84 */ LSLS R2, R2, 0x6 \n\
/* 0801ff86 */ BL func_08002ee0 \n\
/* 0801ff8a */ LDR R1, =(func_0801ff60 + 1) \n\
/* 0801ff8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ff8e */ BL func_08005d38 \n\
/* 0801ff92 */ POP {R0} \n\
/* 0801ff94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
