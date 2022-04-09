asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080473e4 \n\
/* 080473e4 */ PUSH {LR} \n\
/* 080473e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080473e8 */ BL func_0800c604 \n\
/* 080473ec */ BL func_0800c3b8 \n\
/* 080473f0 */ LSLS R0, R0, 0x10 \n\
/* 080473f2 */ LSRS R0, R0, 0x10 \n\
/* 080473f4 */ LDR R1, =D_089ed2c8 \n\
/* 080473f6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080473f8 */ LSLS R2, R2, 0x6 \n\
/* 080473fa */ BL func_08002ee0 \n\
/* 080473fe */ LDR R1, =func_080473d4 \n\
/* 08047400 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047402 */ BL func_08005d38 \n\
/* 08047406 */ POP {R0} \n\
/* 08047408 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
