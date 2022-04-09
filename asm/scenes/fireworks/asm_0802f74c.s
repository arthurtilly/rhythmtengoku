asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f74c \n\
/* 0802f74c */ PUSH {R4-R7, LR} \n\
/* 0802f74e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802f750 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802f752 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802f754 */ PUSH {R5-R7} \n\
/* 0802f756 */ SUB SP, 0x2C \n\
/* 0802f758 */ STR R1, [SP, 0x10] \n\
/* 0802f75a */ STR R2, [SP, 0x14] \n\
/* 0802f75c */ LSLS R0, R0, 0x18 \n\
/* 0802f75e */ LSRS R0, R0, 0x18 \n\
/* 0802f760 */ STR R0, [SP, 0xC] \n\
/* 0802f762 */ CMP R0, 0x12 @ Compare R0 and 0x12 \n\
/* 0802f764 */ BHI branch_0802f84e \n\
/* 0802f766 */ LSLS R0, R0, 0x2 \n\
/* 0802f768 */ LDR R1, =jtbl_0802f774 \n\
/* 0802f76a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802f76c */ LDR R0, [R0] \n\
/* 0802f76e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0802f774: \n\
.word jump_0802f7c0 \n\
.word jump_0802f7cc \n\
.word jump_0802f7d8 \n\
.word jump_0802f7e4 \n\
.word jump_0802f7ee \n\
.word jump_0802f7f8 \n\
.word jump_0802f800 \n\
.word jump_0802f80a \n\
.word jump_0802f814 \n\
.word jump_0802f81c \n\
.word jump_0802f80a \n\
.word jump_0802f814 \n\
.word jump_0802f826 \n\
.word jump_0802f830 \n\
.word jump_0802f846 \n\
.word branch_0802f84e \n\
.word jump_0802f856 \n\
.word jump_0802f85e \n\
.word jump_0802f86c \n\
jump_0802f7c0: \n\
/* 0802f7c0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f7c2 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f7c4 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802f7c6 */ STR R1, [SP, 0x1C] \n\
/* 0802f7c8 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0802f7ca */ B branch_0802f83a \n\
jump_0802f7cc: \n\
/* 0802f7cc */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0802f7ce */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0802f7d0 */ MOVS R3, 0x30 @ Set R3 to 0x30 \n\
/* 0802f7d2 */ STR R3, [SP, 0x1C] \n\
/* 0802f7d4 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0802f7d6 */ B branch_0802f83a \n\
jump_0802f7d8: \n\
/* 0802f7d8 */ MOVS R4, 0x30 @ Set R4 to 0x30 \n\
/* 0802f7da */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0802f7dc */ MOVS R6, 0x48 @ Set R6 to 0x48 \n\
/* 0802f7de */ STR R6, [SP, 0x1C] \n\
/* 0802f7e0 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0802f7e2 */ B branch_0802f83a \n\
jump_0802f7e4: \n\
/* 0802f7e4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f7e6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f7e8 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0802f7ea */ STR R1, [SP, 0x1C] \n\
/* 0802f7ec */ B branch_0802f838 \n\
jump_0802f7ee: \n\
/* 0802f7ee */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0802f7f0 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0802f7f2 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802f7f4 */ STR R3, [SP, 0x1C] \n\
/* 0802f7f6 */ B branch_0802f838 \n\
jump_0802f7f8: \n\
/* 0802f7f8 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802f7fa */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0802f7fc */ MOVS R6, 0x30 @ Set R6 to 0x30 \n\
/* 0802f7fe */ B branch_0802f836 \n\
jump_0802f800: \n\
/* 0802f800 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0802f802 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f804 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802f806 */ STR R1, [SP, 0x1C] \n\
/* 0802f808 */ B branch_0802f838 \n\
jump_0802f80a: \n\
/* 0802f80a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f80c */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0802f80e */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0802f810 */ STR R3, [SP, 0x1C] \n\
/* 0802f812 */ B branch_0802f838 \n\
jump_0802f814: \n\
/* 0802f814 */ MOVS R4, 0x10 @ Set R4 to 0x10 \n\
/* 0802f816 */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0802f818 */ MOVS R6, 0x18 @ Set R6 to 0x18 \n\
/* 0802f81a */ B branch_0802f836 \n\
jump_0802f81c: \n\
/* 0802f81c */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 0802f81e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f820 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 0802f822 */ STR R1, [SP, 0x1C] \n\
/* 0802f824 */ B branch_0802f838 \n\
jump_0802f826: \n\
/* 0802f826 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802f828 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0802f82a */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 0802f82c */ STR R3, [SP, 0x1C] \n\
/* 0802f82e */ B branch_0802f838 \n\
jump_0802f830: \n\
/* 0802f830 */ MOVS R4, 0x30 @ Set R4 to 0x30 \n\
/* 0802f832 */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0802f834 */ MOVS R6, 0x38 @ Set R6 to 0x38 \n\
 \n\
branch_0802f836: \n\
/* 0802f836 */ STR R6, [SP, 0x1C] \n\
 \n\
branch_0802f838: \n\
/* 0802f838 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
 \n\
branch_0802f83a: \n\
/* 0802f83a */ BL func_08001980 \n\
/* 0802f83e */ LSLS R0, R0, 0x18 \n\
/* 0802f840 */ LSRS R0, R0, 0x18 \n\
/* 0802f842 */ STR R0, [SP, 0x18] \n\
/* 0802f844 */ B branch_0802f878 \n\
jump_0802f846: \n\
/* 0802f846 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802f848 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f84a */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 0802f84c */ B branch_0802f872 \n\
 \n\
branch_0802f84e: \n\
/* 0802f84e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f850 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0802f852 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802f854 */ B branch_0802f864 \n\
jump_0802f856: \n\
/* 0802f856 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f858 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f85a */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0802f85c */ B branch_0802f872 \n\
jump_0802f85e: \n\
/* 0802f85e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f860 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0802f862 */ MOVS R4, 0x18 @ Set R4 to 0x18 \n\
 \n\
branch_0802f864: \n\
/* 0802f864 */ STR R4, [SP, 0x1C] \n\
/* 0802f866 */ MOVS R6, 0x3 @ Set R6 to 0x3 \n\
/* 0802f868 */ STR R6, [SP, 0x18] \n\
/* 0802f86a */ B branch_0802f878 \n\
jump_0802f86c: \n\
/* 0802f86c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f86e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802f870 */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
 \n\
branch_0802f872: \n\
/* 0802f872 */ STR R1, [SP, 0x1C] \n\
/* 0802f874 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802f876 */ STR R2, [SP, 0x18] \n\
 \n\
branch_0802f878: \n\
/* 0802f878 */ MOV R5, R10 @ Set R5 to R10 \n\
/* 0802f87a */ LDR R3, [SP, 0x1C] \n\
/* 0802f87c */ CMP R5, R3 @ Check R5 - R3 \n\
/* 0802f87e */ BCC branch_0802f882 \n\
/* 0802f880 */ B branch_0802fc22 \n\
 \n\
branch_0802f882: \n\
/* 0802f882 */ LDR R4, =D_030055d0 \n\
/* 0802f884 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0802f886 */ LDR R1, =D_0805a3d4 \n\
/* 0802f888 */ ADDS R2, R1, 0x4 @ Set R2 to R1 + 0x4 \n\
/* 0802f88a */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0802f88c */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 0802f88e */ LDR R6, [SP, 0x18] \n\
/* 0802f890 */ LSLS R0, R6, 0x1 \n\
/* 0802f892 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802f894 */ LSLS R0, R0, 0x2 \n\
/* 0802f896 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0802f898 */ STR R1, [SP, 0x20] \n\
/* 0802f89a */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 0802f89c */ STR R2, [SP, 0x24] \n\
/* 0802f89e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802f8a0 */ STR R0, [SP, 0x28] \n\
 \n\
branch_0802f8a2: \n\
/* 0802f8a2 */ LDR R0, [SP, 0xC] \n\
/* 0802f8a4 */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 0802f8a6 */ BNE branch_0802f8fa \n\
/* 0802f8a8 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f8aa */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802f8ac */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802f8ae */ BGE branch_0802f8d8 \n\
/* 0802f8b0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f8b2 */ LDR R1, [R2] \n\
/* 0802f8b4 */ LSLS R2, R5, 0x5 \n\
/* 0802f8b6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f8b8 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802f8ba */ SUBS R0, R5, R3 @ Set R0 to R5 - R3 \n\
/* 0802f8bc */ LSLS R0, R0, 0x4 \n\
/* 0802f8be */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802f8c0 */ STRB R0, [R1] \n\
/* 0802f8c2 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802f8c4 */ LDR R0, [R4] \n\
/* 0802f8c6 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802f8c8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f8ca */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 0802f8cc */ B branch_0802fa7a \n\
\n\
.ltorg \n\
 \n\
branch_0802f8d8: \n\
/* 0802f8d8 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802f8da */ LDR R1, [R6] \n\
/* 0802f8dc */ LSLS R2, R5, 0x5 \n\
/* 0802f8de */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f8e0 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802f8e2 */ SUBS R0, R5, R3 @ Set R0 to R5 - R3 \n\
/* 0802f8e4 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0802f8e6 */ LSLS R0, R0, 0x4 \n\
/* 0802f8e8 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802f8ea */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802f8ec */ STRB R0, [R1] \n\
/* 0802f8ee */ LDR R0, [R6] \n\
/* 0802f8f0 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802f8f2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f8f4 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 0802f8f6 */ LSLS R1, R1, 0x1 \n\
/* 0802f8f8 */ B branch_0802fa7a \n\
 \n\
branch_0802f8fa: \n\
/* 0802f8fa */ LDR R4, [SP, 0xC] \n\
/* 0802f8fc */ CMP R4, 0x10 @ Compare R4 and 0x10 \n\
/* 0802f8fe */ BNE branch_0802f946 \n\
/* 0802f900 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f902 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802f904 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802f906 */ BGE branch_0802f924 \n\
/* 0802f908 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802f90a */ LDR R0, [R6] \n\
/* 0802f90c */ LSLS R2, R5, 0x5 \n\
/* 0802f90e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f910 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802f912 */ SUBS R1, R5, R3 @ Set R1 to R5 - R3 \n\
/* 0802f914 */ LSLS R1, R1, 0x4 \n\
/* 0802f916 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0802f918 */ STRB R1, [R0] \n\
/* 0802f91a */ LDR R0, [R6] \n\
/* 0802f91c */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802f91e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f920 */ ADDS R1, 0xA0 @ Add 0xA0 to R1 \n\
/* 0802f922 */ B branch_0802fa7a \n\
 \n\
branch_0802f924: \n\
/* 0802f924 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802f926 */ LDR R0, [R4] \n\
/* 0802f928 */ LSLS R2, R5, 0x5 \n\
/* 0802f92a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f92c */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0802f92e */ SUBS R1, R5, R6 @ Set R1 to R5 - R6 \n\
/* 0802f930 */ SUBS R1, 0x10 @ Subtract 0x10 from R1 \n\
/* 0802f932 */ LSLS R1, R1, 0x4 \n\
/* 0802f934 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0802f936 */ STRB R1, [R0] \n\
/* 0802f938 */ LDR R0, [R4] \n\
/* 0802f93a */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802f93c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f93e */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0802f940 */ LSLS R3, R3, 0x1 \n\
/* 0802f942 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802f944 */ B branch_0802fa7a \n\
 \n\
branch_0802f946: \n\
/* 0802f946 */ LDR R4, [SP, 0xC] \n\
/* 0802f948 */ CMP R4, 0x11 @ Compare R4 and 0x11 \n\
/* 0802f94a */ BNE branch_0802f9d8 \n\
/* 0802f94c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f94e */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802f950 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802f952 */ BGE branch_0802f97c \n\
/* 0802f954 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802f956 */ LDR R1, [R6] \n\
/* 0802f958 */ LSLS R3, R5, 0x5 \n\
/* 0802f95a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802f95c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f95e */ SUBS R2, R5, R0 @ Set R2 to R5 - R0 \n\
/* 0802f960 */ LSLS R0, R2, 0x2 \n\
/* 0802f962 */ SUBS R0, 0x70 @ Subtract 0x70 from R0 \n\
/* 0802f964 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802f966 */ STRB R0, [R1] \n\
/* 0802f968 */ LDR R1, [R6] \n\
/* 0802f96a */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 0802f96c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802f96e */ LSLS R2, R2, 0x6 \n\
/* 0802f970 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0802f972 */ LSLS R0, R0, 0x2 \n\
/* 0802f974 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0802f976 */ STR R0, [R1] \n\
/* 0802f978 */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 0802f97a */ B branch_0802fa7e \n\
 \n\
branch_0802f97c: \n\
/* 0802f97c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802f97e */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802f980 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802f982 */ BGE branch_0802f9b4 \n\
/* 0802f984 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f986 */ LDR R1, [R2] \n\
/* 0802f988 */ LSLS R4, R5, 0x5 \n\
/* 0802f98a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802f98c */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0802f98e */ SUBS R3, R5, R6 @ Set R3 to R5 - R6 \n\
/* 0802f990 */ SUBS R3, 0x8 @ Subtract 0x8 from R3 \n\
/* 0802f992 */ LSLS R2, R3, 0x2 \n\
/* 0802f994 */ MOVS R6, 0x10 @ Set R6 to 0x10 \n\
/* 0802f996 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 0802f998 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802f99a */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0802f99c */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802f99e */ STRB R0, [R1] \n\
/* 0802f9a0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802f9a2 */ LDR R1, [R0] \n\
/* 0802f9a4 */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 0802f9a6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802f9a8 */ LSLS R3, R3, 0x6 \n\
/* 0802f9aa */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0802f9ac */ LSLS R0, R0, 0x2 \n\
/* 0802f9ae */ SUBS R0, R0, R3 @ Set R0 to R0 - R3 \n\
/* 0802f9b0 */ STR R0, [R1] \n\
/* 0802f9b2 */ B branch_0802fa7e \n\
 \n\
branch_0802f9b4: \n\
/* 0802f9b4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f9b6 */ LDR R1, [R2] \n\
/* 0802f9b8 */ LSLS R2, R5, 0x5 \n\
/* 0802f9ba */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f9bc */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802f9be */ SUBS R0, R5, R3 @ Set R0 to R5 - R3 \n\
/* 0802f9c0 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0802f9c2 */ LSLS R0, R0, 0x4 \n\
/* 0802f9c4 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802f9c6 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802f9c8 */ STRB R0, [R1] \n\
/* 0802f9ca */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802f9cc */ LDR R0, [R4] \n\
/* 0802f9ce */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802f9d0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f9d2 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 0802f9d4 */ LSLS R1, R1, 0x1 \n\
/* 0802f9d6 */ B branch_0802fa7a \n\
 \n\
branch_0802f9d8: \n\
/* 0802f9d8 */ LDR R6, [SP, 0xC] \n\
/* 0802f9da */ CMP R6, 0x12 @ Compare R6 and 0x12 \n\
/* 0802f9dc */ BNE branch_0802fa0c \n\
/* 0802f9de */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802f9e0 */ LDR R1, [R0] \n\
/* 0802f9e2 */ LSLS R4, R5, 0x5 \n\
/* 0802f9e4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802f9e6 */ LDR R3, =D_0805a42c \n\
/* 0802f9e8 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0802f9ea */ SUBS R2, R5, R6 @ Set R2 to R5 - R6 \n\
/* 0802f9ec */ LSLS R2, R2, 0x3 \n\
/* 0802f9ee */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802f9f0 */ LDR R0, [R0] \n\
/* 0802f9f2 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802f9f4 */ STRB R0, [R1] \n\
/* 0802f9f6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802f9f8 */ LDR R1, [R0] \n\
/* 0802f9fa */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 0802f9fc */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802f9fe */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 0802fa00 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802fa02 */ LDR R0, [R2] \n\
/* 0802fa04 */ STR R0, [R1] \n\
/* 0802fa06 */ B branch_0802fa7e \n\
\n\
.ltorg \n\
 \n\
branch_0802fa0c: \n\
/* 0802fa0c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802fa0e */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802fa10 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802fa12 */ BGE branch_0802fa32 \n\
/* 0802fa14 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802fa16 */ LDR R1, [R2] \n\
/* 0802fa18 */ LSLS R2, R5, 0x5 \n\
/* 0802fa1a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802fa1c */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802fa1e */ SUBS R0, R5, R3 @ Set R0 to R5 - R3 \n\
/* 0802fa20 */ LSLS R0, R0, 0x5 \n\
/* 0802fa22 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802fa24 */ STRB R0, [R1] \n\
/* 0802fa26 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802fa28 */ LDR R0, [R4] \n\
/* 0802fa2a */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802fa2c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fa2e */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 0802fa30 */ B branch_0802fa7a \n\
 \n\
branch_0802fa32: \n\
/* 0802fa32 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802fa34 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802fa36 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802fa38 */ BGE branch_0802fa5c \n\
/* 0802fa3a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802fa3c */ LDR R1, [R6] \n\
/* 0802fa3e */ LSLS R2, R5, 0x5 \n\
/* 0802fa40 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802fa42 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802fa44 */ SUBS R0, R5, R3 @ Set R0 to R5 - R3 \n\
/* 0802fa46 */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 0802fa48 */ LSLS R0, R0, 0x5 \n\
/* 0802fa4a */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802fa4c */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802fa4e */ STRB R0, [R1] \n\
/* 0802fa50 */ LDR R0, [R6] \n\
/* 0802fa52 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802fa54 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fa56 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 0802fa58 */ LSLS R1, R1, 0x1 \n\
/* 0802fa5a */ B branch_0802fa7a \n\
 \n\
branch_0802fa5c: \n\
/* 0802fa5c */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802fa5e */ LDR R1, [R4] \n\
/* 0802fa60 */ LSLS R2, R5, 0x5 \n\
/* 0802fa62 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802fa64 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0802fa66 */ SUBS R0, R5, R6 @ Set R0 to R5 - R6 \n\
/* 0802fa68 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0802fa6a */ LSLS R0, R0, 0x5 \n\
/* 0802fa6c */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802fa6e */ STRB R0, [R1] \n\
/* 0802fa70 */ LDR R0, [R4] \n\
/* 0802fa72 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802fa74 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fa76 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0802fa78 */ LSLS R1, R1, 0x2 \n\
 \n\
branch_0802fa7a: \n\
/* 0802fa7a */ STR R1, [R0] \n\
/* 0802fa7c */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
 \n\
branch_0802fa7e: \n\
/* 0802fa7e */ LDR R0, =D_030055d0 \n\
/* 0802fa80 */ LDR R2, [R0] \n\
/* 0802fa82 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802fa84 */ ADDS R0, 0x18 @ Add 0x18 to R0 \n\
/* 0802fa86 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802fa88 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0802fa8a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802fa8c */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802fa8e */ ADDS R7, R0, R4 @ Set R7 to R0 + R4 \n\
/* 0802fa90 */ LDR R1, =D_089361cc \n\
/* 0802fa92 */ ADDS R3, R2, R4 @ Set R3 to R2 + R4 \n\
/* 0802fa94 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802fa96 */ ADDS R3, 0x20 @ Add 0x20 to R3 \n\
/* 0802fa98 */ LDRB R0, [R3] \n\
/* 0802fa9a */ LSLS R0, R0, 0x1 \n\
/* 0802fa9c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fa9e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802faa0 */ LDRSH R1, [R0, R6] \n\
/* 0802faa2 */ LDR R0, [R7] \n\
/* 0802faa4 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802faa6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802faa8 */ BGE branch_0802faac \n\
/* 0802faaa */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
 \n\
branch_0802faac: \n\
/* 0802faac */ ASRS R0, R0, 0x8 \n\
/* 0802faae */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0802fab0 */ STR R0, [R1] \n\
/* 0802fab2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802fab4 */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 0802fab6 */ ADDS R6, R0, R4 @ Set R6 to R0 + R4 \n\
/* 0802fab8 */ LDR R1, =D_08935fcc \n\
/* 0802faba */ LDRB R0, [R3] \n\
/* 0802fabc */ LSLS R0, R0, 0x1 \n\
/* 0802fabe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fac0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802fac2 */ LDRSH R1, [R0, R3] \n\
/* 0802fac4 */ LDR R0, [R7] \n\
/* 0802fac6 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802fac8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802faca */ BGE branch_0802face \n\
/* 0802facc */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
 \n\
branch_0802face: \n\
/* 0802face */ ASRS R0, R0, 0x8 \n\
/* 0802fad0 */ STR R0, [R6] \n\
/* 0802fad2 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802fad4 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0802fad6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802fad8 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0802fada */ LDR R0, [R3] \n\
/* 0802fadc */ LDR R3, [SP, 0x10] \n\
/* 0802fade */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0802fae0 */ STR R0, [R1] \n\
/* 0802fae2 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802fae4 */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 0802fae6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802fae8 */ LDR R0, [R6] \n\
/* 0802faea */ LDR R6, [SP, 0x14] \n\
/* 0802faec */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0802faee */ STR R0, [R1] \n\
/* 0802faf0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802faf2 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802faf4 */ MOV R1, SP @ Set R1 to SP \n\
/* 0802faf6 */ LDRB R1, [R1, 0x18] \n\
/* 0802faf8 */ STRB R1, [R0] \n\
/* 0802fafa */ LDR R2, [SP, 0xC] \n\
/* 0802fafc */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0802fafe */ BHI branch_0802fb46 \n\
/* 0802fb00 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802fb02 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802fb04 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802fb06 */ BGE branch_0802fb20 \n\
/* 0802fb08 */ LDR R3, =D_030055d0 \n\
/* 0802fb0a */ LDR R0, [R3] \n\
/* 0802fb0c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802fb0e */ LDR R6, [SP, 0x20] \n\
/* 0802fb10 */ B branch_0802fb40 \n\
\n\
.ltorg \n\
 \n\
branch_0802fb20: \n\
/* 0802fb20 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802fb22 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802fb24 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0802fb26 */ BGE branch_0802fb38 \n\
/* 0802fb28 */ LDR R1, =D_030055d0 \n\
/* 0802fb2a */ LDR R0, [R1] \n\
/* 0802fb2c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802fb2e */ LDR R2, [SP, 0x24] \n\
/* 0802fb30 */ LDR R1, [R2] \n\
/* 0802fb32 */ B branch_0802fb42 \n\
\n\
.ltorg \n\
 \n\
branch_0802fb38: \n\
/* 0802fb38 */ LDR R3, =D_030055d0 \n\
/* 0802fb3a */ LDR R0, [R3] \n\
/* 0802fb3c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802fb3e */ LDR R6, [SP, 0x28] \n\
 \n\
branch_0802fb40: \n\
/* 0802fb40 */ LDR R1, [R6] \n\
 \n\
branch_0802fb42: \n\
/* 0802fb42 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802fb44 */ STRB R1, [R0] \n\
 \n\
branch_0802fb46: \n\
/* 0802fb46 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802fb48 */ LDR R0, [R1] \n\
/* 0802fb4a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802fb4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802fb4e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0802fb50 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0802fb52 */ STRB R7, [R0, 0xE] \n\
/* 0802fb54 */ LDR R6, =D_03005380 \n\
/* 0802fb56 */ LDR R0, [R6] \n\
/* 0802fb58 */ LDR R1, [R1] \n\
/* 0802fb5a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802fb5c */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0802fb5e */ LDRSH R1, [R1, R3] \n\
/* 0802fb60 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802fb62 */ BL func_0804d770 \n\
/* 0802fb66 */ LDR R0, [R6] \n\
/* 0802fb68 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802fb6a */ LDR R3, [R1] \n\
/* 0802fb6c */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0802fb6e */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802fb70 */ LDRSH R1, [R1, R2] \n\
/* 0802fb72 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0802fb74 */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 0802fb76 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802fb78 */ LDR R2, [R2] \n\
/* 0802fb7a */ LSLS R2, R2, 0x8 \n\
/* 0802fb7c */ ASRS R2, R2, 0x10 \n\
/* 0802fb7e */ ADDS R3, 0x14 @ Add 0x14 to R3 \n\
/* 0802fb80 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0802fb82 */ LDR R3, [R3] \n\
/* 0802fb84 */ LSLS R3, R3, 0x8 \n\
/* 0802fb86 */ ASRS R3, R3, 0x10 \n\
/* 0802fb88 */ BL func_0804d5d4 \n\
/* 0802fb8c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802fb8e */ LDR R0, [R3] \n\
/* 0802fb90 */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 0802fb92 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802fb94 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802fb96 */ LDRB R0, [R0] \n\
/* 0802fb98 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802fb9a */ BNE branch_0802fbbc \n\
/* 0802fb9c */ LDR R0, [R6] \n\
/* 0802fb9e */ MOVS R4, 0xC @ Set R4 to 0xC \n\
/* 0802fba0 */ LDRSH R1, [R2, R4] \n\
/* 0802fba2 */ STR R7, [SP] \n\
/* 0802fba4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802fba6 */ STR R2, [SP, 0x4] \n\
/* 0802fba8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802fbaa */ STR R6, [SP, 0x8] \n\
/* 0802fbac */ LDR R2, =D_088e8f64 \n\
/* 0802fbae */ B branch_0802fbee \n\
\n\
.ltorg \n\
 \n\
branch_0802fbbc: \n\
/* 0802fbbc */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802fbbe */ BNE branch_0802fbd8 \n\
/* 0802fbc0 */ LDR R0, [R6] \n\
/* 0802fbc2 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0802fbc4 */ LDRSH R1, [R2, R3] \n\
/* 0802fbc6 */ STR R7, [SP] \n\
/* 0802fbc8 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802fbca */ STR R2, [SP, 0x4] \n\
/* 0802fbcc */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0802fbce */ STR R4, [SP, 0x8] \n\
/* 0802fbd0 */ LDR R2, =D_088e8fb4 \n\
/* 0802fbd2 */ B branch_0802fbee \n\
\n\
.ltorg \n\
 \n\
branch_0802fbd8: \n\
/* 0802fbd8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802fbda */ BNE branch_0802fbfc \n\
/* 0802fbdc */ LDR R0, [R6] \n\
/* 0802fbde */ MOVS R6, 0xC @ Set R6 to 0xC \n\
/* 0802fbe0 */ LDRSH R1, [R2, R6] \n\
/* 0802fbe2 */ STR R7, [SP] \n\
/* 0802fbe4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802fbe6 */ STR R2, [SP, 0x4] \n\
/* 0802fbe8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802fbea */ STR R2, [SP, 0x8] \n\
/* 0802fbec */ LDR R2, =D_088e905c \n\
 \n\
branch_0802fbee: \n\
/* 0802fbee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802fbf0 */ BL func_0804d8f8 \n\
/* 0802fbf4 */ B branch_0802fc14 \n\
\n\
.ltorg \n\
 \n\
branch_0802fbfc: \n\
/* 0802fbfc */ LDR R0, [R6] \n\
/* 0802fbfe */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0802fc00 */ LDRSH R1, [R2, R3] \n\
/* 0802fc02 */ STR R7, [SP] \n\
/* 0802fc04 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802fc06 */ STR R2, [SP, 0x4] \n\
/* 0802fc08 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0802fc0a */ STR R4, [SP, 0x8] \n\
/* 0802fc0c */ LDR R2, =D_088e92dc \n\
/* 0802fc0e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802fc10 */ BL func_0804d8f8 \n\
 \n\
branch_0802fc14: \n\
/* 0802fc14 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 0802fc16 */ LSLS R0, R0, 0x18 \n\
/* 0802fc18 */ LSRS R5, R0, 0x18 \n\
/* 0802fc1a */ LDR R6, [SP, 0x1C] \n\
/* 0802fc1c */ CMP R5, R6 @ Check R5 - R6 \n\
/* 0802fc1e */ BCS branch_0802fc22 \n\
/* 0802fc20 */ B branch_0802f8a2 \n\
 \n\
branch_0802fc22: \n\
/* 0802fc22 */ ADD SP, 0x2C \n\
/* 0802fc24 */ POP {R3-R5} \n\
/* 0802fc26 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802fc28 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802fc2a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802fc2c */ POP {R4-R7} \n\
/* 0802fc2e */ POP {R0} \n\
/* 0802fc30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
