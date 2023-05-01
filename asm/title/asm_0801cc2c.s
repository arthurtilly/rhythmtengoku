asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cc2c \n\
/* 0801cc2c */ PUSH {R4-R7, LR} \n\
/* 0801cc2e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801cc30 */ PUSH {R7} \n\
/* 0801cc32 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801cc34 */ LDR R0, =gCurrentSceneData \n\
/* 0801cc36 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801cc38 */ LDR R5, =D_03005380 \n\
/* 0801cc3a */ MOVS R6, 0x14 @ Set R6 to 0x14 \n\
 \n\
branch_0801cc3c: \n\
/* 0801cc3c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801cc3e */ LDR R4, [R2] \n\
/* 0801cc40 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0801cc42 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801cc44 */ STRB R0, [R4] \n\
/* 0801cc46 */ LDR R0, [R5] \n\
/* 0801cc48 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801cc4a */ LDRSH R1, [R4, R2] \n\
/* 0801cc4c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801cc4e */ BL func_0804d770 \n\
/* 0801cc52 */ LDR R0, [R5] \n\
/* 0801cc54 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801cc56 */ LDRSH R1, [R4, R2] \n\
/* 0801cc58 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801cc5a */ BL func_0804d770 \n\
/* 0801cc5e */ LDR R0, [R5] \n\
/* 0801cc60 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0801cc62 */ LDRSH R1, [R4, R2] \n\
/* 0801cc64 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801cc66 */ BL func_0804d770 \n\
/* 0801cc6a */ ADDS R6, 0x1C @ Add 0x1C to R6 \n\
/* 0801cc6c */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801cc6e */ CMP R7, 0x4 @ Compare R7 and 0x4 \n\
/* 0801cc70 */ BLS branch_0801cc3c \n\
/* 0801cc72 */ POP {R3} \n\
/* 0801cc74 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801cc76 */ POP {R4-R7} \n\
/* 0801cc78 */ POP {R0} \n\
/* 0801cc7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
