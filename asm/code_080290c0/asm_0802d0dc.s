asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802d0dc \n\
/* 0802d0dc */ PUSH {R4, R5, LR} \n\
/* 0802d0de */ LDR R5, =D_03005380 \n\
/* 0802d0e0 */ LDR R0, [R5] \n\
/* 0802d0e2 */ LSLS R4, R1, 0x10 \n\
/* 0802d0e4 */ ASRS R4, R4, 0x10 \n\
/* 0802d0e6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802d0e8 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802d0ea */ BL func_0804cebc \n\
/* 0802d0ee */ LDR R0, [R5] \n\
/* 0802d0f0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802d0f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d0f4 */ BL func_0804dcb8 \n\
/* 0802d0f8 */ POP {R4, R5} \n\
/* 0802d0fa */ POP {R0} \n\
/* 0802d0fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
