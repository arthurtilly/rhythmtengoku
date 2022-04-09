asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045314 \n\
/* 08045314 */ PUSH {LR} \n\
/* 08045316 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045318 */ BL func_0800c604 \n\
/* 0804531c */ BL func_0800c3b8 \n\
/* 08045320 */ LSLS R0, R0, 0x10 \n\
/* 08045322 */ LSRS R0, R0, 0x10 \n\
/* 08045324 */ LDR R1, =D_089ea3e8 \n\
/* 08045326 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045328 */ LSLS R2, R2, 0x6 \n\
/* 0804532a */ BL func_08002ee0 \n\
/* 0804532e */ LDR R1, =func_08045304 \n\
/* 08045330 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045332 */ BL func_08005d38 \n\
/* 08045336 */ POP {R0} \n\
/* 08045338 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
