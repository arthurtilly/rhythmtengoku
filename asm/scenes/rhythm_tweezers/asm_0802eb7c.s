asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802eb7c \n\
/* 0802eb7c */ PUSH {R4, R5, LR} \n\
/* 0802eb7e */ LDR R0, =D_030055d0 \n\
/* 0802eb80 */ LDR R4, [R0] \n\
/* 0802eb82 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 0802eb84 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802eb86 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802eb88 */ STRB R0, [R4, 0x4] \n\
/* 0802eb8a */ STR R5, [R4, 0x8] \n\
/* 0802eb8c */ MOVS R0, 0xA8 @ Set R0 to 0xA8 \n\
/* 0802eb8e */ BL func_0800c3a4 \n\
/* 0802eb92 */ STR R0, [R4, 0xC] \n\
/* 0802eb94 */ STRB R5, [R4, 0x5] \n\
/* 0802eb96 */ POP {R4, R5} \n\
/* 0802eb98 */ POP {R0} \n\
/* 0802eb9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
