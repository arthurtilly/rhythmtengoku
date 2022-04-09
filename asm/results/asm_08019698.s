asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019698 \n\
/* 08019698 */ PUSH {R4, LR} \n\
/* 0801969a */ LDR R0, =D_089d7980 \n\
/* 0801969c */ LDR R0, [R0] \n\
/* 0801969e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080196a0 */ ADDS R2, 0x50 @ Add 0x50 to R2 \n\
/* 080196a2 */ LDRH R1, [R2, 0x12] \n\
/* 080196a4 */ LDRH R0, [R2, 0x14] \n\
/* 080196a6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080196a8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080196aa */ LDR R0, =0x43f \n\
/* 080196ac */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080196ae */ BHI branch_080196b2 \n\
/* 080196b0 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_080196b2: \n\
/* 080196b2 */ LDR R0, =0x33f \n\
/* 080196b4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080196b6 */ BHI branch_080196ba \n\
/* 080196b8 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_080196ba: \n\
/* 080196ba */ LDR R0, =0x23f \n\
/* 080196bc */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080196be */ BHI branch_080196c2 \n\
/* 080196c0 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_080196c2: \n\
/* 080196c2 */ LDR R0, =0x13f \n\
/* 080196c4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080196c6 */ BHI branch_080196ca \n\
/* 080196c8 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_080196ca: \n\
/* 080196ca */ LDRH R0, [R2, 0x4] \n\
/* 080196cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080196ce */ BEQ branch_080196d6 \n\
/* 080196d0 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 080196d2 */ BNE branch_080196d6 \n\
/* 080196d4 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_080196d6: \n\
/* 080196d6 */ BL func_080197a4 \n\
/* 080196da */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080196dc */ BLS branch_080196e0 \n\
/* 080196de */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_080196e0: \n\
/* 080196e0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080196e2 */ POP {R4} \n\
/* 080196e4 */ POP {R1} \n\
/* 080196e6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
