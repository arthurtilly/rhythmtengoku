asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080102a8 \n\
/* 080102a8 */ PUSH {R4, R5, LR} \n\
/* 080102aa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080102ac */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080102ae */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 080102b0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080102b2 */ BEQ branch_080102c4 \n\
/* 080102b4 */ LDR R0, =D_03005380 \n\
/* 080102b6 */ LDR R0, [R0] \n\
/* 080102b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080102ba */ LDRSH R1, [R3, R2] \n\
/* 080102bc */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080102be */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080102c0 */ BL func_0804db44 \n\
 \n\
branch_080102c4: \n\
/* 080102c4 */ POP {R4, R5} \n\
/* 080102c6 */ POP {R0} \n\
/* 080102c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
