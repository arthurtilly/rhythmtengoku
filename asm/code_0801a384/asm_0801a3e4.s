asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a3e4 \n\
/* 0801a3e4 */ PUSH {LR} \n\
/* 0801a3e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a3e8 */ BL func_0800c604 \n\
/* 0801a3ec */ BL func_0800c3b8 \n\
/* 0801a3f0 */ LSLS R0, R0, 0x10 \n\
/* 0801a3f2 */ LSRS R0, R0, 0x10 \n\
/* 0801a3f4 */ LDR R1, =D_089d7fb4 \n\
/* 0801a3f6 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801a3f8 */ LSLS R2, R2, 0x6 \n\
/* 0801a3fa */ BL func_08002ee0 \n\
/* 0801a3fe */ LDR R1, =func_0801a3b0 \n\
/* 0801a400 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a402 */ BL func_08005d38 \n\
/* 0801a406 */ POP {R0} \n\
/* 0801a408 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
