asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080457f4 \n\
/* 080457f4 */ PUSH {LR} \n\
/* 080457f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080457f8 */ BL func_0800c604 \n\
/* 080457fc */ BL func_08006d80 \n\
/* 08045800 */ BL func_0800c3b8 \n\
/* 08045804 */ LSLS R0, R0, 0x10 \n\
/* 08045806 */ LSRS R0, R0, 0x10 \n\
/* 08045808 */ LDR R1, =D_089ea988 \n\
/* 0804580a */ BL func_080087b4 \n\
/* 0804580e */ LDR R1, =func_080457c4 \n\
/* 08045810 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045812 */ BL func_08005d38 \n\
/* 08045816 */ POP {R0} \n\
/* 08045818 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
