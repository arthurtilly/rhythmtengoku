asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013570 \n\
/* 08013570 */ PUSH {LR} \n\
/* 08013572 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013574 */ BL func_0800c604 \n\
/* 08013578 */ BL func_0800c3b8 \n\
/* 0801357c */ LSLS R0, R0, 0x10 \n\
/* 0801357e */ LSRS R0, R0, 0x10 \n\
/* 08013580 */ LDR R1, =D_089cf9a8 \n\
/* 08013582 */ BL func_080087b4 \n\
/* 08013586 */ LDR R1, =func_08013530 \n\
/* 08013588 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801358a */ BL func_08005d38 \n\
/* 0801358e */ POP {R0} \n\
/* 08013590 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
