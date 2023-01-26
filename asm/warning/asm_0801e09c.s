asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e09c \n\
/* 0801e09c */ PUSH {LR} \n\
/* 0801e09e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801e0a0 */ BL func_0801d860 \n\
/* 0801e0a4 */ LDR R1, =D_03004498 \n\
/* 0801e0a6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e0a8 */ STRB R0, [R1] \n\
/* 0801e0aa */ BL func_0801e060 \n\
/* 0801e0ae */ LDR R0, =D_030046a4 \n\
/* 0801e0b0 */ LDR R1, [R0] \n\
/* 0801e0b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e0b4 */ STR R0, [R1] \n\
/* 0801e0b6 */ MOVS R0, 0xE1 @ Set R0 to 0xE1 \n\
/* 0801e0b8 */ LSLS R0, R0, 0x4 \n\
/* 0801e0ba */ STR R0, [R1, 0x4] \n\
/* 0801e0bc */ POP {R0} \n\
/* 0801e0be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
