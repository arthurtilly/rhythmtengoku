asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080351f8 \n\
/* 080351f8 */ PUSH {LR} \n\
/* 080351fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080351fc */ BL func_0800c604 \n\
/* 08035200 */ BL func_0800c3b8 \n\
/* 08035204 */ LSLS R0, R0, 0x10 \n\
/* 08035206 */ LSRS R0, R0, 0x10 \n\
/* 08035208 */ LDR R1, =D_089e56ec \n\
/* 0803520a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803520c */ LSLS R2, R2, 0x6 \n\
/* 0803520e */ BL func_08002ee0 \n\
/* 08035212 */ LDR R1, =func_080351e8 \n\
/* 08035214 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035216 */ BL func_08005d38 \n\
/* 0803521a */ POP {R0} \n\
/* 0803521c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
