asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080201cc \n\
/* 080201cc */ PUSH {R4, LR} \n\
/* 080201ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080201d0 */ LDR R0, [R4, 0x10] \n\
/* 080201d2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080201d4 */ BEQ branch_080201fa \n\
/* 080201d6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080201d8 */ STR R0, [R4, 0x10] \n\
/* 080201da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080201dc */ BNE branch_080201fa \n\
/* 080201de */ LDR R0, [R4] \n\
/* 080201e0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080201e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080201e4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080201e6 */ BL func_08010008 \n\
/* 080201ea */ LDR R0, [R4] \n\
/* 080201ec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080201ee */ BL func_0800ffc0 \n\
/* 080201f2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080201f4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080201f6 */ BL func_08017338 \n\
 \n\
branch_080201fa: \n\
/* 080201fa */ POP {R4} \n\
/* 080201fc */ POP {R0} \n\
/* 080201fe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
