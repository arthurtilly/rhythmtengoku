asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803316c \n\
/* 0803316c */ PUSH {R4-R6, LR} \n\
/* 0803316e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08033170 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08033172 */ BGE branch_08033190 \n\
/* 08033174 */ LDR R0, =D_03005380 \n\
/* 08033176 */ LDR R0, [R0] \n\
/* 08033178 */ LDR R1, =D_030055d0 \n\
/* 0803317a */ LDR R1, [R1] \n\
/* 0803317c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803317e */ LDRSH R1, [R1, R2] \n\
/* 08033180 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033182 */ BL func_0804d770 \n\
/* 08033186 */ B branch_080331b2 \n\
\n\
.ltorg \n\
 \n\
branch_08033190: \n\
/* 08033190 */ LDR R5, =D_03005380 \n\
/* 08033192 */ LDR R0, [R5] \n\
/* 08033194 */ LDR R4, =D_030055d0 \n\
/* 08033196 */ LDR R1, [R4] \n\
/* 08033198 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803319a */ LDRSH R1, [R1, R2] \n\
/* 0803319c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803319e */ BL func_0804d770 \n\
/* 080331a2 */ LDR R0, [R5] \n\
/* 080331a4 */ LDR R1, [R4] \n\
/* 080331a6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080331a8 */ LDRSH R1, [R1, R2] \n\
/* 080331aa */ LSLS R2, R6, 0x18 \n\
/* 080331ac */ ASRS R2, R2, 0x18 \n\
/* 080331ae */ BL func_0804cebc \n\
 \n\
branch_080331b2: \n\
/* 080331b2 */ POP {R4-R6} \n\
/* 080331b4 */ POP {R0} \n\
/* 080331b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
