asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ed24 \n\
/* 0800ed24 */ PUSH {LR} \n\
/* 0800ed26 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ed28 */ LDR R0, =D_030053c0 \n\
/* 0800ed2a */ LDR R0, [R0, 0x4] \n\
/* 0800ed2c */ LSLS R1, R1, 0x10 \n\
/* 0800ed2e */ LSRS R1, R1, 0x10 \n\
/* 0800ed30 */ BL func_080028c4 \n\
/* 0800ed34 */ POP {R0} \n\
/* 0800ed36 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
