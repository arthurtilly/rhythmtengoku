asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047414 \n\
/* 08047414 */ PUSH {LR} \n\
/* 08047416 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047418 */ BL func_0800c604 \n\
/* 0804741c */ BL func_08006d80 \n\
/* 08047420 */ BL func_0800c3b8 \n\
/* 08047424 */ LSLS R0, R0, 0x10 \n\
/* 08047426 */ LSRS R0, R0, 0x10 \n\
/* 08047428 */ LDR R1, =D_089ed2c4 \n\
/* 0804742a */ BL func_080087b4 \n\
/* 0804742e */ LDR R1, =func_080473e4 \n\
/* 08047430 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047432 */ BL func_08005d38 \n\
/* 08047436 */ POP {R0} \n\
/* 08047438 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
