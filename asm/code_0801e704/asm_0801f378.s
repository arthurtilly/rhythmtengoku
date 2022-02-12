asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f378 \n\
/* 0801f378 */ PUSH {LR} \n\
/* 0801f37a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f37c */ BL func_0800c604 \n\
/* 0801f380 */ BL func_0800c3b8 \n\
/* 0801f384 */ LSLS R0, R0, 0x10 \n\
/* 0801f386 */ LSRS R0, R0, 0x10 \n\
/* 0801f388 */ LDR R1, =D_089de6e0 \n\
/* 0801f38a */ BL func_080087b4 \n\
/* 0801f38e */ LDR R1, =(func_0801f338 + 1) \n\
/* 0801f390 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f392 */ BL func_08005d38 \n\
/* 0801f396 */ POP {R0} \n\
/* 0801f398 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
