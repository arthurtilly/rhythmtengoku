asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045218 \n\
/* 08045218 */ PUSH {LR} \n\
/* 0804521a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804521c */ BL func_0800c604 \n\
/* 08045220 */ BL func_0800c3b8 \n\
/* 08045224 */ LSLS R0, R0, 0x10 \n\
/* 08045226 */ LSRS R0, R0, 0x10 \n\
/* 08045228 */ LDR R1, =D_089ea270 \n\
/* 0804522a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804522c */ LSLS R2, R2, 0x6 \n\
/* 0804522e */ BL func_08002ee0 \n\
/* 08045232 */ LDR R1, =func_08045208 \n\
/* 08045234 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045236 */ BL func_08005d38 \n\
/* 0804523a */ POP {R0} \n\
/* 0804523c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
