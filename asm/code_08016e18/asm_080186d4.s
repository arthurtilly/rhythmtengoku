asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080186d4 \n\
/* 080186d4 */ PUSH {R4, R5, LR} \n\
/* 080186d6 */ LDR R5, =D_030046a4 \n\
/* 080186d8 */ LDR R1, [R5] \n\
/* 080186da */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080186dc */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 080186de */ LDRB R0, [R0] \n\
/* 080186e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080186e2 */ BNE branch_08018746 \n\
/* 080186e4 */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 080186e6 */ LSLS R2, R2, 0x3 \n\
/* 080186e8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080186ea */ LDR R0, [R0] \n\
/* 080186ec */ BL func_0800ac58 \n\
/* 080186f0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080186f2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080186f4 */ BEQ branch_0801870c \n\
/* 080186f6 */ LDR R0, [R5] \n\
/* 080186f8 */ LDR R3, =0x49d \n\
/* 080186fa */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080186fc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080186fe */ STRB R1, [R0] \n\
/* 08018700 */ B branch_08018718 \n\
\n\
.ltorg \n\
 \n\
branch_0801870c: \n\
/* 0801870c */ BL func_08018698 \n\
/* 08018710 */ LDR R0, [R5] \n\
/* 08018712 */ LDR R1, =0x49d \n\
/* 08018714 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018716 */ STRB R4, [R0] \n\
 \n\
branch_08018718: \n\
/* 08018718 */ LDR R4, =D_030046a4 \n\
/* 0801871a */ LDR R0, [R4] \n\
/* 0801871c */ LDRH R2, [R0, 0xA] \n\
/* 0801871e */ LDR R3, =0x49e \n\
/* 08018720 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 08018722 */ STRH R2, [R1] \n\
/* 08018724 */ LDRH R1, [R0, 0xC] \n\
/* 08018726 */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 08018728 */ LSLS R2, R2, 0x3 \n\
/* 0801872a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801872c */ STRH R1, [R0] \n\
/* 0801872e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018730 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08018732 */ BL func_08017338 \n\
/* 08018736 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08018738 */ BL func_0800bd04 \n\
/* 0801873c */ LDR R0, [R4] \n\
/* 0801873e */ LDR R3, =0x49c \n\
/* 08018740 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08018742 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08018744 */ STRB R1, [R0] \n\
 \n\
branch_08018746: \n\
/* 08018746 */ POP {R4, R5} \n\
/* 08018748 */ POP {R0} \n\
/* 0801874a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
