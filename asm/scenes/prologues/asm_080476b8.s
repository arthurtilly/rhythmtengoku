asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080476b8 \n\
/* 080476b8 */ PUSH {LR} \n\
/* 080476ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080476bc */ BL func_0800c604 \n\
/* 080476c0 */ BL func_08006d80 \n\
/* 080476c4 */ BL func_0800c3b8 \n\
/* 080476c8 */ LSLS R0, R0, 0x10 \n\
/* 080476ca */ LSRS R0, R0, 0x10 \n\
/* 080476cc */ LDR R1, =D_089ed548 \n\
/* 080476ce */ BL func_080087b4 \n\
/* 080476d2 */ LDR R1, =func_08047688 \n\
/* 080476d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080476d6 */ BL func_08005d38 \n\
/* 080476da */ POP {R0} \n\
/* 080476dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
