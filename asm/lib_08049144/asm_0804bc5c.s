asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804bc5c \n\
/* 0804bc5c */ PUSH {R4-R6, LR} \n\
/* 0804bc5e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804bc60 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804bc62 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804bc64 */ LDR R1, =D_03005b78 \n\
/* 0804bc66 */ LDRH R0, [R1] \n\
/* 0804bc68 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804bc6a */ CMP R3, 0x13 @ Compare R3 and 0x13 \n\
/* 0804bc6c */ BHI branch_0804bca8 \n\
/* 0804bc6e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804bc70 */ STRH R0, [R1] \n\
/* 0804bc72 */ LSLS R3, R3, 0x2 \n\
/* 0804bc74 */ LDR R0, =D_03005650 \n\
/* 0804bc76 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0804bc78 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804bc7a */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0804bc7c */ LDRB R1, [R3] \n\
/* 0804bc7e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804bc80 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804bc82 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804bc84 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0804bc86 */ STRB R0, [R3] \n\
/* 0804bc88 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804bc8a */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 0804bc8c */ LSLS R2, R5, 0x4 \n\
/* 0804bc8e */ LDRH R1, [R3] \n\
/* 0804bc90 */ LDR R0, =0xfffff80f \n\
/* 0804bc92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804bc94 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804bc96 */ STRH R0, [R3] \n\
/* 0804bc98 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0804bc9a */ ANDS R1, R6 @ Set R1 to R1 & R6 \n\
/* 0804bc9c */ LSLS R1, R1, 0xB \n\
/* 0804bc9e */ LDR R0, [R3] \n\
/* 0804bca0 */ LDR R2, =0xfffc07ff \n\
/* 0804bca2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804bca4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804bca6 */ STR R0, [R3] \n\
 \n\
branch_0804bca8: \n\
/* 0804bca8 */ POP {R4-R6} \n\
/* 0804bcaa */ POP {R0} \n\
/* 0804bcac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
