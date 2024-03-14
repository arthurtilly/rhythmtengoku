asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f7c0 \n\
/* 0800f7c0 */ PUSH {R4-R7, LR} \n\
/* 0800f7c2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800f7c4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800f7c6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800f7c8 */ PUSH {R5-R7} \n\
/* 0800f7ca */ SUB SP, 0x20 \n\
/* 0800f7cc */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800f7ce */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0800f7d0 */ STR R2, [SP, 0x14] \n\
/* 0800f7d2 */ STR R3, [SP, 0x18] \n\
/* 0800f7d4 */ LDR R0, [SP, 0x48] \n\
/* 0800f7d6 */ LSLS R0, R0, 0x10 \n\
/* 0800f7d8 */ LSRS R0, R0, 0x10 \n\
/* 0800f7da */ STR R0, [SP, 0x1C] \n\
/* 0800f7dc */ LDR R5, [R7, 0x50] \n\
/* 0800f7de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f7e0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800f7e2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f7e4 */ ADDS R0, 0x4F @ Add 0x4F to R0 \n\
/* 0800f7e6 */ LDRB R0, [R0] \n\
/* 0800f7e8 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 0800f7ea */ BGE branch_0800f888 \n\
/* 0800f7ec */ LDR R1, =gSpriteHandler \n\
/* 0800f7ee */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800f7f0 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0800f7f2: \n\
/* 0800f7f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f7f4 */ LDRSH R0, [R5, R2] \n\
/* 0800f7f6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f7f8 */ BGE branch_0800f86c \n\
/* 0800f7fa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f7fc */ LDR R0, [R1] \n\
/* 0800f7fe */ BL sprite_handler_get_mem_id \n\
/* 0800f802 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f804 */ LSLS R4, R4, 0x10 \n\
/* 0800f806 */ LSRS R4, R4, 0x10 \n\
/* 0800f808 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800f80a */ LDR R0, [R2] \n\
/* 0800f80c */ LDRH R1, [R7] \n\
/* 0800f80e */ BL sprite_handler_set_mem_id \n\
/* 0800f812 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f814 */ LDR R0, [R1] \n\
/* 0800f816 */ STR R6, [SP] \n\
/* 0800f818 */ STR R6, [SP, 0x4] \n\
/* 0800f81a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800f81c */ STR R1, [SP, 0x8] \n\
/* 0800f81e */ STR R6, [SP, 0xC] \n\
/* 0800f820 */ STR R6, [SP, 0x10] \n\
/* 0800f822 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800f824 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f826 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800f828 */ BL sprite_create \n\
/* 0800f82c */ STRH R0, [R5] \n\
/* 0800f82e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800f830 */ LDR R0, [R2] \n\
/* 0800f832 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f834 */ LDRSH R1, [R5, R2] \n\
/* 0800f836 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f838 */ BL sprite_set_visible \n\
/* 0800f83c */ LDR R0, [SP, 0x18] \n\
/* 0800f83e */ STR R0, [R5, 0x4] \n\
/* 0800f840 */ LDR R1, [SP, 0x40] \n\
/* 0800f842 */ STR R1, [R5, 0x8] \n\
/* 0800f844 */ LDR R2, [SP, 0x44] \n\
/* 0800f846 */ STR R2, [R5, 0xC] \n\
/* 0800f848 */ MOV R0, SP @ Set R0 to SP \n\
/* 0800f84a */ LDRH R0, [R0, 0x1C] \n\
/* 0800f84c */ STRH R0, [R5, 0x24] \n\
/* 0800f84e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800f850 */ STR R1, [R5, 0x28] \n\
/* 0800f852 */ LDR R2, [SP, 0x14] \n\
/* 0800f854 */ STR R2, [R5, 0x2C] \n\
/* 0800f856 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f858 */ LDR R0, [R1] \n\
/* 0800f85a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800f85c */ BL sprite_handler_set_mem_id \n\
/* 0800f860 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800f862 */ LSLS R0, R2, 0x10 \n\
/* 0800f864 */ ASRS R0, R0, 0x10 \n\
/* 0800f866 */ B branch_0800f88c \n\
\n\
.ltorg \n\
 \n\
branch_0800f86c: \n\
/* 0800f86c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800f86e */ LSLS R0, R1, 0x10 \n\
/* 0800f870 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800f872 */ LSLS R2, R2, 0x9 \n\
/* 0800f874 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800f876 */ ADDS R5, 0x30 @ Add 0x30 to R5 \n\
/* 0800f878 */ LSRS R1, R0, 0x10 \n\
/* 0800f87a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800f87c */ ASRS R0, R0, 0x10 \n\
/* 0800f87e */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800f880 */ ADDS R1, 0x4F @ Add 0x4F to R1 \n\
/* 0800f882 */ LDRB R1, [R1] \n\
/* 0800f884 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0800f886 */ BLT branch_0800f7f2 \n\
 \n\
branch_0800f888: \n\
/* 0800f888 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800f88a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800f88c: \n\
/* 0800f88c */ ADD SP, 0x20 \n\
/* 0800f88e */ POP {R3-R5} \n\
/* 0800f890 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f892 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800f894 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800f896 */ POP {R4-R7} \n\
/* 0800f898 */ POP {R1} \n\
/* 0800f89a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
