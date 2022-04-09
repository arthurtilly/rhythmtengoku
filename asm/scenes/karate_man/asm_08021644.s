asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08021644 \n\
/* 08021644 */ PUSH {R4-R7, LR} \n\
/* 08021646 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08021648 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802164a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802164c */ PUSH {R5-R7} \n\
/* 0802164e */ SUB SP, 0x14 \n\
/* 08021650 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08021652 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08021654 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08021656 */ LDRB R1, [R7] \n\
/* 08021658 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802165a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802165c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802165e */ STRB R0, [R7] \n\
/* 08021660 */ BL func_0800c42c \n\
/* 08021664 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08021666 */ STRB R0, [R7, 0x8] \n\
/* 08021668 */ LDR R6, =D_03005380 \n\
/* 0802166a */ LDR R0, [R6] \n\
/* 0802166c */ LDR R1, =D_088acc3c \n\
/* 0802166e */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08021670 */ MOVS R1, 0x34 @ Set R1 to 0x34 \n\
/* 08021672 */ STR R1, [SP] \n\
/* 08021674 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08021676 */ LSLS R1, R1, 0x7 \n\
/* 08021678 */ STR R1, [SP, 0x4] \n\
/* 0802167a */ STR R4, [SP, 0x8] \n\
/* 0802167c */ STR R4, [SP, 0xC] \n\
/* 0802167e */ STR R4, [SP, 0x10] \n\
/* 08021680 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08021682 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021684 */ MOVS R3, 0x9C @ Set R3 to 0x9C \n\
/* 08021686 */ BL func_0804d160 \n\
/* 0802168a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802168c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802168e */ STRH R0, [R7, 0x4] \n\
/* 08021690 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08021692 */ LDRSH R0, [R7, R1] \n\
/* 08021694 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08021696 */ LDRSB R1, [R7, R1] \n\
/* 08021698 */ BL func_08007468 \n\
/* 0802169c */ BL func_0800c42c \n\
/* 080216a0 */ STRB R0, [R7, 0x9] \n\
/* 080216a2 */ LDR R0, [R6] \n\
/* 080216a4 */ LDR R1, =D_088acc6c \n\
/* 080216a6 */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 080216a8 */ STR R2, [SP] \n\
/* 080216aa */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 080216ac */ LSLS R2, R2, 0x7 \n\
/* 080216ae */ STR R2, [SP, 0x4] \n\
/* 080216b0 */ STR R4, [SP, 0x8] \n\
/* 080216b2 */ STR R4, [SP, 0xC] \n\
/* 080216b4 */ STR R4, [SP, 0x10] \n\
/* 080216b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080216b8 */ MOVS R3, 0x9C @ Set R3 to 0x9C \n\
/* 080216ba */ BL func_0804d160 \n\
/* 080216be */ STRH R0, [R7, 0x6] \n\
/* 080216c0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080216c2 */ LDRSH R0, [R7, R2] \n\
/* 080216c4 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 080216c6 */ LDRSB R1, [R7, R1] \n\
/* 080216c8 */ BL func_08007468 \n\
/* 080216cc */ STR R4, [R7, 0x1C] \n\
/* 080216ce */ STR R4, [R7, 0x18] \n\
/* 080216d0 */ STR R4, [R7, 0x24] \n\
/* 080216d2 */ STR R4, [R7, 0x20] \n\
/* 080216d4 */ STRH R4, [R7, 0x28] \n\
/* 080216d6 */ STRH R4, [R7, 0x2E] \n\
/* 080216d8 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080216da */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 080216dc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080216de */ STRB R1, [R0] \n\
/* 080216e0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080216e2 */ STRB R1, [R0] \n\
/* 080216e4 */ LDRB R1, [R7] \n\
/* 080216e6 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 080216e8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080216ea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080216ec */ STRB R0, [R7] \n\
/* 080216ee */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 080216f0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080216f2 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080216f4 */ LSLS R1, R1, 0x5 \n\
/* 080216f6 */ LDRH R2, [R7] \n\
/* 080216f8 */ LDR R0, =0xfffffe1f \n\
/* 080216fa */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080216fc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080216fe */ STRH R0, [R7] \n\
/* 08021700 */ LDR R0, [R6] \n\
/* 08021702 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021704 */ LDRSH R1, [R7, R2] \n\
/* 08021706 */ LSLS R5, R5, 0x18 \n\
/* 08021708 */ ASRS R5, R5, 0x18 \n\
/* 0802170a */ STR R4, [SP] \n\
/* 0802170c */ STR R4, [SP, 0x4] \n\
/* 0802170e */ STR R4, [SP, 0x8] \n\
/* 08021710 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08021712 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08021714 */ BL func_0804d8f8 \n\
/* 08021718 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802171a */ BL func_0802160c \n\
/* 0802171e */ ADD SP, 0x14 \n\
/* 08021720 */ POP {R3-R5} \n\
/* 08021722 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08021724 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08021726 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08021728 */ POP {R4-R7} \n\
/* 0802172a */ POP {R0} \n\
/* 0802172c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
