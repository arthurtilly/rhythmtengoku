asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802bf58 \n\
/* 0802bf58 */ PUSH {R4, LR} \n\
/* 0802bf5a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802bf5c */ LDR R0, [R4, 0x4] \n\
/* 0802bf5e */ BL func_0802cf8c \n\
/* 0802bf62 */ LDR R0, [R4, 0x4] \n\
/* 0802bf64 */ BL func_0802d81c \n\
/* 0802bf68 */ BL func_0802d2bc \n\
/* 0802bf6c */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0802bf6e */ BL func_0800c3a4 \n\
/* 0802bf72 */ LDR R1, =D_030055d0 \n\
/* 0802bf74 */ LDR R1, [R1] \n\
/* 0802bf76 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802bf78 */ LSLS R2, R2, 0x2 \n\
/* 0802bf7a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802bf7c */ STR R0, [R1] \n\
/* 0802bf7e */ POP {R4} \n\
/* 0802bf80 */ POP {R0} \n\
/* 0802bf82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
