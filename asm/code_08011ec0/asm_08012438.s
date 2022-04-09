asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012438 \n\
/* 08012438 */ PUSH {LR} \n\
/* 0801243a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801243c */ BL func_0800c604 \n\
/* 08012440 */ BL func_0800c3b8 \n\
/* 08012444 */ LSLS R0, R0, 0x10 \n\
/* 08012446 */ LSRS R0, R0, 0x10 \n\
/* 08012448 */ LDR R1, =D_089cdc8c \n\
/* 0801244a */ BL func_080087b4 \n\
/* 0801244e */ LDR R1, =func_0800bd04 \n\
/* 08012450 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012452 */ BL func_08005d38 \n\
/* 08012456 */ POP {R0} \n\
/* 08012458 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
