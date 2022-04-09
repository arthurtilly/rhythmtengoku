asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034180 \n\
/* 08034180 */ PUSH {LR} \n\
/* 08034182 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034184 */ BL func_0800c604 \n\
/* 08034188 */ BL func_0800c3b8 \n\
/* 0803418c */ LSLS R0, R0, 0x10 \n\
/* 0803418e */ LSRS R0, R0, 0x10 \n\
/* 08034190 */ LDR R1, =D_089e5204 \n\
/* 08034192 */ BL func_080087b4 \n\
/* 08034196 */ LDR R1, =func_08034140 \n\
/* 08034198 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803419a */ BL func_08005d38 \n\
/* 0803419e */ POP {R0} \n\
/* 080341a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
