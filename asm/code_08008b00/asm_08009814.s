asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009814 \n\
/* 08009814 */ PUSH {LR} \n\
/* 08009816 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009818 */ BL func_080096a4 \n\
/* 0800981c */ LDR R1, =D_03001201 \n\
/* 0800981e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009820 */ STRB R0, [R1] \n\
/* 08009822 */ POP {R0} \n\
/* 08009824 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
