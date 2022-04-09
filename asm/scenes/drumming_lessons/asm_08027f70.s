asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027f70 \n\
/* 08027f70 */ PUSH {LR} \n\
/* 08027f72 */ LDR R0, =D_030055d0 \n\
/* 08027f74 */ LDR R0, [R0] \n\
/* 08027f76 */ LDR R1, =0x00000427 \n\
/* 08027f78 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027f7a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027f7c */ STRB R1, [R0] \n\
/* 08027f7e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08027f80 */ BL func_08027f4c \n\
/* 08027f84 */ POP {R0} \n\
/* 08027f86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
