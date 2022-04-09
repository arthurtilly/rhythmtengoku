asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045674 \n\
/* 08045674 */ PUSH {LR} \n\
/* 08045676 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045678 */ BL func_0800c604 \n\
/* 0804567c */ BL func_0800c3b8 \n\
/* 08045680 */ LSLS R0, R0, 0x10 \n\
/* 08045682 */ LSRS R0, R0, 0x10 \n\
/* 08045684 */ LDR R1, =D_089ea868 \n\
/* 08045686 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045688 */ LSLS R2, R2, 0x6 \n\
/* 0804568a */ BL func_08002ee0 \n\
/* 0804568e */ LDR R1, =func_08045664 \n\
/* 08045690 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045692 */ BL func_08005d38 \n\
/* 08045696 */ POP {R0} \n\
/* 08045698 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
