asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003720 \n\
/* 08003720 */ PUSH {R4-R7, LR} \n\
/* 08003722 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08003724 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08003726 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08003728 */ PUSH {R5-R7} \n\
/* 0800372a */ SUB SP, 0x10 \n\
/* 0800372c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800372e */ LSLS R1, R1, 0x10 \n\
/* 08003730 */ LSRS R7, R1, 0x10 \n\
/* 08003732 */ LSLS R2, R2, 0x10 \n\
/* 08003734 */ LSRS R0, R2, 0x10 \n\
/* 08003736 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08003738 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800373a */ ADDS R3, 0x48 @ Add 0x48 to R3 \n\
/* 0800373c */ LDRH R0, [R3] \n\
/* 0800373e */ CMP R0, R7 @ Check R0 - R7 \n\
/* 08003740 */ BNE branch_0800374e \n\
/* 08003742 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003744 */ ADDS R0, 0x4A @ Add 0x4A to R0 \n\
/* 08003746 */ LDRH R0, [R0] \n\
/* 08003748 */ CMP R0, R12 @ Compare R0 and R12 \n\
/* 0800374a */ BNE branch_0800374e \n\
/* 0800374c */ B branch_0800386a \n\
 \n\
branch_0800374e: \n\
/* 0800374e */ LSRS R1, R1, 0x13 \n\
/* 08003750 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08003752 */ LSRS R2, R2, 0x13 \n\
/* 08003754 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08003756 */ LDRH R2, [R3] \n\
/* 08003758 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800375a */ ADDS R1, 0x4A @ Add 0x4A to R1 \n\
/* 0800375c */ LDRH R0, [R1] \n\
/* 0800375e */ LSRS R2, R2, 0x3 \n\
/* 08003760 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08003762 */ LSRS R0, R0, 0x3 \n\
/* 08003764 */ STR R0, [SP, 0x4] \n\
/* 08003766 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08003768 */ CMP R8, R9 @ Compare R8 and R9 \n\
/* 0800376a */ BNE branch_08003796 \n\
/* 0800376c */ CMP R10, R0 @ Compare R10 and R0 \n\
/* 0800376e */ BNE branch_08003796 \n\
/* 08003770 */ STRH R7, [R3] \n\
/* 08003772 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08003774 */ STRH R1, [R2] \n\
/* 08003776 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08003778 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800377a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800377c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800377e */ ADDS R2, 0x4E @ Add 0x4E to R2 \n\
/* 08003780 */ STRH R0, [R2] \n\
/* 08003782 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08003784 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003786 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08003788 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 0800378a */ STRH R0, [R1] \n\
/* 0800378c */ LDRB R0, [R4] \n\
/* 0800378e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08003790 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003792 */ STRB R0, [R4] \n\
/* 08003794 */ B branch_0800386a \n\
 \n\
branch_08003796: \n\
/* 08003796 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08003798 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800379a */ SUBS R5, R0, R1 @ Set R5 to R0 - R1 \n\
/* 0800379c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800379e */ LDR R1, [SP, 0x4] \n\
/* 080037a0 */ SUBS R6, R0, R1 @ Set R6 to R0 - R1 \n\
/* 080037a2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080037a4 */ BGE branch_080037a8 \n\
/* 080037a6 */ NEGS R5, R5 @ Set R5 to -R5 \n\
 \n\
branch_080037a8: \n\
/* 080037a8 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080037aa */ BGE branch_080037ae \n\
/* 080037ac */ NEGS R6, R6 @ Set R6 to -R6 \n\
 \n\
branch_080037ae: \n\
/* 080037ae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080037b0 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 080037b2 */ LDRB R0, [R1] \n\
/* 080037b4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080037b6 */ STR R1, [SP, 0x8] \n\
/* 080037b8 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 080037ba */ BGE branch_080037c8 \n\
/* 080037bc */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080037be */ LDRB R0, [R1] \n\
/* 080037c0 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080037c2 */ STR R1, [SP, 0xC] \n\
/* 080037c4 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080037c6 */ BLT branch_080037d4 \n\
 \n\
branch_080037c8: \n\
/* 080037c8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080037ca */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080037cc */ MOV R2, R12 @ Set R2 to R12 \n\
/* 080037ce */ BL func_080036c4 \n\
/* 080037d2 */ B branch_0800386a \n\
 \n\
branch_080037d4: \n\
/* 080037d4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080037d6 */ STRH R0, [R4, 0x10] \n\
/* 080037d8 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080037da */ STRH R1, [R4, 0x12] \n\
/* 080037dc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080037de */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 080037e0 */ STRH R7, [R0] \n\
/* 080037e2 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080037e4 */ STRH R0, [R2] \n\
/* 080037e6 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 080037e8 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080037ea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080037ec */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080037ee */ ADDS R2, 0x4E @ Add 0x4E to R2 \n\
/* 080037f0 */ STRH R0, [R2] \n\
/* 080037f2 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080037f4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080037f6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080037f8 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 080037fa */ STRH R0, [R1] \n\
/* 080037fc */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080037fe */ BEQ branch_0800382c \n\
/* 08003800 */ LDR R1, [SP, 0xC] \n\
/* 08003802 */ LDRB R0, [R1] \n\
/* 08003804 */ ADDS R7, R0, 0x1 @ Set R7 to R0 + 0x1 \n\
/* 08003806 */ CMP R8, R9 @ Compare R8 and R9 \n\
/* 08003808 */ BCC branch_08003814 \n\
/* 0800380a */ LDR R0, [SP, 0x8] \n\
/* 0800380c */ LDRB R1, [R0] \n\
/* 0800380e */ SUBS R0, R5, 0x1 @ Set R0 to R5 - 0x1 \n\
/* 08003810 */ SUBS R2, R1, R0 @ Set R2 to R1 - R0 \n\
/* 08003812 */ B branch_08003816 \n\
 \n\
branch_08003814: \n\
/* 08003814 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08003816: \n\
/* 08003816 */ LSLS R1, R2, 0x18 \n\
/* 08003818 */ LSRS R1, R1, 0x18 \n\
/* 0800381a */ LSLS R3, R5, 0x18 \n\
/* 0800381c */ LSRS R3, R3, 0x18 \n\
/* 0800381e */ LSLS R0, R7, 0x18 \n\
/* 08003820 */ LSRS R0, R0, 0x18 \n\
/* 08003822 */ STR R0, [SP] \n\
/* 08003824 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003826 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08003828 */ BL func_0800351c \n\
 \n\
branch_0800382c: \n\
/* 0800382c */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800382e */ BEQ branch_0800386a \n\
/* 08003830 */ LDR R0, [SP, 0x8] \n\
/* 08003832 */ LDRB R1, [R0] \n\
/* 08003834 */ SUBS R0, R5, 0x1 @ Set R0 to R5 - 0x1 \n\
/* 08003836 */ SUBS R3, R1, R0 @ Set R3 to R1 - R0 \n\
/* 08003838 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800383a */ CMP R8, R9 @ Compare R8 and R9 \n\
/* 0800383c */ BCS branch_08003840 \n\
/* 0800383e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
 \n\
branch_08003840: \n\
/* 08003840 */ LDR R1, [SP, 0x4] \n\
/* 08003842 */ CMP R10, R1 @ Compare R10 and R1 \n\
/* 08003844 */ BCC branch_08003850 \n\
/* 08003846 */ LDR R0, [SP, 0xC] \n\
/* 08003848 */ LDRB R1, [R0] \n\
/* 0800384a */ SUBS R0, R6, 0x1 @ Set R0 to R6 - 0x1 \n\
/* 0800384c */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0800384e */ B branch_08003852 \n\
 \n\
branch_08003850: \n\
/* 08003850 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08003852: \n\
/* 08003852 */ LSLS R1, R2, 0x18 \n\
/* 08003854 */ LSRS R1, R1, 0x18 \n\
/* 08003856 */ LSLS R2, R0, 0x18 \n\
/* 08003858 */ LSRS R2, R2, 0x18 \n\
/* 0800385a */ LSLS R3, R3, 0x18 \n\
/* 0800385c */ LSRS R3, R3, 0x18 \n\
/* 0800385e */ LSLS R0, R6, 0x18 \n\
/* 08003860 */ LSRS R0, R0, 0x18 \n\
/* 08003862 */ STR R0, [SP] \n\
/* 08003864 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003866 */ BL func_0800351c \n\
 \n\
branch_0800386a: \n\
/* 0800386a */ ADD SP, 0x10 \n\
/* 0800386c */ POP {R3-R5} \n\
/* 0800386e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003870 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08003872 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08003874 */ POP {R4-R7} \n\
/* 08003876 */ POP {R0} \n\
/* 08003878 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
