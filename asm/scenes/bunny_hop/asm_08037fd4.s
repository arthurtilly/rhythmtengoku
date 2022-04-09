asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037fd4 \n\
/* 08037fd4 */ PUSH {LR} \n\
/* 08037fd6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037fd8 */ BL func_0800c604 \n\
/* 08037fdc */ BL func_0800c3b8 \n\
/* 08037fe0 */ LSLS R0, R0, 0x10 \n\
/* 08037fe2 */ LSRS R0, R0, 0x10 \n\
/* 08037fe4 */ LDR R1, =D_089e5ee0 \n\
/* 08037fe6 */ BL func_080087b4 \n\
/* 08037fea */ LDR R1, =func_08037f94 \n\
/* 08037fec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037fee */ BL func_08005d38 \n\
/* 08037ff2 */ POP {R0} \n\
/* 08037ff4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
