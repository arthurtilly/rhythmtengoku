asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045c2c \n\
/* 08045c2c */ PUSH {LR} \n\
/* 08045c2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045c30 */ BL func_0800c604 \n\
/* 08045c34 */ BL func_08006d80 \n\
/* 08045c38 */ BL func_0800c3b8 \n\
/* 08045c3c */ LSLS R0, R0, 0x10 \n\
/* 08045c3e */ LSRS R0, R0, 0x10 \n\
/* 08045c40 */ LDR R1, =D_089ead54 \n\
/* 08045c42 */ BL func_080087b4 \n\
/* 08045c46 */ LDR R1, =func_08045bfc \n\
/* 08045c48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045c4a */ BL func_08005d38 \n\
/* 08045c4e */ POP {R0} \n\
/* 08045c50 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
