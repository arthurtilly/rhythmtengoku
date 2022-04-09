asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f684 \n\
/* 0801f684 */ PUSH {R4, R5, LR} \n\
/* 0801f686 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801f688 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801f68a */ BNE branch_0801f6b4 \n\
/* 0801f68c */ LDR R4, =D_030055d0 \n\
/* 0801f68e */ LDR R0, [R4] \n\
/* 0801f690 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0801f692 */ LDR R0, [R0] \n\
/* 0801f694 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801f696 */ BEQ branch_0801f6c2 \n\
/* 0801f698 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f69a */ BL func_08002920 \n\
/* 0801f69e */ LDR R0, [R4] \n\
/* 0801f6a0 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0801f6a2 */ LDR R0, [R0] \n\
/* 0801f6a4 */ BL func_08002828 \n\
/* 0801f6a8 */ LDR R0, [R4] \n\
/* 0801f6aa */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0801f6ac */ STR R5, [R0] \n\
/* 0801f6ae */ B branch_0801f6c2 \n\
\n\
.ltorg \n\
 \n\
branch_0801f6b4: \n\
/* 0801f6b4 */ LDR R0, =s_ghost_rain_seqData \n\
/* 0801f6b6 */ BL func_08002634 \n\
/* 0801f6ba */ LDR R1, =D_030055d0 \n\
/* 0801f6bc */ LDR R1, [R1] \n\
/* 0801f6be */ ADDS R1, 0x84 @ Add 0x84 to R1 \n\
/* 0801f6c0 */ STR R0, [R1] \n\
 \n\
branch_0801f6c2: \n\
/* 0801f6c2 */ POP {R4, R5} \n\
/* 0801f6c4 */ POP {R0} \n\
/* 0801f6c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
