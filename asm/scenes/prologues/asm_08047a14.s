asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047a14 \n\
/* 08047a14 */ PUSH {LR} \n\
/* 08047a16 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047a18 */ BL func_0800c604 \n\
/* 08047a1c */ BL func_08006d80 \n\
/* 08047a20 */ BL func_0800c3b8 \n\
/* 08047a24 */ LSLS R0, R0, 0x10 \n\
/* 08047a26 */ LSRS R0, R0, 0x10 \n\
/* 08047a28 */ LDR R1, =D_089ed9ec \n\
/* 08047a2a */ BL func_080087b4 \n\
/* 08047a2e */ LDR R1, =func_080479e4 \n\
/* 08047a30 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047a32 */ BL func_08005d38 \n\
/* 08047a36 */ POP {R0} \n\
/* 08047a38 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
