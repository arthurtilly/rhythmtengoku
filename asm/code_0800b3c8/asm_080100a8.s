asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080100a8 \n\
/* 080100a8 */ PUSH {R4, LR} \n\
/* 080100aa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080100ac */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080100ae */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080100b0 */ BEQ branch_080100c2 \n\
/* 080100b2 */ LDR R0, =D_03005380 \n\
/* 080100b4 */ LDR R0, [R0] \n\
/* 080100b6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080100b8 */ LDRSH R1, [R3, R4] \n\
/* 080100ba */ LSLS R2, R2, 0x18 \n\
/* 080100bc */ ASRS R2, R2, 0x18 \n\
/* 080100be */ BL func_0804d8c4 \n\
 \n\
branch_080100c2: \n\
/* 080100c2 */ POP {R4} \n\
/* 080100c4 */ POP {R0} \n\
/* 080100c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
