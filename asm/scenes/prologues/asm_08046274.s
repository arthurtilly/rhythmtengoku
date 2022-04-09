asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046274 \n\
/* 08046274 */ PUSH {LR} \n\
/* 08046276 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046278 */ BL func_0800c604 \n\
/* 0804627c */ BL func_08006d80 \n\
/* 08046280 */ BL func_0800c3b8 \n\
/* 08046284 */ LSLS R0, R0, 0x10 \n\
/* 08046286 */ LSRS R0, R0, 0x10 \n\
/* 08046288 */ LDR R1, =D_089eb66c \n\
/* 0804628a */ BL func_080087b4 \n\
/* 0804628e */ LDR R1, =func_08046244 \n\
/* 08046290 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046292 */ BL func_08005d38 \n\
/* 08046296 */ POP {R0} \n\
/* 08046298 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
