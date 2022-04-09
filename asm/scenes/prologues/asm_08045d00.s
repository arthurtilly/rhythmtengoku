asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045d00 \n\
/* 08045d00 */ PUSH {LR} \n\
/* 08045d02 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045d04 */ BL func_0800c604 \n\
/* 08045d08 */ BL func_0800c3b8 \n\
/* 08045d0c */ LSLS R0, R0, 0x10 \n\
/* 08045d0e */ LSRS R0, R0, 0x10 \n\
/* 08045d10 */ LDR R1, =D_089eae88 \n\
/* 08045d12 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045d14 */ LSLS R2, R2, 0x6 \n\
/* 08045d16 */ BL func_08002ee0 \n\
/* 08045d1a */ LDR R1, =func_08045cf0 \n\
/* 08045d1c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045d1e */ BL func_08005d38 \n\
/* 08045d22 */ POP {R0} \n\
/* 08045d24 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
