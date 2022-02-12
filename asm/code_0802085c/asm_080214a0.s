asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080214a0 \n\
/* 080214a0 */ PUSH {R4, LR} \n\
/* 080214a2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080214a4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080214a6 */ BEQ branch_080214be \n\
/* 080214a8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080214aa */ BL func_08017448 \n\
/* 080214ae */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080214b0 */ BL func_08017458 \n\
/* 080214b4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080214b6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080214b8 */ BL func_0801853c \n\
/* 080214bc */ B branch_080214cc \n\
 \n\
branch_080214be: \n\
/* 080214be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080214c0 */ BL func_08017448 \n\
/* 080214c4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080214c6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080214c8 */ BL func_0801853c \n\
 \n\
branch_080214cc: \n\
/* 080214cc */ POP {R4} \n\
/* 080214ce */ POP {R0} \n\
/* 080214d0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
