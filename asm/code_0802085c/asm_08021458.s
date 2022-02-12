asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021458 \n\
/* 08021458 */ PUSH {R4, R5, LR} \n\
/* 0802145a */ LDR R5, =D_03005380 \n\
/* 0802145c */ LDR R0, [R5] \n\
/* 0802145e */ LDR R4, =D_030055d0 \n\
/* 08021460 */ LDR R1, [R4] \n\
/* 08021462 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 08021464 */ LDRSH R1, [R1, R2] \n\
/* 08021466 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021468 */ BL func_0804cebc \n\
/* 0802146c */ LDR R0, [R5] \n\
/* 0802146e */ LDR R1, [R4] \n\
/* 08021470 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 08021472 */ LDRSH R1, [R1, R2] \n\
/* 08021474 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08021476 */ BL func_0804d770 \n\
/* 0802147a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802147c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802147e */ BL func_08017338 \n\
/* 08021482 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021484 */ BL func_0800bd04 \n\
/* 08021488 */ LDR R0, [R4] \n\
/* 0802148a */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 0802148c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802148e */ STRB R1, [R0] \n\
/* 08021490 */ POP {R4, R5} \n\
/* 08021492 */ POP {R0} \n\
/* 08021494 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
