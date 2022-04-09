asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804692c \n\
/* 0804692c */ PUSH {LR} \n\
/* 0804692e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046930 */ BL func_0800c604 \n\
/* 08046934 */ BL func_0800c3b8 \n\
/* 08046938 */ LSLS R0, R0, 0x10 \n\
/* 0804693a */ LSRS R0, R0, 0x10 \n\
/* 0804693c */ LDR R1, =D_089ec214 \n\
/* 0804693e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046940 */ LSLS R2, R2, 0x6 \n\
/* 08046942 */ BL func_08002ee0 \n\
/* 08046946 */ LDR R1, =func_0804691c \n\
/* 08046948 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804694a */ BL func_08005d38 \n\
/* 0804694e */ POP {R0} \n\
/* 08046950 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
