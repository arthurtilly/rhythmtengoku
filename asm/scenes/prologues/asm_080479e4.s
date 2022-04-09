asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080479e4 \n\
/* 080479e4 */ PUSH {LR} \n\
/* 080479e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080479e8 */ BL func_0800c604 \n\
/* 080479ec */ BL func_0800c3b8 \n\
/* 080479f0 */ LSLS R0, R0, 0x10 \n\
/* 080479f2 */ LSRS R0, R0, 0x10 \n\
/* 080479f4 */ LDR R1, =D_089ed9f0 \n\
/* 080479f6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080479f8 */ LSLS R2, R2, 0x6 \n\
/* 080479fa */ BL func_08002ee0 \n\
/* 080479fe */ LDR R1, =func_080479d4 \n\
/* 08047a00 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047a02 */ BL func_08005d38 \n\
/* 08047a06 */ POP {R0} \n\
/* 08047a08 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
