asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080090ec \n\
/* 080090ec */ PUSH {R4-R6, LR} \n\
/* 080090ee */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080090f0 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080090f2 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 080090f4 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080090f6 */ BEQ branch_08009142 \n\
/* 080090f8 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 080090fa */ LSLS R2, R2, 0x14 \n\
/* 080090fc */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080090fe */ STRB R0, [R2] \n\
/* 08009100 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009102 */ STRB R1, [R2] \n\
/* 08009104 */ LDR R0, =D_0e000003 \n\
/* 08009106 */ STRB R1, [R0] \n\
/* 08009108 */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0800910a */ STRB R1, [R0] \n\
/* 0800910c */ STRB R3, [R0] \n\
/* 0800910e */ LSRS R1, R3, 0x8 \n\
/* 08009110 */ STRB R1, [R0] \n\
 \n\
branch_08009112: \n\
/* 08009112 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 08009114 */ MOVS R0, 0x84 @ Set R0 to 0x84 \n\
/* 08009116 */ LSLS R0, R0, 0x2 \n\
/* 08009118 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0800911a */ BLS branch_0800911e \n\
/* 0800911c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_0800911e: \n\
/* 0800911e */ SUBS R5, R5, R4 @ Set R5 to R5 - R4 \n\
/* 08009120 */ BL func_080090d0 \n\
/* 08009124 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009126 */ CMP R1, R4 @ Check R1 - R4 \n\
/* 08009128 */ BCS branch_08009138 \n\
/* 0800912a */ LDR R2, =D_0e000002 \n\
 \n\
branch_0800912c: \n\
/* 0800912c */ LDRB R0, [R2] \n\
/* 0800912e */ STRB R0, [R6] \n\
/* 08009130 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08009132 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08009134 */ CMP R1, R4 @ Check R1 - R4 \n\
/* 08009136 */ BCC branch_0800912c \n\
 \n\
branch_08009138: \n\
/* 08009138 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800913a */ BNE branch_08009112 \n\
/* 0800913c */ LDR R1, =D_0e000003 \n\
/* 0800913e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009140 */ STRB R0, [R1] \n\
 \n\
branch_08009142: \n\
/* 08009142 */ POP {R4-R6} \n\
/* 08009144 */ POP {R0} \n\
/* 08009146 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
