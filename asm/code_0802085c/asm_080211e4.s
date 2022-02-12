asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080211e4 \n\
/* 080211e4 */ PUSH {LR} \n\
/* 080211e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080211e8 */ BL func_0800c604 \n\
/* 080211ec */ BL func_0800c3b8 \n\
/* 080211f0 */ LSLS R0, R0, 0x10 \n\
/* 080211f2 */ LSRS R0, R0, 0x10 \n\
/* 080211f4 */ LDR R1, =D_089df064 \n\
/* 080211f6 */ BL func_080087b4 \n\
/* 080211fa */ LDR R1, =(func_080211a4 + 1) \n\
/* 080211fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080211fe */ BL func_08005d38 \n\
/* 08021202 */ POP {R0} \n\
/* 08021204 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
