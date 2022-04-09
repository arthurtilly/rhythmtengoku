asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801aaa0 \n\
/* 0801aaa0 */ PUSH {R4-R7, LR} \n\
/* 0801aaa2 */ SUB SP, 0xC \n\
/* 0801aaa4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801aaa6 */ LDR R7, =D_030046a4 \n\
/* 0801aaa8 */ LDR R2, [R7] \n\
/* 0801aaaa */ MOVS R1, 0x94 @ Set R1 to 0x94 \n\
/* 0801aaac */ LSLS R1, R1, 0x3 \n\
/* 0801aaae */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0801aab0 */ LDRB R0, [R0] \n\
/* 0801aab2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801aab4 */ BNE branch_0801aab8 \n\
/* 0801aab6 */ B branch_0801ac22 \n\
 \n\
branch_0801aab8: \n\
/* 0801aab8 */ LDR R3, =0x4a1 \n\
/* 0801aaba */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0801aabc */ LDRB R0, [R0] \n\
/* 0801aabe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801aac0 */ BEQ branch_0801aad8 \n\
/* 0801aac2 */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 0801aac4 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0801aac6 */ LDR R0, [R0] \n\
/* 0801aac8 */ BL func_0800a914 \n\
/* 0801aacc */ B branch_0801ac22 \n\
\n\
.ltorg \n\
 \n\
branch_0801aad8: \n\
/* 0801aad8 */ LDR R6, =0x4a2 \n\
/* 0801aada */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 0801aadc */ LDRB R4, [R0] \n\
/* 0801aade */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801aae0 */ BEQ branch_0801ab14 \n\
/* 0801aae2 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801aae4 */ BGT branch_0801aaf0 \n\
/* 0801aae6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801aae8 */ BEQ branch_0801aaf6 \n\
/* 0801aaea */ B branch_0801ac00 \n\
\n\
.ltorg \n\
 \n\
branch_0801aaf0: \n\
/* 0801aaf0 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801aaf2 */ BEQ branch_0801ab8c \n\
/* 0801aaf4 */ B branch_0801ac00 \n\
 \n\
branch_0801aaf6: \n\
/* 0801aaf6 */ LDR R0, =D_03004afc \n\
/* 0801aaf8 */ LDRH R1, [R0] \n\
/* 0801aafa */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801aafc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801aafe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ab00 */ BNE branch_0801ab04 \n\
/* 0801ab02 */ B branch_0801ac00 \n\
 \n\
branch_0801ab04: \n\
/* 0801ab04 */ LDR R3, =0x4ac \n\
/* 0801ab06 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0801ab08 */ B branch_0801ab62 \n\
\n\
.ltorg \n\
 \n\
branch_0801ab14: \n\
/* 0801ab14 */ LDR R0, =D_03004afc \n\
/* 0801ab16 */ LDRH R1, [R0] \n\
/* 0801ab18 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0801ab1a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ab1c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ab1e */ BEQ branch_0801ab58 \n\
/* 0801ab20 */ LDR R1, =s_menu_cursor1_seqData \n\
/* 0801ab22 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ab24 */ BL func_0800267c \n\
/* 0801ab28 */ LDR R0, [R7] \n\
/* 0801ab2a */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801ab2c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801ab2e */ STRB R1, [R0] \n\
/* 0801ab30 */ LDR R0, =D_03005380 \n\
/* 0801ab32 */ LDR R0, [R0] \n\
/* 0801ab34 */ LDR R1, [R7] \n\
/* 0801ab36 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801ab38 */ LSLS R2, R2, 0x3 \n\
/* 0801ab3a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ab3c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801ab3e */ LDRSH R1, [R1, R3] \n\
/* 0801ab40 */ LDR R2, =D_0890c540 \n\
/* 0801ab42 */ STR R4, [SP] \n\
/* 0801ab44 */ B branch_0801abbc \n\
\n\
.ltorg \n\
 \n\
branch_0801ab58: \n\
/* 0801ab58 */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0801ab5a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801ab5c */ BEQ branch_0801ab74 \n\
/* 0801ab5e */ LDR R1, =0x4ac \n\
/* 0801ab60 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
 \n\
branch_0801ab62: \n\
/* 0801ab62 */ LDR R1, [R0] \n\
/* 0801ab64 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ab66 */ BL func_0800267c \n\
/* 0801ab6a */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0801ab6c */ B branch_0801ac04 \n\
\n\
.ltorg \n\
 \n\
branch_0801ab74: \n\
/* 0801ab74 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ab76 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ab78 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ab7a */ BEQ branch_0801ac00 \n\
/* 0801ab7c */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801ab7e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ab80 */ BL func_0800267c \n\
/* 0801ab84 */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
/* 0801ab86 */ B branch_0801ac04 \n\
\n\
.ltorg \n\
 \n\
branch_0801ab8c: \n\
/* 0801ab8c */ LDR R0, =D_03004afc \n\
/* 0801ab8e */ LDRH R1, [R0] \n\
/* 0801ab90 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801ab92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ab94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ab96 */ BEQ branch_0801abd8 \n\
/* 0801ab98 */ LDR R1, =s_menu_cursor1_seqData \n\
/* 0801ab9a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ab9c */ BL func_0800267c \n\
/* 0801aba0 */ LDR R0, [R7] \n\
/* 0801aba2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801aba4 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801aba6 */ STRB R3, [R0] \n\
/* 0801aba8 */ LDR R0, =D_03005380 \n\
/* 0801abaa */ LDR R0, [R0] \n\
/* 0801abac */ LDR R1, [R7] \n\
/* 0801abae */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801abb0 */ LSLS R2, R2, 0x3 \n\
/* 0801abb2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801abb4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801abb6 */ LDRSH R1, [R1, R2] \n\
/* 0801abb8 */ LDR R2, =D_0890c518 \n\
/* 0801abba */ STR R3, [SP] \n\
 \n\
branch_0801abbc: \n\
/* 0801abbc */ STR R5, [SP, 0x4] \n\
/* 0801abbe */ STR R5, [SP, 0x8] \n\
/* 0801abc0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801abc2 */ BL func_0804d8f8 \n\
/* 0801abc6 */ B branch_0801ac00 \n\
\n\
.ltorg \n\
 \n\
branch_0801abd8: \n\
/* 0801abd8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801abda */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801abdc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801abde */ BEQ branch_0801abf0 \n\
/* 0801abe0 */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801abe2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801abe4 */ BL func_0800267c \n\
/* 0801abe8 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0801abea */ B branch_0801ac04 \n\
\n\
.ltorg \n\
 \n\
branch_0801abf0: \n\
/* 0801abf0 */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0801abf2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801abf4 */ BEQ branch_0801ac00 \n\
/* 0801abf6 */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801abf8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801abfa */ BL func_0800267c \n\
/* 0801abfe */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
 \n\
branch_0801ac00: \n\
/* 0801ac00 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801ac02 */ BEQ branch_0801ac22 \n\
 \n\
branch_0801ac04: \n\
/* 0801ac04 */ BL func_0801ad44 \n\
/* 0801ac08 */ LDR R0, =D_030046a4 \n\
/* 0801ac0a */ LDR R1, [R0] \n\
/* 0801ac0c */ LDR R3, =0x4a4 \n\
/* 0801ac0e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0801ac10 */ LDR R2, [R0] \n\
/* 0801ac12 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801ac14 */ BEQ branch_0801ac22 \n\
/* 0801ac16 */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 0801ac18 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0801ac1a */ LDR R1, [R0] \n\
/* 0801ac1c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801ac1e */ BL _call_via_r2 \n\
 \n\
branch_0801ac22: \n\
/* 0801ac22 */ ADD SP, 0xC \n\
/* 0801ac24 */ POP {R4-R7} \n\
/* 0801ac26 */ POP {R0} \n\
/* 0801ac28 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
