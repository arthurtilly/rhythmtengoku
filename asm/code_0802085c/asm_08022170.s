asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08022170 \n\
/* 08022170 */ PUSH {R4, LR} \n\
/* 08022172 */ LDR R4, =D_030055d0 \n\
/* 08022174 */ LDR R1, [R4] \n\
/* 08022176 */ LDRB R0, [R1, 0x17] \n\
/* 08022178 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802217a */ BEQ branch_080221b6 \n\
/* 0802217c */ LDRB R0, [R1, 0x16] \n\
/* 0802217e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022180 */ BEQ branch_080221b6 \n\
/* 08022182 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08022184 */ STRB R0, [R1, 0x16] \n\
/* 08022186 */ LDR R0, =D_03005380 \n\
/* 08022188 */ LDR R0, [R0] \n\
/* 0802218a */ LDR R2, [R4] \n\
/* 0802218c */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 0802218e */ LDRSH R1, [R2, R3] \n\
/* 08022190 */ LDRB R2, [R2, 0x16] \n\
/* 08022192 */ LSLS R2, R2, 0x18 \n\
/* 08022194 */ ASRS R2, R2, 0x18 \n\
/* 08022196 */ BL func_0804cebc \n\
/* 0802219a */ LDR R1, [R4] \n\
/* 0802219c */ LDRB R0, [R1, 0x16] \n\
/* 0802219e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080221a0 */ BNE branch_080221b6 \n\
/* 080221a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080221a4 */ STRB R0, [R1, 0x18] \n\
/* 080221a6 */ LDR R1, [R4] \n\
/* 080221a8 */ LDR R0, =D_089df37c \n\
/* 080221aa */ STR R0, [R1, 0x1C] \n\
/* 080221ac */ BL func_080221cc \n\
/* 080221b0 */ LDR R0, =D_08a9e1d8 \n\
/* 080221b2 */ BL func_08002634 \n\
 \n\
branch_080221b6: \n\
/* 080221b6 */ POP {R4} \n\
/* 080221b8 */ POP {R0} \n\
/* 080221ba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
