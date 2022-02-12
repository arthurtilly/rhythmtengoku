asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080201a4 \n\
/* 080201a4 */ PUSH {R4, LR} \n\
/* 080201a6 */ LDR R4, =D_030055d0 \n\
/* 080201a8 */ LDR R0, [R4] \n\
/* 080201aa */ LDR R0, [R0, 0x24] \n\
/* 080201ac */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080201ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080201b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080201b2 */ BL func_08010008 \n\
/* 080201b6 */ LDR R0, [R4] \n\
/* 080201b8 */ LDR R0, [R0, 0x24] \n\
/* 080201ba */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080201bc */ BL func_0800ffc0 \n\
/* 080201c0 */ POP {R4} \n\
/* 080201c2 */ POP {R0} \n\
/* 080201c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
