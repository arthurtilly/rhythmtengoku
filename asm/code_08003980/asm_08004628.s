asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004628 \n\
/* 08004628 */ PUSH {R4-R6, LR} \n\
/* 0800462a */ SUB SP, 0x4 \n\
/* 0800462c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800462e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08004630 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004632 */ BL func_0800496c \n\
/* 08004636 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004638 */ BEQ branch_0800463e \n\
/* 0800463a */ LDRB R0, [R5] \n\
/* 0800463c */ B branch_08004674 \n\
 \n\
branch_0800463e: \n\
/* 0800463e */ LDRB R0, [R4] \n\
/* 08004640 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08004642 */ BEQ branch_08004648 \n\
/* 08004644 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 08004646 */ BNE branch_0800464c \n\
 \n\
branch_08004648: \n\
/* 08004648 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800464a */ B branch_08004674 \n\
 \n\
branch_0800464c: \n\
/* 0800464c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800464e */ BL func_080049a0 \n\
/* 08004652 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08004654 */ BNE branch_08004662 \n\
/* 08004656 */ MOVS R6, 0x8 @ Set R6 to 0x8 \n\
/* 08004658 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 0800465a */ BL func_080049dc \n\
/* 0800465e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004660 */ B branch_08004664 \n\
 \n\
branch_08004662: \n\
/* 08004662 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_08004664: \n\
/* 08004664 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08004666 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08004668 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800466a */ MOV R3, SP @ Set R3 to SP \n\
/* 0800466c */ BL func_080043c8 \n\
/* 08004670 */ LDR R0, [SP] \n\
/* 08004672 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
 \n\
branch_08004674: \n\
/* 08004674 */ ADD SP, 0x4 \n\
/* 08004676 */ POP {R4-R6} \n\
/* 08004678 */ POP {R1} \n\
/* 0800467a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
