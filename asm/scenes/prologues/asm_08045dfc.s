asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045dfc \n\
/* 08045dfc */ PUSH {LR} \n\
/* 08045dfe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045e00 */ BL func_0800c604 \n\
/* 08045e04 */ BL func_0800c3b8 \n\
/* 08045e08 */ LSLS R0, R0, 0x10 \n\
/* 08045e0a */ LSRS R0, R0, 0x10 \n\
/* 08045e0c */ LDR R1, =D_089eb018 \n\
/* 08045e0e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045e10 */ LSLS R2, R2, 0x6 \n\
/* 08045e12 */ BL func_08002ee0 \n\
/* 08045e16 */ LDR R1, =func_08045dec \n\
/* 08045e18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045e1a */ BL func_08005d38 \n\
/* 08045e1e */ POP {R0} \n\
/* 08045e20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
