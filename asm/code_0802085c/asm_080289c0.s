asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080289c0 \n\
/* 080289c0 */ PUSH {LR} \n\
/* 080289c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080289c4 */ BL func_0800c604 \n\
/* 080289c8 */ BL func_0800c3b8 \n\
/* 080289cc */ LSLS R0, R0, 0x10 \n\
/* 080289ce */ LSRS R0, R0, 0x10 \n\
/* 080289d0 */ LDR R1, =D_089e2a04 \n\
/* 080289d2 */ BL func_080087b4 \n\
/* 080289d6 */ LDR R1, =(func_08028978 + 1) \n\
/* 080289d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080289da */ BL func_08005d38 \n\
/* 080289de */ POP {R0} \n\
/* 080289e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
