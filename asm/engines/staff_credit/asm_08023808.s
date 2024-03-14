asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023808 \n\
/* 08023808 */ PUSH {R4-R7, LR} \n\
/* 0802380a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802380c */ PUSH {R7} \n\
/* 0802380e */ LDR R2, =gCurrentEngineData \n\
/* 08023810 */ LDR R1, [R2] \n\
/* 08023812 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08023814 */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 08023816 */ LDRB R0, [R0] \n\
/* 08023818 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802381a */ BEQ branch_08023888 \n\
/* 0802381c */ ADDS R1, 0x75 @ Add 0x75 to R1 \n\
/* 0802381e */ LDRB R0, [R1] \n\
/* 08023820 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08023822 */ STRB R0, [R1] \n\
/* 08023824 */ LSLS R0, R0, 0x18 \n\
/* 08023826 */ LSRS R0, R0, 0x18 \n\
/* 08023828 */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 0802382a */ BNE branch_08023888 \n\
/* 0802382c */ LDR R0, [R2] \n\
/* 0802382e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08023830 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 08023832 */ LDRB R1, [R1] \n\
/* 08023834 */ ADDS R0, 0x75 @ Add 0x75 to R0 \n\
/* 08023836 */ STRB R1, [R0] \n\
/* 08023838 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802383a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802383c */ MOVS R6, 0x8 @ Set R6 to 0x8 \n\
/* 0802383e */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 08023840 */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
 \n\
branch_08023842: \n\
/* 08023842 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023844 */ LDR R0, [R1] \n\
/* 08023846 */ ADDS R3, R0, R5 @ Set R3 to R0 + R5 \n\
/* 08023848 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802384a */ LDRSH R0, [R3, R2] \n\
/* 0802384c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802384e */ BLT branch_08023880 \n\
/* 08023850 */ LDRH R0, [R3, 0x4] \n\
/* 08023852 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08023854 */ STRH R0, [R3, 0x4] \n\
/* 08023856 */ LSLS R0, R0, 0x10 \n\
/* 08023858 */ ASRS R0, R0, 0x10 \n\
/* 0802385a */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0802385c */ BGE branch_0802386c \n\
/* 0802385e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08023860 */ BL func_080236e4 \n\
/* 08023864 */ B branch_08023880 \n\
\n\
.ltorg \n\
 \n\
branch_0802386c: \n\
/* 0802386c */ LDR R0, =gSpriteHandler \n\
/* 0802386e */ LDR R0, [R0] \n\
/* 08023870 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08023872 */ LDRSH R1, [R3, R7] \n\
/* 08023874 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08023876 */ LDRSH R2, [R3, R7] \n\
/* 08023878 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0802387a */ LDRSH R3, [R3, R7] \n\
/* 0802387c */ BL sprite_set_x_y \n\
 \n\
branch_08023880: \n\
/* 08023880 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 08023882 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08023884 */ CMP R4, 0xD @ Compare R4 and 0xD \n\
/* 08023886 */ BLS branch_08023842 \n\
 \n\
branch_08023888: \n\
/* 08023888 */ POP {R3} \n\
/* 0802388a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802388c */ POP {R4-R7} \n\
/* 0802388e */ POP {R0} \n\
/* 08023890 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
