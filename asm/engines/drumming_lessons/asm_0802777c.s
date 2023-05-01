asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802777c \n\
/* 0802777c */ PUSH {LR} \n\
/* 0802777e */ LDR R0, =gCurrentEngineData \n\
/* 08027780 */ LDR R0, [R0] \n\
/* 08027782 */ LDR R1, =0x00000427 \n\
/* 08027784 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027786 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027788 */ STRB R1, [R0] \n\
/* 0802778a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802778c */ BL func_08027f4c \n\
/* 08027790 */ BL beatscript_enable_loops \n\
/* 08027794 */ POP {R0} \n\
/* 08027796 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
