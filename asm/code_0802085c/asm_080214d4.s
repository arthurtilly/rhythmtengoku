asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080214d4 \n\
/* 080214d4 */ PUSH {R4-R6, LR} \n\
/* 080214d6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080214d8 */ LDR R6, =D_030055d0 \n\
/* 080214da */ LDR R1, [R6] \n\
/* 080214dc */ STRH R5, [R1, 0x30] \n\
/* 080214de */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080214e0 */ BEQ branch_0802150c \n\
/* 080214e2 */ LDR R4, =D_03005380 \n\
/* 080214e4 */ LDR R0, [R4] \n\
/* 080214e6 */ MOVS R2, 0x2E @ Set R2 to 0x2E \n\
/* 080214e8 */ LDRSH R1, [R1, R2] \n\
/* 080214ea */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080214ec */ BL func_0804d770 \n\
/* 080214f0 */ LDR R0, [R4] \n\
/* 080214f2 */ LDR R1, [R6] \n\
/* 080214f4 */ MOVS R2, 0x2E @ Set R2 to 0x2E \n\
/* 080214f6 */ LDRSH R1, [R1, R2] \n\
/* 080214f8 */ LSLS R2, R5, 0x18 \n\
/* 080214fa */ ASRS R2, R2, 0x18 \n\
/* 080214fc */ BL func_0804cebc \n\
/* 08021500 */ B branch_0802151a \n\
\n\
.ltorg \n\
 \n\
branch_0802150c: \n\
/* 0802150c */ LDR R0, =D_03005380 \n\
/* 0802150e */ LDR R0, [R0] \n\
/* 08021510 */ MOVS R2, 0x2E @ Set R2 to 0x2E \n\
/* 08021512 */ LDRSH R1, [R1, R2] \n\
/* 08021514 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021516 */ BL func_0804d770 \n\
 \n\
branch_0802151a: \n\
/* 0802151a */ POP {R4-R6} \n\
/* 0802151c */ POP {R0} \n\
/* 0802151e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
