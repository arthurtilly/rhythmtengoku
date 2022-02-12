asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ffa0 \n\
/* 0801ffa0 */ PUSH {LR} \n\
/* 0801ffa2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ffa4 */ BL func_0800c604 \n\
/* 0801ffa8 */ BL func_0800c3b8 \n\
/* 0801ffac */ LSLS R0, R0, 0x10 \n\
/* 0801ffae */ LSRS R0, R0, 0x10 \n\
/* 0801ffb0 */ LDR R1, =0x089de93c @ !PossiblePointer \n\
/* 0801ffb2 */ BL func_080087b4 \n\
/* 0801ffb6 */ LDR R1, =(func_0801ff70 + 1) \n\
/* 0801ffb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ffba */ BL func_08005d38 \n\
/* 0801ffbe */ POP {R0} \n\
/* 0801ffc0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
