asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009564 \n\
/* 08009564 */ PUSH {R4, LR} \n\
/* 08009566 */ CMP R0, 0x18 @ Compare R0 and 0x18 \n\
/* 08009568 */ BLS branch_0800956c \n\
/* 0800956a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
 \n\
branch_0800956c: \n\
/* 0800956c */ LSLS R4, R0, 0xC \n\
/* 0800956e */ LDR R2, =D_030011a4 \n\
/* 08009570 */ LDRB R1, [R2] \n\
/* 08009572 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009574 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08009576 */ LDR R3, =D_030011ac \n\
/* 08009578 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800957a */ BEQ branch_08009582 \n\
/* 0800957c */ LDR R0, [R3] \n\
/* 0800957e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08009580 */ BHI branch_08009584 \n\
 \n\
branch_08009582: \n\
/* 08009582 */ STR R4, [R3] \n\
 \n\
branch_08009584: \n\
/* 08009584 */ LDR R0, =D_030011a8 \n\
/* 08009586 */ LDR R1, [R0] \n\
/* 08009588 */ LDR R0, [R3] \n\
/* 0800958a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800958c */ BCS branch_08009596 \n\
/* 0800958e */ LDRB R0, [R2] \n\
/* 08009590 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08009592 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08009594 */ STRB R0, [R2] \n\
 \n\
branch_08009596: \n\
/* 08009596 */ POP {R4} \n\
/* 08009598 */ POP {R0} \n\
/* 0800959a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
