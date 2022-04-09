asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080477f4 \n\
/* 080477f4 */ PUSH {LR} \n\
/* 080477f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080477f8 */ BL func_0800c604 \n\
/* 080477fc */ BL func_08006d80 \n\
/* 08047800 */ BL func_0800c3b8 \n\
/* 08047804 */ LSLS R0, R0, 0x10 \n\
/* 08047806 */ LSRS R0, R0, 0x10 \n\
/* 08047808 */ LDR R1, =D_089ed6b4 \n\
/* 0804780a */ BL func_080087b4 \n\
/* 0804780e */ LDR R1, =func_080477c4 \n\
/* 08047810 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047812 */ BL func_08005d38 \n\
/* 08047816 */ POP {R0} \n\
/* 08047818 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
