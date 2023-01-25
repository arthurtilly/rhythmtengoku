asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007e68 \n\
/* 08007e68 */ PUSH {R4, LR} \n\
/* 08007e6a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08007e6c */ BL get_task_info \n\
/* 08007e70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007e72 */ BEQ branch_08007e76 \n\
/* 08007e74 */ STR R4, [R0, 0xC] \n\
 \n\
branch_08007e76: \n\
/* 08007e76 */ POP {R4} \n\
/* 08007e78 */ POP {R0} \n\
/* 08007e7a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
