asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032ee0 \n\
/* 08032ee0 */ PUSH {LR} \n\
/* 08032ee2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08032ee4 */ BL func_0800c604 \n\
/* 08032ee8 */ BL func_0800c3b8 \n\
/* 08032eec */ LSLS R0, R0, 0x10 \n\
/* 08032eee */ LSRS R0, R0, 0x10 \n\
/* 08032ef0 */ LDR R1, =D_089e4994 \n\
/* 08032ef2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08032ef4 */ LSLS R2, R2, 0x6 \n\
/* 08032ef6 */ BL func_08002ee0 \n\
/* 08032efa */ LDR R1, =func_08032ed0 \n\
/* 08032efc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032efe */ BL func_08005d38 \n\
/* 08032f02 */ POP {R0} \n\
/* 08032f04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
