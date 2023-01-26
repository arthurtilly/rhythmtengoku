asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801626c \n\
/* 0801626c */ PUSH {R4-R6, LR} \n\
/* 0801626e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08016270 */ LDR R6, =D_030046a4 \n\
/* 08016272 */ MOVS R4, 0xCC @ Set R4 to 0xCC \n\
/* 08016274 */ LSLS R4, R4, 0x1 \n\
 \n\
branch_08016276: \n\
/* 08016276 */ LDR R0, [R6] \n\
/* 08016278 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801627a */ BL func_0801616c \n\
/* 0801627e */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08016280 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08016282 */ CMP R5, 0x9 @ Compare R5 and 0x9 \n\
/* 08016284 */ BLS branch_08016276 \n\
/* 08016286 */ POP {R4-R6} \n\
/* 08016288 */ POP {R0} \n\
/* 0801628a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
