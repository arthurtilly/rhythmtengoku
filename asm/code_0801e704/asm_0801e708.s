asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801e708 \n\
/* 0801e708 */ PUSH {LR} \n\
/* 0801e70a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e70c */ BL func_0800c604 \n\
/* 0801e710 */ BL func_0800c3b8 \n\
/* 0801e714 */ LSLS R0, R0, 0x10 \n\
/* 0801e716 */ LSRS R0, R0, 0x10 \n\
/* 0801e718 */ LDR R1, =D_089ddfbc \n\
/* 0801e71a */ BL func_080087b4 \n\
/* 0801e71e */ LDR R1, =(func_0800bd04 + 1) \n\
/* 0801e720 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e722 */ BL func_08005d38 \n\
/* 0801e726 */ POP {R0} \n\
/* 0801e728 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
