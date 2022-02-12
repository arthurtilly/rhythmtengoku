asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026640 \n\
/* 08026640 */ PUSH {R4-R7, LR} \n\
/* 08026642 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08026644 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08026646 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08026648 */ PUSH {R5-R7} \n\
/* 0802664a */ SUB SP, 0xC \n\
/* 0802664c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802664e */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08026650 */ LDR R1, =D_030055d0 \n\
/* 08026652 */ LSLS R0, R6, 0x2 \n\
/* 08026654 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08026656 */ LSLS R0, R0, 0x2 \n\
/* 08026658 */ MOVS R2, 0xDD @ Set R2 to 0xDD \n\
/* 0802665a */ LSLS R2, R2, 0x2 \n\
/* 0802665c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802665e */ LDR R1, [R1] \n\
/* 08026660 */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 08026662 */ LDR R4, =D_03005380 \n\
/* 08026664 */ LDR R0, [R4] \n\
/* 08026666 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026668 */ LDRSH R1, [R7, R3] \n\
/* 0802666a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802666c */ BL func_0804d770 \n\
/* 08026670 */ LDR R0, [R4] \n\
/* 08026672 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08026674 */ LDRSH R1, [R7, R2] \n\
/* 08026676 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026678 */ BL func_0804d770 \n\
/* 0802667c */ LDR R0, [R4] \n\
/* 0802667e */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08026680 */ LDRSH R1, [R7, R3] \n\
/* 08026682 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026684 */ BL func_0804d770 \n\
/* 08026688 */ LDR R0, [R4] \n\
/* 0802668a */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802668c */ LDRSH R1, [R7, R2] \n\
/* 0802668e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026690 */ BL func_0804d770 \n\
/* 08026694 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08026696 */ CMP R3, 0x4 @ Compare R3 and 0x4 \n\
/* 08026698 */ BLS branch_0802669c \n\
/* 0802669a */ B branch_080268ae \n\
 \n\
branch_0802669c: \n\
/* 0802669c */ LSLS R0, R3, 0x2 \n\
/* 0802669e */ LDR R1, =jtbl_080266b4 \n\
/* 080266a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080266a2 */ LDR R0, [R0] \n\
/* 080266a4 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_080266b4: \n\
.word jump_080266c8 \n\
.word jump_080267c4 \n\
.word jump_080267cc \n\
.word jump_080267fc \n\
.word jump_0802686c \n\
\n\
jump_080266c8: \n\
/* 080266c8 */ LDR R0, =D_089e0ad4 \n\
/* 080266ca */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 080266cc */ LDRB R0, [R0] \n\
/* 080266ce */ BL func_08025228 \n\
/* 080266d2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080266d4 */ LDR R4, =D_03005380 \n\
/* 080266d6 */ LDR R0, [R4] \n\
/* 080266d8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080266da */ LDRSH R1, [R7, R3] \n\
/* 080266dc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080266de */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080266e0 */ STR R3, [SP] \n\
/* 080266e2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080266e4 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080266e6 */ STR R3, [SP, 0x4] \n\
/* 080266e8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080266ea */ STR R5, [SP, 0x8] \n\
/* 080266ec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080266ee */ BL func_0804d8f8 \n\
/* 080266f2 */ LDR R0, =D_089e0ad6 \n\
/* 080266f4 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 080266f6 */ LDRB R0, [R0] \n\
/* 080266f8 */ BL func_08025228 \n\
/* 080266fc */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080266fe */ LDR R0, [R4] \n\
/* 08026700 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08026702 */ LDRSH R1, [R7, R3] \n\
/* 08026704 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026706 */ STR R3, [SP] \n\
/* 08026708 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802670a */ STR R3, [SP, 0x4] \n\
/* 0802670c */ STR R5, [SP, 0x8] \n\
/* 0802670e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026710 */ BL func_0804d8f8 \n\
/* 08026714 */ LDR R0, =D_089e0ad8 \n\
/* 08026716 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08026718 */ LDRB R0, [R0] \n\
/* 0802671a */ BL func_08025228 \n\
/* 0802671e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08026720 */ LDR R0, [R4] \n\
/* 08026722 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08026724 */ LDRSH R1, [R7, R3] \n\
/* 08026726 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026728 */ STR R3, [SP] \n\
/* 0802672a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802672c */ STR R3, [SP, 0x4] \n\
/* 0802672e */ STR R5, [SP, 0x8] \n\
/* 08026730 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026732 */ BL func_0804d8f8 \n\
/* 08026736 */ LDR R0, =D_089e0ada \n\
/* 08026738 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0802673a */ LDRB R0, [R0] \n\
/* 0802673c */ BL func_08025228 \n\
/* 08026740 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08026742 */ LDR R0, [R4] \n\
/* 08026744 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08026746 */ LDRSH R1, [R7, R3] \n\
/* 08026748 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802674a */ STR R3, [SP] \n\
/* 0802674c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802674e */ STR R3, [SP, 0x4] \n\
/* 08026750 */ STR R5, [SP, 0x8] \n\
/* 08026752 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026754 */ BL func_0804d8f8 \n\
/* 08026758 */ LDR R0, =D_089e0adc \n\
/* 0802675a */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0802675c */ LDRB R0, [R0] \n\
/* 0802675e */ BL func_08025228 \n\
/* 08026762 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08026764 */ LDR R0, [R4] \n\
/* 08026766 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08026768 */ LDRSH R1, [R7, R3] \n\
/* 0802676a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802676c */ STR R3, [SP] \n\
/* 0802676e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08026770 */ STR R3, [SP, 0x4] \n\
/* 08026772 */ STR R5, [SP, 0x8] \n\
/* 08026774 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026776 */ BL func_0804d8f8 \n\
/* 0802677a */ LDR R0, [R4] \n\
/* 0802677c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802677e */ LDRSH R1, [R7, R2] \n\
/* 08026780 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08026782 */ BL func_0804d770 \n\
/* 08026786 */ LDR R0, [R4] \n\
/* 08026788 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0802678a */ LDRSH R1, [R7, R3] \n\
/* 0802678c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802678e */ BL func_0804d770 \n\
/* 08026792 */ LDR R0, [R4] \n\
/* 08026794 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08026796 */ LDRSH R1, [R7, R2] \n\
/* 08026798 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802679a */ BL func_0804d770 \n\
/* 0802679e */ LDR R0, [R4] \n\
/* 080267a0 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 080267a2 */ LDRSH R1, [R7, R3] \n\
/* 080267a4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080267a6 */ BL func_0804d770 \n\
/* 080267aa */ B branch_080268ae \n\
\n\
.ltorg \n\
\n\
jump_080267c4: \n\
/* 080267c4 */ LDR R0, =D_089e0ade \n\
/* 080267c6 */ B branch_080267ce \n\
\n\
.ltorg \n\
\n\
jump_080267cc: \n\
/* 080267cc */ LDR R0, =D_089e0ae0 \n\
 \n\
branch_080267ce: \n\
/* 080267ce */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 080267d0 */ LDRB R0, [R0] \n\
/* 080267d2 */ BL func_08025228 \n\
/* 080267d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080267d8 */ LDR R0, =D_03005380 \n\
/* 080267da */ LDR R0, [R0] \n\
/* 080267dc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080267de */ LDRSH R1, [R7, R3] \n\
/* 080267e0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080267e2 */ STR R3, [SP] \n\
/* 080267e4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080267e6 */ STR R3, [SP, 0x4] \n\
/* 080267e8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080267ea */ STR R3, [SP, 0x8] \n\
/* 080267ec */ BL func_0804d8f8 \n\
/* 080267f0 */ B branch_080268ae \n\
\n\
.ltorg \n\
\n\
jump_080267fc: \n\
/* 080267fc */ LDR R0, =D_089e0ae2 \n\
/* 080267fe */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08026800 */ LDRB R0, [R0] \n\
/* 08026802 */ BL func_08025228 \n\
/* 08026806 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08026808 */ LDR R4, =D_03005380 \n\
/* 0802680a */ LDR R0, [R4] \n\
/* 0802680c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0802680e */ LDRSH R1, [R7, R3] \n\
/* 08026810 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026812 */ STR R3, [SP] \n\
/* 08026814 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08026816 */ STR R3, [SP, 0x4] \n\
/* 08026818 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802681a */ STR R3, [SP, 0x8] \n\
/* 0802681c */ BL func_0804d8f8 \n\
/* 08026820 */ LDR R0, [R4] \n\
/* 08026822 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08026824 */ LDRSH R1, [R7, R2] \n\
/* 08026826 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08026828 */ BL func_0804ddb0 \n\
/* 0802682c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802682e */ LDR R0, [R4] \n\
/* 08026830 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08026832 */ LDRSH R1, [R7, R3] \n\
/* 08026834 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08026836 */ BL func_0804ddb0 \n\
/* 0802683a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802683c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0802683e */ BL func_0800c3a4 \n\
/* 08026842 */ LSLS R0, R0, 0x10 \n\
/* 08026844 */ LSRS R0, R0, 0x10 \n\
/* 08026846 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08026848 */ LDRSH R1, [R7, R2] \n\
/* 0802684a */ LSLS R5, R5, 0x10 \n\
/* 0802684c */ ASRS R5, R5, 0x10 \n\
/* 0802684e */ LSLS R4, R4, 0x10 \n\
/* 08026850 */ ASRS R4, R4, 0x10 \n\
/* 08026852 */ STR R0, [SP] \n\
/* 08026854 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08026856 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08026858 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802685a */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0802685c */ BL func_0800e6ec \n\
/* 08026860 */ B branch_080268ae \n\
\n\
.ltorg \n\
\n\
jump_0802686c: \n\
/* 0802686c */ LDR R0, =D_089e0ade \n\
/* 0802686e */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08026870 */ LDRB R0, [R0] \n\
/* 08026872 */ BL func_08025228 \n\
/* 08026876 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08026878 */ LDR R4, =D_03005380 \n\
/* 0802687a */ LDR R0, [R4] \n\
/* 0802687c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0802687e */ LDRSH R1, [R7, R3] \n\
/* 08026880 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026882 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08026884 */ STR R3, [SP] \n\
/* 08026886 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026888 */ STR R3, [SP, 0x4] \n\
/* 0802688a */ STR R3, [SP, 0x8] \n\
/* 0802688c */ BL func_0804d8f8 \n\
/* 08026890 */ LDR R0, [R4] \n\
/* 08026892 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08026894 */ LDRSH R1, [R7, R2] \n\
/* 08026896 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08026898 */ BL func_0804ddb0 \n\
/* 0802689c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802689e */ LDR R0, [R4] \n\
/* 080268a0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080268a2 */ LDRSH R1, [R7, R3] \n\
/* 080268a4 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 080268a6 */ LSLS R2, R2, 0x18 \n\
/* 080268a8 */ ASRS R2, R2, 0x18 \n\
/* 080268aa */ BL func_0804cebc \n\
 \n\
branch_080268ae: \n\
/* 080268ae */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080268b0 */ STRB R0, [R7, 0xE] \n\
/* 080268b2 */ ADD SP, 0xC \n\
/* 080268b4 */ POP {R3-R5} \n\
/* 080268b6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080268b8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080268ba */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080268bc */ POP {R4-R7} \n\
/* 080268be */ POP {R0} \n\
/* 080268c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
