asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080388b4 \n\
/* 080388b4 */ PUSH {R4, LR} \n\
/* 080388b6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080388b8 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080388ba */ BEQ branch_080388ca \n\
/* 080388bc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080388be */ BL func_08017448 \n\
/* 080388c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080388c4 */ BL func_08017458 \n\
/* 080388c8 */ B branch_080388d0 \n\
 \n\
branch_080388ca: \n\
/* 080388ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080388cc */ BL func_08017448 \n\
 \n\
branch_080388d0: \n\
/* 080388d0 */ POP {R4} \n\
/* 080388d2 */ POP {R0} \n\
/* 080388d4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
