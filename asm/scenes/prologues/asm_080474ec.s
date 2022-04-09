asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080474ec \n\
/* 080474ec */ PUSH {LR} \n\
/* 080474ee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080474f0 */ BL func_0800c604 \n\
/* 080474f4 */ BL func_0800c3b8 \n\
/* 080474f8 */ LSLS R0, R0, 0x10 \n\
/* 080474fa */ LSRS R0, R0, 0x10 \n\
/* 080474fc */ LDR R1, =D_089ed404 \n\
/* 080474fe */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047500 */ LSLS R2, R2, 0x6 \n\
/* 08047502 */ BL func_08002ee0 \n\
/* 08047506 */ LDR R1, =func_080474dc \n\
/* 08047508 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804750a */ BL func_08005d38 \n\
/* 0804750e */ POP {R0} \n\
/* 08047510 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
