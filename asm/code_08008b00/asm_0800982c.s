asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800982c \n\
/* 0800982c */ PUSH {R4, LR} \n\
/* 0800982e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08009830 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009832 */ BL func_080096a4 \n\
/* 08009836 */ LDR R0, =D_03001200 \n\
/* 08009838 */ STRB R4, [R0] \n\
/* 0800983a */ POP {R4} \n\
/* 0800983c */ POP {R0} \n\
/* 0800983e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
