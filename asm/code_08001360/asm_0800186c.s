asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start dma3_set \n\
/* 0800186c */ PUSH {R4-R7, LR} \n\
/* 0800186e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08001870 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08001872 */ PUSH {R6, R7} \n\
/* 08001874 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08001876 */ LDR R2, [SP, 0x1C] \n\
/* 08001878 */ LSLS R3, R3, 0x10 \n\
/* 0800187a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800187c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800187e */ LSRS R3, R3, 0x14 \n\
/* 08001880 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08001882 */ BEQ branch_080018c4 \n\
/* 08001884 */ LDR R0, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 08001886 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08001888 */ LDR R1, =0x040000d8 @ !Hardware REG_DMA3DAD \n\
/* 0800188a */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0800188c */ LDR R7, =0x040000dc @ !Hardware REG_DMA3CNT_L \n\
/* 0800188e */ MOV R9, R7 @ Set R9 to R7 \n\
 \n\
branch_08001890: \n\
/* 08001890 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08001892 */ STR R6, [R0] \n\
/* 08001894 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08001896 */ STR R5, [R1] \n\
/* 08001898 */ CMP R4, R2 @ Check R4 - R2 \n\
/* 0800189a */ BHI branch_0800189e \n\
/* 0800189c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
 \n\
branch_0800189e: \n\
/* 0800189e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080018a0 */ LSRS R0, R3 @ Set R0 to R0 >> R3 (logical) \n\
/* 080018a2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080018a4 */ STRH R0, [R7] \n\
/* 080018a6 */ LDR R1, =0x040000de @ !Hardware REG_DMA3CNT_H \n\
/* 080018a8 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 080018aa */ LSLS R7, R7, 0x8 \n\
/* 080018ac */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080018ae */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 080018b0 */ BEQ branch_080018b8 \n\
/* 080018b2 */ MOVS R7, 0x84 @ Set R7 to 0x84 \n\
/* 080018b4 */ LSLS R7, R7, 0x8 \n\
/* 080018b6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
 \n\
branch_080018b8: \n\
/* 080018b8 */ STRH R0, [R1] \n\
/* 080018ba */ ADDS R6, R6, R2 @ Set R6 to R6 + R2 \n\
/* 080018bc */ ADDS R5, R5, R2 @ Set R5 to R5 + R2 \n\
/* 080018be */ SUBS R4, R4, R2 @ Set R4 to R4 - R2 \n\
/* 080018c0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080018c2 */ BNE branch_08001890 \n\
 \n\
branch_080018c4: \n\
/* 080018c4 */ POP {R3, R4} \n\
/* 080018c6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080018c8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080018ca */ POP {R4-R7} \n\
/* 080018cc */ POP {R0} \n\
/* 080018ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
