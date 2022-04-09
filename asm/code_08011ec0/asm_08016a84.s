asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016a84 \n\
/* 08016a84 */ PUSH {LR} \n\
/* 08016a86 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016a88 */ BL func_0800c604 \n\
/* 08016a8c */ BL func_0800c3b8 \n\
/* 08016a90 */ LSLS R0, R0, 0x10 \n\
/* 08016a92 */ LSRS R0, R0, 0x10 \n\
/* 08016a94 */ LDR R1, =D_089cfc38 \n\
/* 08016a96 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08016a98 */ LSLS R2, R2, 0x6 \n\
/* 08016a9a */ BL func_08002ee0 \n\
/* 08016a9e */ LDR R1, =func_08016a58 \n\
/* 08016aa0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016aa2 */ BL func_08005d38 \n\
/* 08016aa6 */ POP {R0} \n\
/* 08016aa8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
