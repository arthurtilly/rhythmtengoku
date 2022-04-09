asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802981c \n\
/* 0802981c */ PUSH {R4-R7, LR} \n\
/* 0802981e */ LDR R2, =D_089e29c8 \n\
/* 08029820 */ LDR R3, =D_030055d0 \n\
/* 08029822 */ LDR R1, [R3] \n\
/* 08029824 */ MOVS R7, 0xE2 @ Set R7 to 0xE2 \n\
/* 08029826 */ LSLS R7, R7, 0x2 \n\
/* 08029828 */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 0802982a */ LDRB R0, [R0] \n\
/* 0802982c */ LSLS R0, R0, 0x2 \n\
/* 0802982e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029830 */ LDR R7, [R0] \n\
/* 08029832 */ LDR R0, =0x000003cd \n\
/* 08029834 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08029836 */ LDRB R0, [R1] \n\
/* 08029838 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802983a */ BEQ branch_0802986c \n\
/* 0802983c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802983e */ BGT branch_08029854 \n\
/* 08029840 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029842 */ BEQ branch_0802985e \n\
/* 08029844 */ B branch_080298a8 \n\
\n\
.ltorg \n\
 \n\
branch_08029854: \n\
/* 08029854 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08029856 */ BEQ branch_08029884 \n\
/* 08029858 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802985a */ BEQ branch_0802989c \n\
/* 0802985c */ B branch_080298a8 \n\
 \n\
branch_0802985e: \n\
/* 0802985e */ LDR R0, =D_03004ac0 \n\
/* 08029860 */ LDRH R4, [R0] \n\
/* 08029862 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08029864 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08029866 */ B branch_080298a8 \n\
\n\
.ltorg \n\
 \n\
branch_0802986c: \n\
/* 0802986c */ LDR R0, =D_03004ac0 \n\
/* 0802986e */ LDRH R4, [R0] \n\
/* 08029870 */ LDR R0, =D_03004afc \n\
/* 08029872 */ LDRH R5, [R0] \n\
/* 08029874 */ LDR R0, =0x03004b00 \n\
/* 08029876 */ B branch_080298a6 \n\
\n\
.ltorg \n\
 \n\
branch_08029884: \n\
/* 08029884 */ LDR R0, =D_03004ac0 \n\
/* 08029886 */ LDRH R4, [R0] \n\
/* 08029888 */ LDR R0, =D_03004afc \n\
/* 0802988a */ LDRH R5, [R0] \n\
/* 0802988c */ LDR R0, =D_03004b00 \n\
/* 0802988e */ B branch_080298a6 \n\
\n\
.ltorg \n\
 \n\
branch_0802989c: \n\
/* 0802989c */ LDR R0, =D_030046b8 \n\
/* 0802989e */ LDRH R4, [R0] \n\
/* 080298a0 */ LDR R0, =D_03005378 \n\
/* 080298a2 */ LDRH R5, [R0] \n\
/* 080298a4 */ LDR R0, =D_030046b4 \n\
 \n\
branch_080298a6: \n\
/* 080298a6 */ LDRH R6, [R0] \n\
 \n\
branch_080298a8: \n\
/* 080298a8 */ LDR R0, [R3] \n\
/* 080298aa */ LDR R1, =0x000003c2 \n\
/* 080298ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080298ae */ LDRH R0, [R0] \n\
/* 080298b0 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080298b2 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 080298b4 */ ANDS R6, R0 @ Set R6 to R6 & R0 \n\
/* 080298b6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080298b8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080298ba */ BL func_0802ad20 \n\
/* 080298be */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080298c0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080298c2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 080298c4 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080298c6 */ BL func_0802afb0 \n\
/* 080298ca */ POP {R4-R7} \n\
/* 080298cc */ POP {R0} \n\
/* 080298ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
