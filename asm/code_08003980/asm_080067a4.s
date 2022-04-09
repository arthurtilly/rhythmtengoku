asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080067a4 \n\
/* 080067a4 */ PUSH {R4-R7, LR} \n\
/* 080067a6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080067a8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080067aa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080067ac */ PUSH {R5-R7} \n\
/* 080067ae */ SUB SP, 0x1C \n\
/* 080067b0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080067b2 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080067b4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080067b6 */ LDR R5, [SP, 0x3C] \n\
/* 080067b8 */ LDR R6, [SP, 0x40] \n\
/* 080067ba */ LDR R0, [SP, 0x44] \n\
/* 080067bc */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080067be */ LDR R0, [SP, 0x4C] \n\
/* 080067c0 */ LDR R2, [SP, 0x50] \n\
/* 080067c2 */ LSLS R4, R4, 0x10 \n\
/* 080067c4 */ LSRS R4, R4, 0x10 \n\
/* 080067c6 */ LSLS R1, R1, 0x10 \n\
/* 080067c8 */ LSRS R1, R1, 0x10 \n\
/* 080067ca */ STR R1, [SP, 0x10] \n\
/* 080067cc */ LSLS R5, R5, 0x10 \n\
/* 080067ce */ LSRS R5, R5, 0x10 \n\
/* 080067d0 */ LSLS R6, R6, 0x10 \n\
/* 080067d2 */ LSRS R6, R6, 0x10 \n\
/* 080067d4 */ LSLS R0, R0, 0x10 \n\
/* 080067d6 */ LSRS R0, R0, 0x10 \n\
/* 080067d8 */ STR R0, [SP, 0x14] \n\
/* 080067da */ LSLS R2, R2, 0x10 \n\
/* 080067dc */ LSRS R2, R2, 0x10 \n\
/* 080067de */ STR R2, [SP, 0x18] \n\
/* 080067e0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080067e2 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 080067e4 */ BL mem_heap_alloc_id \n\
/* 080067e8 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080067ea */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080067ec */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 080067ee */ BL mem_heap_alloc_id \n\
/* 080067f2 */ STR R0, [R7, 0x10] \n\
/* 080067f4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080067f6 */ LDRB R1, [R3] \n\
/* 080067f8 */ LDRB R2, [R3, 0x1] \n\
/* 080067fa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080067fc */ BL func_08006328 \n\
/* 08006800 */ STR R0, [R7, 0x14] \n\
/* 08006802 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08006804 */ LDRB R1, [R0] \n\
/* 08006806 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08006808 */ LDRB R2, [R0, 0x1] \n\
/* 0800680a */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0800680c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800680e */ BL func_08006328 \n\
/* 08006812 */ STR R0, [R7, 0x8] \n\
/* 08006814 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08006816 */ STR R1, [R7] \n\
/* 08006818 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800681a */ STR R3, [R7, 0x4] \n\
/* 0800681c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800681e */ STRH R5, [R7, 0xC] \n\
/* 08006820 */ STRH R6, [R7, 0xE] \n\
/* 08006822 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 08006824 */ STR R5, [R7, 0x18] \n\
/* 08006826 */ LDRH R1, [R7, 0x1C] \n\
/* 08006828 */ LDR R0, =0xfffff000 \n\
/* 0800682a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800682c */ STRH R0, [R7, 0x1C] \n\
/* 0800682e */ LDRB R1, [R7, 0x1D] \n\
/* 08006830 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08006832 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006834 */ STRB R0, [R7, 0x1D] \n\
/* 08006836 */ STR R4, [R7, 0x20] \n\
/* 08006838 */ STR R4, [R7, 0x28] \n\
/* 0800683a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800683c */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0800683e */ LDR R1, [R7, 0x10] \n\
/* 08006840 */ LDR R2, [R5, 0x18] \n\
/* 08006842 */ BL func_080060bc \n\
/* 08006846 */ LDR R0, [SP, 0x48] \n\
/* 08006848 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800684a */ BEQ branch_08006874 \n\
/* 0800684c */ LDR R3, [SP, 0x14] \n\
/* 0800684e */ LSLS R1, R3, 0x10 \n\
/* 08006850 */ ASRS R1, R1, 0x10 \n\
/* 08006852 */ LDR R5, [SP, 0x18] \n\
/* 08006854 */ LSLS R2, R5, 0x10 \n\
/* 08006856 */ ASRS R2, R2, 0x10 \n\
/* 08006858 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800685a */ LDRB R3, [R0] \n\
/* 0800685c */ LDRB R0, [R0, 0x1] \n\
/* 0800685e */ STR R0, [SP] \n\
/* 08006860 */ LDR R0, [R7, 0x14] \n\
/* 08006862 */ STR R0, [SP, 0x4] \n\
/* 08006864 */ STR R4, [SP, 0x8] \n\
/* 08006866 */ STR R4, [SP, 0xC] \n\
/* 08006868 */ LDR R0, [SP, 0x48] \n\
/* 0800686a */ BL func_0800620c \n\
/* 0800686e */ B branch_0800687e \n\
\n\
.ltorg \n\
 \n\
branch_08006874: \n\
/* 08006874 */ LDR R0, [R7, 0x14] \n\
/* 08006876 */ LDR R1, [R7, 0x10] \n\
/* 08006878 */ LDRH R1, [R1, 0x8] \n\
/* 0800687a */ BL func_08005ee4 \n\
 \n\
branch_0800687e: \n\
/* 0800687e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08006880 */ STRH R0, [R7, 0x1E] \n\
/* 08006882 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08006884 */ LDR R0, [R1, 0x1C] \n\
/* 08006886 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006888 */ BEQ branch_080068e4 \n\
/* 0800688a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800688c */ B branch_080068de \n\
 \n\
branch_0800688e: \n\
/* 0800688e */ LDR R3, [SP, 0x54] \n\
/* 08006890 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08006892 */ BEQ branch_080068c8 \n\
/* 08006894 */ LDR R1, [R7, 0x14] \n\
/* 08006896 */ LDRB R3, [R4] \n\
/* 08006898 */ LDRB R0, [R4, 0x1] \n\
/* 0800689a */ STR R0, [SP] \n\
/* 0800689c */ LDR R0, [R4, 0x4] \n\
/* 0800689e */ STR R0, [SP, 0x4] \n\
/* 080068a0 */ LDRB R0, [R4, 0x2] \n\
/* 080068a2 */ STR R0, [SP, 0x8] \n\
/* 080068a4 */ LDR R5, [SP, 0x54] \n\
/* 080068a6 */ STR R5, [SP, 0xC] \n\
/* 080068a8 */ LDR R0, [SP, 0x10] \n\
/* 080068aa */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080068ac */ BL func_080061d0 \n\
/* 080068b0 */ LDR R1, =func_0800679c \n\
/* 080068b2 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080068b4 */ ADDS R2, 0x1E @ Add 0x1E to R2 \n\
/* 080068b6 */ BL func_08005d38 \n\
/* 080068ba */ LDRH R0, [R7, 0x1E] \n\
/* 080068bc */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080068be */ STRH R0, [R7, 0x1E] \n\
/* 080068c0 */ B branch_080068dc \n\
\n\
.ltorg \n\
 \n\
branch_080068c8: \n\
/* 080068c8 */ LDR R0, [R7, 0x14] \n\
/* 080068ca */ LDRB R2, [R4] \n\
/* 080068cc */ LDRB R3, [R4, 0x1] \n\
/* 080068ce */ LDR R1, [R4, 0x4] \n\
/* 080068d0 */ STR R1, [SP] \n\
/* 080068d2 */ LDRB R1, [R4, 0x2] \n\
/* 080068d4 */ STR R1, [SP, 0x4] \n\
/* 080068d6 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080068d8 */ BL func_080061a4 \n\
 \n\
branch_080068dc: \n\
/* 080068dc */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
 \n\
branch_080068de: \n\
/* 080068de */ LDR R0, [R4, 0x4] \n\
/* 080068e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080068e2 */ BNE branch_0800688e \n\
 \n\
branch_080068e4: \n\
/* 080068e4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080068e6 */ ADD SP, 0x1C \n\
/* 080068e8 */ POP {R3-R5} \n\
/* 080068ea */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080068ec */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080068ee */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080068f0 */ POP {R4-R7} \n\
/* 080068f2 */ POP {R1} \n\
/* 080068f4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
