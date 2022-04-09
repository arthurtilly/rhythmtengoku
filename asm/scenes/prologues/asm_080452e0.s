asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080452e0 \n\
/* 080452e0 */ PUSH {LR} \n\
/* 080452e2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080452e4 */ LDR R0, =D_03005380 \n\
/* 080452e6 */ LDR R0, [R0] \n\
/* 080452e8 */ LDR R1, =D_030055d0 \n\
/* 080452ea */ LDR R1, [R1] \n\
/* 080452ec */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080452ee */ LDRSH R1, [R1, R3] \n\
/* 080452f0 */ LSLS R2, R2, 0x18 \n\
/* 080452f2 */ ASRS R2, R2, 0x18 \n\
/* 080452f4 */ BL func_0804cebc \n\
/* 080452f8 */ POP {R0} \n\
/* 080452fa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
