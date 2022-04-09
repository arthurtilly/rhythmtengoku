asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080436e4 \n\
/* 080436e4 */ PUSH {R4-R7, LR} \n\
/* 080436e6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080436e8 */ PUSH {R7} \n\
/* 080436ea */ SUB SP, 0x1C \n\
/* 080436ec */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080436ee */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080436f0 */ LDR R0, =D_030055d0 \n\
/* 080436f2 */ LDR R3, [R0] \n\
/* 080436f4 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 080436f6 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080436f8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080436fa */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080436fc */ MOVS R1, 0x94 @ Set R1 to 0x94 \n\
/* 080436fe */ LSLS R1, R1, 0x1 \n\
/* 08043700 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08043702 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043704 */ LDRSB R1, [R0, R1] \n\
/* 08043706 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08043708 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804370a */ LSLS R1, R1, 0x6 \n\
/* 0804370c */ LDRH R2, [R5] \n\
/* 0804370e */ LDR R0, =0xfffff83f \n\
/* 08043710 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08043712 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08043714 */ STRH R0, [R5] \n\
/* 08043716 */ LDR R1, =0x129 \n\
/* 08043718 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0804371a */ LDRB R0, [R0] \n\
/* 0804371c */ STRB R0, [R5, 0x4] \n\
/* 0804371e */ ADDS R1, 0x3 @ Add 0x3 to R1 \n\
/* 08043720 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08043722 */ LDRB R0, [R0] \n\
/* 08043724 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08043726 */ ADDS R1, 0x2E @ Add 0x2E to R1 \n\
/* 08043728 */ STRB R0, [R1] \n\
/* 0804372a */ LDR R1, =0x12d \n\
/* 0804372c */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0804372e */ LDRB R0, [R0] \n\
/* 08043730 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08043732 */ ADDS R1, 0x2F @ Add 0x2F to R1 \n\
/* 08043734 */ STRB R0, [R1] \n\
/* 08043736 */ LDRH R0, [R5] \n\
/* 08043738 */ LSLS R0, R0, 0x15 \n\
/* 0804373a */ LSRS R0, R0, 0x1B \n\
/* 0804373c */ LSLS R1, R0, 0x2 \n\
/* 0804373e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08043740 */ LSLS R1, R1, 0x2 \n\
/* 08043742 */ LDR R0, =D_089e9164 \n\
/* 08043744 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08043746 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08043748 */ LDRSH R0, [R4, R3] \n\
/* 0804374a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804374c */ BEQ branch_080437a0 \n\
/* 0804374e */ LDR R0, [R4] \n\
/* 08043750 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08043752 */ LDRSH R2, [R4, R1] \n\
/* 08043754 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08043756 */ LDRSH R3, [R4, R1] \n\
/* 08043758 */ MOV R12, R3 @ Set R12 to R3 \n\
/* 0804375a */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0804375c */ LSLS R1, R1, 0x8 \n\
/* 0804375e */ STR R1, [SP] \n\
/* 08043760 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08043762 */ LSLS R1, R1, 0x1 \n\
/* 08043764 */ STR R1, [SP, 0x4] \n\
/* 08043766 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08043768 */ LDRSH R1, [R4, R3] \n\
/* 0804376a */ STR R1, [SP, 0x8] \n\
/* 0804376c */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0804376e */ LDRSB R1, [R4, R1] \n\
/* 08043770 */ STR R1, [SP, 0xC] \n\
/* 08043772 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 08043774 */ LDRSB R1, [R4, R1] \n\
/* 08043776 */ STR R1, [SP, 0x10] \n\
/* 08043778 */ LDRH R1, [R4, 0xA] \n\
/* 0804377a */ STR R1, [SP, 0x14] \n\
/* 0804377c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804377e */ STR R1, [SP, 0x18] \n\
/* 08043780 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043782 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08043784 */ BL func_0800fa6c \n\
/* 08043788 */ B branch_080437c6 \n\
\n\
.ltorg \n\
 \n\
branch_080437a0: \n\
/* 080437a0 */ LDR R0, [R4] \n\
/* 080437a2 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 080437a4 */ LDRSH R2, [R4, R1] \n\
/* 080437a6 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 080437a8 */ LDRSH R3, [R4, R1] \n\
/* 080437aa */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 080437ac */ LSLS R1, R1, 0x8 \n\
/* 080437ae */ STR R1, [SP] \n\
/* 080437b0 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 080437b2 */ LDRSB R1, [R4, R1] \n\
/* 080437b4 */ STR R1, [SP, 0x4] \n\
/* 080437b6 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 080437b8 */ LDRSB R1, [R4, R1] \n\
/* 080437ba */ STR R1, [SP, 0x8] \n\
/* 080437bc */ LDRH R1, [R4, 0xA] \n\
/* 080437be */ STR R1, [SP, 0xC] \n\
/* 080437c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080437c2 */ BL func_0800fba0 \n\
 \n\
branch_080437c6: \n\
/* 080437c6 */ STR R0, [R5, 0x8] \n\
/* 080437c8 */ LDR R0, [R5, 0x8] \n\
/* 080437ca */ LDR R1, [R4, 0xC] \n\
/* 080437cc */ BL func_080101f8 \n\
/* 080437d0 */ LDR R0, [R5, 0x8] \n\
/* 080437d2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080437d4 */ ADDS R1, 0x2F @ Add 0x2F to R1 \n\
/* 080437d6 */ LDRB R1, [R1] \n\
/* 080437d8 */ BL func_080100a8 \n\
/* 080437dc */ LDRH R0, [R5] \n\
/* 080437de */ LSLS R0, R0, 0x15 \n\
/* 080437e0 */ LSRS R0, R0, 0x1B \n\
/* 080437e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080437e4 */ BNE branch_080437f0 \n\
/* 080437e6 */ LDRB R0, [R5, 0x4] \n\
/* 080437e8 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080437ea */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080437ec */ STRB R1, [R0] \n\
/* 080437ee */ B branch_08043804 \n\
 \n\
branch_080437f0: \n\
/* 080437f0 */ LDRB R0, [R5, 0x4] \n\
/* 080437f2 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080437f4 */ LDRB R0, [R0] \n\
/* 080437f6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080437f8 */ BNE branch_08043804 \n\
/* 080437fa */ LDR R0, [R5, 0x8] \n\
/* 080437fc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080437fe */ BL func_08010040 \n\
/* 08043802 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
 \n\
branch_08043804: \n\
/* 08043804 */ LDRB R1, [R5] \n\
/* 08043806 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 08043808 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804380a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804380c */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0804380e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08043810 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08043812 */ STRB R0, [R5] \n\
/* 08043814 */ LDRH R0, [R5] \n\
/* 08043816 */ LSLS R0, R0, 0x15 \n\
/* 08043818 */ LSRS R0, R0, 0x1B \n\
/* 0804381a */ CMP R0, 0xD @ Compare R0 and 0xD \n\
/* 0804381c */ BHI branch_080438b6 \n\
/* 0804381e */ LSLS R0, R0, 0x2 \n\
/* 08043820 */ LDR R1, =jtbl_0804382c \n\
/* 08043822 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08043824 */ LDR R0, [R0] \n\
/* 08043826 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804382c: \n\
.word branch_080438b6 \n\
.word jump_08043864 \n\
.word jump_08043884 \n\
.word jump_08043874 \n\
.word jump_08043864 \n\
.word jump_0804388e \n\
.word jump_08043874 \n\
.word jump_08043864 \n\
.word jump_08043898 \n\
.word jump_08043874 \n\
.word jump_08043864 \n\
.word jump_080438a2 \n\
.word jump_08043874 \n\
.word jump_080438ac \n\
jump_08043864: \n\
/* 08043864 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08043866 */ BNE branch_080438b6 \n\
/* 08043868 */ LDR R0, =s_f_virus_uhihi_seqData \n\
/* 0804386a */ BL func_08002634 \n\
/* 0804386e */ B branch_080438b6 \n\
\n\
.ltorg \n\
jump_08043874: \n\
/* 08043874 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08043876 */ BNE branch_080438b6 \n\
/* 08043878 */ LDR R0, =s_virus_dash_seqData \n\
/* 0804387a */ BL func_08002634 \n\
/* 0804387e */ B branch_080438b6 \n\
\n\
.ltorg \n\
jump_08043884: \n\
/* 08043884 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08043886 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08043888 */ BL func_080180b0 \n\
/* 0804388c */ B branch_080438b6 \n\
jump_0804388e: \n\
/* 0804388e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08043890 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 08043892 */ BL func_080180b0 \n\
/* 08043896 */ B branch_080438b6 \n\
jump_08043898: \n\
/* 08043898 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804389a */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0804389c */ BL func_080180b0 \n\
/* 080438a0 */ B branch_080438b6 \n\
jump_080438a2: \n\
/* 080438a2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080438a4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080438a6 */ BL func_080180b0 \n\
/* 080438aa */ B branch_080438b6 \n\
jump_080438ac: \n\
/* 080438ac */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080438ae */ BNE branch_080438b6 \n\
/* 080438b0 */ LDR R0, =s_f_virus_in_seqData \n\
/* 080438b2 */ BL func_08002634 \n\
 \n\
branch_080438b6: \n\
/* 080438b6 */ ADD SP, 0x1C \n\
/* 080438b8 */ POP {R3} \n\
/* 080438ba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080438bc */ POP {R4-R7} \n\
/* 080438be */ POP {R0} \n\
/* 080438c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
