asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c030 \n\
/* 0800c030 */ PUSH {LR} \n\
/* 0800c032 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c034 */ LSLS R1, R1, 0x10 \n\
/* 0800c036 */ LSRS R1, R1, 0x10 \n\
/* 0800c038 */ LDR R0, =D_030053c0 \n\
/* 0800c03a */ LDR R0, [R0, 0x4] \n\
/* 0800c03c */ BL func_080028c4 \n\
/* 0800c040 */ POP {R0} \n\
/* 0800c042 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
