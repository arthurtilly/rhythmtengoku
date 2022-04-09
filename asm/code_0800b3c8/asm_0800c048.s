asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c048 \n\
/* 0800c048 */ PUSH {LR} \n\
/* 0800c04a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c04c */ LSLS R1, R1, 0x10 \n\
/* 0800c04e */ LSRS R1, R1, 0x10 \n\
/* 0800c050 */ LDR R0, =D_030053c0 \n\
/* 0800c052 */ LDR R0, [R0, 0x4] \n\
/* 0800c054 */ BL func_080028d8 \n\
/* 0800c058 */ POP {R0} \n\
/* 0800c05a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
