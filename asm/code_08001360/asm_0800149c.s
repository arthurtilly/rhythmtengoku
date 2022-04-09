asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800149c \n\
/* 0800149c */ PUSH {R4-R6, LR} \n\
/* 0800149e */ LSLS R0, R0, 0x10 \n\
/* 080014a0 */ LSRS R5, R0, 0x10 \n\
/* 080014a2 */ LDR R1, =D_03004afc \n\
/* 080014a4 */ LDR R2, =D_03004ac0 \n\
/* 080014a6 */ LDRH R3, [R2] \n\
/* 080014a8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080014aa */ EORS R0, R3 @ Set R0 to R0 ^ R3 \n\
/* 080014ac */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 080014ae */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080014b0 */ STRH R4, [R1] \n\
/* 080014b2 */ LDR R1, =D_03004b00 \n\
/* 080014b4 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 080014b6 */ STRH R0, [R1] \n\
/* 080014b8 */ STRH R5, [R2] \n\
/* 080014ba */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080014bc */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 080014be */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080014c0 */ BEQ branch_080014e4 \n\
/* 080014c2 */ LDR R0, =D_030053b8 \n\
/* 080014c4 */ STRH R4, [R0] \n\
/* 080014c6 */ LDR R1, =D_030000a2 \n\
/* 080014c8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080014ca */ STRH R0, [R1] \n\
/* 080014cc */ B branch_08001520 \n\
\n\
.ltorg \n\
 \n\
branch_080014e4: \n\
/* 080014e4 */ LDR R4, =D_030053b8 \n\
/* 080014e6 */ STRH R3, [R4] \n\
/* 080014e8 */ LDR R0, =D_030000a0 \n\
/* 080014ea */ LDRH R1, [R0] \n\
/* 080014ec */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080014ee */ CMP R1, R5 @ Check R1 - R5 \n\
/* 080014f0 */ BNE branch_08001518 \n\
/* 080014f2 */ LDR R1, =D_030000a2 \n\
/* 080014f4 */ LDRH R0, [R1] \n\
/* 080014f6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080014f8 */ STRH R0, [R1] \n\
/* 080014fa */ LSLS R0, R0, 0x10 \n\
/* 080014fc */ LSRS R0, R0, 0x10 \n\
/* 080014fe */ CMP R0, 0xE @ Compare R0 and 0xE \n\
/* 08001500 */ BLS branch_0800151c \n\
/* 08001502 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08001504 */ STRH R0, [R1] \n\
/* 08001506 */ STRH R5, [R4] \n\
/* 08001508 */ B branch_0800151c \n\
\n\
.ltorg \n\
 \n\
branch_08001518: \n\
/* 08001518 */ LDR R0, =D_030000a2 \n\
/* 0800151a */ STRH R3, [R0] \n\
 \n\
branch_0800151c: \n\
/* 0800151c */ LDRH R0, [R6] \n\
/* 0800151e */ STRH R0, [R2] \n\
 \n\
branch_08001520: \n\
/* 08001520 */ POP {R4-R6} \n\
/* 08001522 */ POP {R0} \n\
/* 08001524 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
