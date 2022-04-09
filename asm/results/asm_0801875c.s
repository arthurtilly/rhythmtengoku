asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801875c \n\
/* 0801875c */ PUSH {R4-R6, LR} \n\
/* 0801875e */ LDR R5, =D_030046a4 \n\
/* 08018760 */ LDR R1, [R5] \n\
/* 08018762 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08018764 */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 08018766 */ LDRB R0, [R0] \n\
/* 08018768 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801876a */ BNE branch_0801880a \n\
/* 0801876c */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 0801876e */ LSLS R2, R2, 0x3 \n\
/* 08018770 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08018772 */ LDR R0, [R0] \n\
/* 08018774 */ BL func_0800a914 \n\
/* 08018778 */ LDR R1, [R5] \n\
/* 0801877a */ LDR R2, =0x49c \n\
/* 0801877c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801877e */ LDRB R0, [R0] \n\
/* 08018780 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018782 */ BEQ branch_0801880a \n\
/* 08018784 */ SUBS R2, 0x4 @ Subtract 0x4 from R2 \n\
/* 08018786 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08018788 */ LDR R0, [R0] \n\
/* 0801878a */ BL func_0800ac58 \n\
/* 0801878e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08018790 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08018792 */ BNE branch_080187ac \n\
/* 08018794 */ LDR R0, [R5] \n\
/* 08018796 */ LDR R1, =0x49d \n\
/* 08018798 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801879a */ LDRB R0, [R0] \n\
/* 0801879c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801879e */ BEQ branch_080187ac \n\
/* 080187a0 */ BL func_08018698 \n\
/* 080187a4 */ LDR R0, [R5] \n\
/* 080187a6 */ LDR R2, =0x49d \n\
/* 080187a8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080187aa */ STRB R4, [R0] \n\
 \n\
branch_080187ac: \n\
/* 080187ac */ LDR R4, =D_030046a4 \n\
/* 080187ae */ LDR R0, [R4] \n\
/* 080187b0 */ MOVS R5, 0x93 @ Set R5 to 0x93 \n\
/* 080187b2 */ LSLS R5, R5, 0x3 \n\
/* 080187b4 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080187b6 */ LDR R0, [R0] \n\
/* 080187b8 */ BL func_0800ac58 \n\
/* 080187bc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080187be */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080187c0 */ BNE branch_0801880a \n\
/* 080187c2 */ LDR R0, =D_03004afc \n\
/* 080187c4 */ LDRH R1, [R0] \n\
/* 080187c6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080187c8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080187ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080187cc */ BEQ branch_0801880a \n\
/* 080187ce */ LDR R0, [R4] \n\
/* 080187d0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080187d2 */ LDR R0, [R0] \n\
/* 080187d4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080187d6 */ BL func_0800aa4c \n\
/* 080187da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080187dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080187de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080187e0 */ BL func_080185d0 \n\
/* 080187e4 */ LDR R0, =s_f_send_mes_seqData \n\
/* 080187e6 */ BL func_08002634 \n\
/* 080187ea */ LDR R1, [R4] \n\
/* 080187ec */ LDR R2, =0x49e \n\
/* 080187ee */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080187f0 */ LDRH R0, [R0] \n\
/* 080187f2 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 080187f4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080187f6 */ LDRH R1, [R1] \n\
/* 080187f8 */ BL func_08017338 \n\
/* 080187fc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080187fe */ BL func_0800bd04 \n\
/* 08018802 */ LDR R0, [R4] \n\
/* 08018804 */ LDR R1, =0x49c \n\
/* 08018806 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018808 */ STRB R6, [R0] \n\
 \n\
branch_0801880a: \n\
/* 0801880a */ POP {R4-R6} \n\
/* 0801880c */ POP {R0} \n\
/* 0801880e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
