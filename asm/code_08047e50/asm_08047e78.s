asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047e78 \n\
/* 08047e78 */ PUSH {R4, LR} \n\
/* 08047e7a */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 08047e7c */ LSLS R2, R2, 0x1 \n\
/* 08047e7e */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08047e80 */ LSLS R1, R1, 0x1 \n\
/* 08047e82 */ BL func_08002698 \n\
/* 08047e86 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08047e88 */ MOVS R0, 0x85 @ Set R0 to 0x85 \n\
/* 08047e8a */ LSLS R0, R0, 0x8 \n\
/* 08047e8c */ MOVS R1, 0x79 @ Set R1 to 0x79 \n\
/* 08047e8e */ BL func_0804c86c \n\
/* 08047e92 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08047e94 */ LSLS R1, R1, 0x10 \n\
/* 08047e96 */ LSRS R1, R1, 0x10 \n\
/* 08047e98 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08047e9a */ BL func_08002894 \n\
/* 08047e9e */ POP {R4} \n\
/* 08047ea0 */ POP {R0} \n\
/* 08047ea2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
