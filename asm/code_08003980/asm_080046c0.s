asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080046c0 \n\
/* 080046c0 */ PUSH {R4-R7, LR} \n\
/* 080046c2 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080046c4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080046c6 */ ADDS R6, R7, 0x0 @ Set R6 to R7 + 0x0 \n\
/* 080046c8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080046ca */ B branch_08004700 \n\
 \n\
branch_080046cc: \n\
/* 080046cc */ LDRB R0, [R4] \n\
/* 080046ce */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 080046d0 */ BEQ branch_080046fe \n\
/* 080046d2 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 080046d4 */ BNE branch_080046ea \n\
/* 080046d6 */ LDRB R0, [R4, 0x1] \n\
/* 080046d8 */ BL func_0800467c \n\
/* 080046dc */ LSLS R0, R0, 0x18 \n\
/* 080046de */ LSRS R0, R0, 0x18 \n\
/* 080046e0 */ LSLS R1, R0, 0x3 \n\
/* 080046e2 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080046e4 */ LSLS R1, R1, 0x3 \n\
/* 080046e6 */ ADDS R6, R7, R1 @ Set R6 to R7 + R1 \n\
/* 080046e8 */ B branch_080046fe \n\
 \n\
branch_080046ea: \n\
/* 080046ea */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080046ec */ BEQ branch_080046f4 \n\
/* 080046ee */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080046f0 */ LDRSB R0, [R6, R0] \n\
/* 080046f2 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
 \n\
branch_080046f4: \n\
/* 080046f4 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080046f6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080046f8 */ BL func_08004628 \n\
/* 080046fc */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
 \n\
branch_080046fe: \n\
/* 080046fe */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
 \n\
branch_08004700: \n\
/* 08004700 */ LDRB R0, [R4] \n\
/* 08004702 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004704 */ BNE branch_080046cc \n\
/* 08004706 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08004708 */ BGE branch_0800470c \n\
/* 0800470a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0800470c: \n\
/* 0800470c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800470e */ POP {R4-R7} \n\
/* 08004710 */ POP {R1} \n\
/* 08004712 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
