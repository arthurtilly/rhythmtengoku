asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045ad0 \n\
/* 08045ad0 */ PUSH {LR} \n\
/* 08045ad2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045ad4 */ BL func_0800c604 \n\
/* 08045ad8 */ BL func_08006d80 \n\
/* 08045adc */ BL func_0800c3b8 \n\
/* 08045ae0 */ LSLS R0, R0, 0x10 \n\
/* 08045ae2 */ LSRS R0, R0, 0x10 \n\
/* 08045ae4 */ LDR R1, =D_089eac18 \n\
/* 08045ae6 */ BL func_080087b4 \n\
/* 08045aea */ LDR R1, =func_08045aa0 \n\
/* 08045aec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045aee */ BL func_08005d38 \n\
/* 08045af2 */ POP {R0} \n\
/* 08045af4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
