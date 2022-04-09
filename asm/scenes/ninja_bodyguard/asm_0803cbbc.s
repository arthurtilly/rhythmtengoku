asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803cbbc \n\
/* 0803cbbc */ PUSH {LR} \n\
/* 0803cbbe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cbc0 */ BL func_0800c604 \n\
/* 0803cbc4 */ BL func_0800c3b8 \n\
/* 0803cbc8 */ LSLS R0, R0, 0x10 \n\
/* 0803cbca */ LSRS R0, R0, 0x10 \n\
/* 0803cbcc */ LDR R1, =D_089e69ec \n\
/* 0803cbce */ BL func_080087b4 \n\
/* 0803cbd2 */ LDR R1, =func_0803cb7c \n\
/* 0803cbd4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cbd6 */ BL func_08005d38 \n\
/* 0803cbda */ POP {R0} \n\
/* 0803cbdc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
