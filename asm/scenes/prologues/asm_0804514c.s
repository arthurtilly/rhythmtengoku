asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804514c \n\
/* 0804514c */ PUSH {LR} \n\
/* 0804514e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045150 */ BL func_0800c604 \n\
/* 08045154 */ BL func_08006d80 \n\
/* 08045158 */ BL func_0800c3b8 \n\
/* 0804515c */ LSLS R0, R0, 0x10 \n\
/* 0804515e */ LSRS R0, R0, 0x10 \n\
/* 08045160 */ LDR R1, =D_089ea088 \n\
/* 08045162 */ BL func_080087b4 \n\
/* 08045166 */ LDR R1, =func_0804511c \n\
/* 08045168 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804516a */ BL func_08005d38 \n\
/* 0804516e */ POP {R0} \n\
/* 08045170 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
