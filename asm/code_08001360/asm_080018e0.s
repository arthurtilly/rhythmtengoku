asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080018e0 \n\
/* 080018e0 */ PUSH {R4-R7, LR} \n\
/* 080018e2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080018e4 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080018e6 */ PUSH {R6, R7} \n\
/* 080018e8 */ SUB SP, 0x4 \n\
/* 080018ea */ STR R0, [SP] \n\
/* 080018ec */ LDR R4, [SP, 0x20] \n\
/* 080018ee */ LSLS R3, R3, 0x10 \n\
/* 080018f0 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080018f2 */ LSRS R3, R3, 0x14 \n\
/* 080018f4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080018f6 */ BEQ branch_08001938 \n\
/* 080018f8 */ LDR R0, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 080018fa */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080018fc */ MOV R6, SP @ Set R6 to SP \n\
/* 080018fe */ LDR R1, =0x040000dc @ !Hardware REG_DMA3CNT_L \n\
/* 08001900 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08001902 */ LDR R7, =0x040000d8 @ !Hardware REG_DMA3DAD \n\
/* 08001904 */ MOV R9, R7 @ Set R9 to R7 \n\
 \n\
branch_08001906: \n\
/* 08001906 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08001908 */ STR R6, [R0] \n\
/* 0800190a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800190c */ STR R5, [R1] \n\
/* 0800190e */ CMP R2, R4 @ Check R2 - R4 \n\
/* 08001910 */ BHI branch_08001914 \n\
/* 08001912 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
 \n\
branch_08001914: \n\
/* 08001914 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08001916 */ LSRS R0, R3 @ Set R0 to R0 >> R3 (logical) \n\
/* 08001918 */ MOV R7, R12 @ Set R7 to R12 \n\
/* 0800191a */ STRH R0, [R7] \n\
/* 0800191c */ LDR R1, =0x040000de @ !Hardware REG_DMA3CNT_H \n\
/* 0800191e */ MOVS R7, 0x81 @ Set R7 to 0x81 \n\
/* 08001920 */ LSLS R7, R7, 0x8 \n\
/* 08001922 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08001924 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08001926 */ BEQ branch_0800192e \n\
/* 08001928 */ MOVS R7, 0x85 @ Set R7 to 0x85 \n\
/* 0800192a */ LSLS R7, R7, 0x8 \n\
/* 0800192c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
 \n\
branch_0800192e: \n\
/* 0800192e */ STRH R0, [R1] \n\
/* 08001930 */ ADDS R5, R5, R4 @ Set R5 to R5 + R4 \n\
/* 08001932 */ SUBS R2, R2, R4 @ Set R2 to R2 - R4 \n\
/* 08001934 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08001936 */ BNE branch_08001906 \n\
 \n\
branch_08001938: \n\
/* 08001938 */ ADD SP, 0x4 \n\
/* 0800193a */ POP {R3, R4} \n\
/* 0800193c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800193e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08001940 */ POP {R4-R7} \n\
/* 08001942 */ POP {R0} \n\
/* 08001944 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
