asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036630 \n\
/* 08036630 */ PUSH {R4-R7, LR} \n\
/* 08036632 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08036634 */ PUSH {R7} \n\
/* 08036636 */ SUB SP, 0x4 \n\
/* 08036638 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803663a */ LDR R4, [R6, 0x10] \n\
/* 0803663c */ LDR R5, [R6, 0x14] \n\
/* 0803663e */ LDR R0, =D_03005380 \n\
/* 08036640 */ LDR R0, [R0] \n\
/* 08036642 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036644 */ LDRSH R1, [R6, R2] \n\
/* 08036646 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08036648 */ BL func_0804ddb0 \n\
/* 0803664c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803664e */ LDRB R0, [R6, 0x1] \n\
/* 08036650 */ LSLS R0, R0, 0x1F \n\
/* 08036652 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036654 */ BNE branch_08036664 \n\
/* 08036656 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08036658 */ BL func_08036604 \n\
/* 0803665c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803665e */ B branch_08036666 \n\
\n\
.ltorg \n\
 \n\
branch_08036664: \n\
/* 08036664 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
 \n\
branch_08036666: \n\
/* 08036666 */ STR R1, [R6, 0x14] \n\
/* 08036668 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803666a */ BL func_080365c8 \n\
/* 0803666e */ STR R0, [R6, 0x10] \n\
/* 08036670 */ LDR R1, [R6, 0x14] \n\
/* 08036672 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08036674 */ BL func_0803661c \n\
/* 08036678 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803667a */ LDR R0, [R6, 0x10] \n\
/* 0803667c */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0803667e */ BGE branch_08036698 \n\
/* 08036680 */ STR R4, [R6, 0x10] \n\
/* 08036682 */ LSLS R0, R4, 0x8 \n\
/* 08036684 */ STR R0, [R6, 0x28] \n\
/* 08036686 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036688 */ STR R0, [R6, 0x2C] \n\
/* 0803668a */ LDRB R1, [R6] \n\
/* 0803668c */ SUBS R0, 0x71 @ Subtract 0x71 from R0 \n\
/* 0803668e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036690 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08036692 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08036694 */ STRB R0, [R6] \n\
/* 08036696 */ B branch_080366ca \n\
 \n\
branch_08036698: \n\
/* 08036698 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0803669a */ BLE branch_080366ca \n\
/* 0803669c */ STR R5, [R6, 0x14] \n\
/* 0803669e */ STR R4, [R6, 0x10] \n\
/* 080366a0 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 080366a2 */ LDRB R0, [R6, 0x1] \n\
/* 080366a4 */ LSLS R0, R0, 0x1F \n\
/* 080366a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080366a8 */ BNE branch_080366b0 \n\
/* 080366aa */ LDR R0, =s_poly_shototu_seqData \n\
/* 080366ac */ BL func_08002634 \n\
 \n\
branch_080366b0: \n\
/* 080366b0 */ LDRB R0, [R6, 0x1] \n\
/* 080366b2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080366b4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080366b6 */ STRB R0, [R6, 0x1] \n\
/* 080366b8 */ LDR R0, =D_03005380 \n\
/* 080366ba */ LDR R0, [R0] \n\
/* 080366bc */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 080366be */ LDRSH R1, [R6, R7] \n\
/* 080366c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080366c2 */ STR R2, [SP] \n\
/* 080366c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080366c6 */ BL func_0804dae0 \n\
 \n\
branch_080366ca: \n\
/* 080366ca */ LDR R0, [R6, 0x14] \n\
/* 080366cc */ STR R0, [R6, 0x8] \n\
/* 080366ce */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080366d0 */ LSRS R1, R0, 0x1F \n\
/* 080366d2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080366d4 */ ASRS R0, R0, 0x1 \n\
/* 080366d6 */ LDR R1, [R6, 0x10] \n\
/* 080366d8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080366da */ STR R0, [R6, 0xC] \n\
/* 080366dc */ LDRB R0, [R6] \n\
/* 080366de */ LSRS R0, R0, 0x7 \n\
/* 080366e0 */ BL func_0803646c \n\
/* 080366e4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080366e6 */ LDR R0, [R6, 0x8] \n\
/* 080366e8 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080366ea */ LDRB R0, [R6] \n\
/* 080366ec */ LSRS R0, R0, 0x7 \n\
/* 080366ee */ BL func_0803647c \n\
/* 080366f2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080366f4 */ LDR R0, [R6, 0xC] \n\
/* 080366f6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080366f8 */ LDR R5, =D_03005380 \n\
/* 080366fa */ LDR R0, [R5] \n\
/* 080366fc */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080366fe */ LDRSH R1, [R6, R2] \n\
/* 08036700 */ LSLS R4, R4, 0x10 \n\
/* 08036702 */ ASRS R4, R4, 0x10 \n\
/* 08036704 */ LSLS R3, R3, 0x10 \n\
/* 08036706 */ ASRS R3, R3, 0x10 \n\
/* 08036708 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803670a */ LSLS R2, R7, 0x10 \n\
/* 0803670c */ LSRS R2, R2, 0x10 \n\
/* 0803670e */ STR R2, [SP] \n\
/* 08036710 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08036712 */ BL func_0804d55c \n\
/* 08036716 */ LDR R0, [R5] \n\
/* 08036718 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803671a */ LDRSH R1, [R6, R2] \n\
/* 0803671c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803671e */ BL func_0804d770 \n\
/* 08036722 */ LDR R0, [R6, 0x30] \n\
/* 08036724 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08036726 */ STR R0, [R6, 0x30] \n\
/* 08036728 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803672a */ BL func_0800c3a4 \n\
/* 0803672e */ LDR R1, [R6, 0x34] \n\
/* 08036730 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08036732 */ LDR R0, [R6, 0x30] \n\
/* 08036734 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08036736 */ BLE branch_08036742 \n\
/* 08036738 */ LDRB R1, [R6] \n\
/* 0803673a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803673c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803673e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036740 */ STRB R0, [R6] \n\
 \n\
branch_08036742: \n\
/* 08036742 */ ADD SP, 0x4 \n\
/* 08036744 */ POP {R3} \n\
/* 08036746 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08036748 */ POP {R4-R7} \n\
/* 0803674a */ POP {R0} \n\
/* 0803674c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
