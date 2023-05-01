asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080436a8 \n\
/* 080436a8 */ PUSH {R4, R5, LR} \n\
/* 080436aa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080436ac */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080436ae */ LDR R0, =gCurrentEngineData \n\
/* 080436b0 */ LDR R0, [R0] \n\
/* 080436b2 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 080436b4 */ LSLS R2, R2, 0x1 \n\
/* 080436b6 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080436b8 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
 \n\
branch_080436ba: \n\
/* 080436ba */ LDR R0, [R1] \n\
/* 080436bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080436be */ BEQ branch_080436d0 \n\
/* 080436c0 */ MOVS R5, 0x6 @ Set R5 to 0x6 \n\
/* 080436c2 */ LDRSH R0, [R1, R5] \n\
/* 080436c4 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 080436c6 */ BNE branch_080436d0 \n\
/* 080436c8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080436ca */ B branch_080436dc \n\
\n\
.ltorg \n\
 \n\
branch_080436d0: \n\
/* 080436d0 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 080436d2 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 080436d4 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080436d6 */ CMP R3, 0xF @ Compare R3 and 0xF \n\
/* 080436d8 */ BLS branch_080436ba \n\
/* 080436da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080436dc: \n\
/* 080436dc */ POP {R4, R5} \n\
/* 080436de */ POP {R1} \n\
/* 080436e0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
