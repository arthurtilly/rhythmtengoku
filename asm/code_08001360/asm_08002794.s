asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002794 \n\
/* 08002794 */ PUSH {R4-R7, LR} \n\
/* 08002796 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08002798 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0800279a */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800279c */ BEQ branch_080027ce \n\
/* 0800279e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080027a0 */ LDR R0, =D_08aa445c \n\
/* 080027a2 */ LDRB R0, [R0] \n\
/* 080027a4 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080027a6 */ BCS branch_080027ce \n\
/* 080027a8 */ LDR R5, =D_08aa4460 \n\
 \n\
branch_080027aa: \n\
/* 080027aa */ LDR R1, [R5] \n\
/* 080027ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080027ae */ LDR R0, [R1, 0xC] \n\
/* 080027b0 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 080027b2 */ BNE branch_080027b6 \n\
/* 080027b4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_080027b6: \n\
/* 080027b6 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080027b8 */ BEQ branch_080027c2 \n\
/* 080027ba */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080027bc */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080027be */ BL pause_soundplayer \n\
 \n\
branch_080027c2: \n\
/* 080027c2 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 080027c4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080027c6 */ LDR R0, =D_08aa445c \n\
/* 080027c8 */ LDRB R0, [R0] \n\
/* 080027ca */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080027cc */ BCC branch_080027aa \n\
 \n\
branch_080027ce: \n\
/* 080027ce */ POP {R4-R7} \n\
/* 080027d0 */ POP {R0} \n\
/* 080027d2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
