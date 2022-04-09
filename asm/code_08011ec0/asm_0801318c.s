asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801318c \n\
/* 0801318c */ PUSH {R4-R7, LR} \n\
/* 0801318e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08013190 */ PUSH {R7} \n\
/* 08013192 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08013194 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08013196 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08013198 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801319a */ BGE branch_080131ae \n\
/* 0801319c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801319e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080131a0 */ STR R0, [R6] \n\
/* 080131a2 */ STR R0, [R2] \n\
/* 080131a4 */ B branch_080131da \n\
 \n\
branch_080131a6: \n\
/* 080131a6 */ STR R1, [R6] \n\
/* 080131a8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080131aa */ STR R4, [R0] \n\
/* 080131ac */ B branch_080131da \n\
 \n\
branch_080131ae: \n\
/* 080131ae */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080131b0 */ LDR R1, =D_089ceafc \n\
/* 080131b2 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 080131b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_080131b6: \n\
/* 080131b6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080131b8 */ LSLS R0, R2, 0x2 \n\
/* 080131ba */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080131bc */ LSLS R0, R0, 0x2 \n\
/* 080131be */ MOV R7, R12 @ Set R7 to R12 \n\
/* 080131c0 */ ADDS R3, R0, R7 @ Set R3 to R0 + R7 \n\
 \n\
branch_080131c2: \n\
/* 080131c2 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080131c4 */ LDRSH R0, [R3, R7] \n\
/* 080131c6 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 080131c8 */ BEQ branch_080131a6 \n\
/* 080131ca */ ADDS R3, 0x14 @ Add 0x14 to R3 \n\
/* 080131cc */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080131ce */ CMP R1, 0xE @ Compare R1 and 0xE \n\
/* 080131d0 */ BLS branch_080131c2 \n\
/* 080131d2 */ ADDS R2, 0xF @ Add 0xF to R2 \n\
/* 080131d4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080131d6 */ CMP R4, 0xB @ Compare R4 and 0xB \n\
/* 080131d8 */ BLS branch_080131b6 \n\
 \n\
branch_080131da: \n\
/* 080131da */ POP {R3} \n\
/* 080131dc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080131de */ POP {R4-R7} \n\
/* 080131e0 */ POP {R0} \n\
/* 080131e2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
