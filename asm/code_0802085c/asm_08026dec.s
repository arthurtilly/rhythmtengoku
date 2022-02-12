asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026dec \n\
/* 08026dec */ PUSH {R4, LR} \n\
/* 08026dee */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08026df0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08026df2 */ BEQ branch_08026e02 \n\
/* 08026df4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08026df6 */ BL func_08017448 \n\
/* 08026dfa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08026dfc */ BL func_08017458 \n\
/* 08026e00 */ B branch_08026e08 \n\
 \n\
branch_08026e02: \n\
/* 08026e02 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026e04 */ BL func_08017448 \n\
 \n\
branch_08026e08: \n\
/* 08026e08 */ POP {R4} \n\
/* 08026e0a */ POP {R0} \n\
/* 08026e0c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
