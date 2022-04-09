asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e6ec \n\
/* 0800e6ec */ PUSH {R4-R7, LR} \n\
/* 0800e6ee */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800e6f0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800e6f2 */ PUSH {R6, R7} \n\
/* 0800e6f4 */ SUB SP, 0x14 \n\
/* 0800e6f6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e6f8 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800e6fa */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e6fc */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800e6fe */ LDR R3, [SP, 0x30] \n\
/* 0800e700 */ LSLS R6, R6, 0x10 \n\
/* 0800e702 */ LSRS R6, R6, 0x10 \n\
/* 0800e704 */ LSLS R4, R4, 0x10 \n\
/* 0800e706 */ LSRS R4, R4, 0x10 \n\
/* 0800e708 */ LSLS R5, R5, 0x10 \n\
/* 0800e70a */ LSRS R5, R5, 0x10 \n\
/* 0800e70c */ LSLS R3, R3, 0x10 \n\
/* 0800e70e */ LSRS R3, R3, 0x10 \n\
/* 0800e710 */ LSLS R0, R0, 0x10 \n\
/* 0800e712 */ ASRS R0, R0, 0x10 \n\
/* 0800e714 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e716 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0800e718 */ ADD R2, SP @ Add SP to R2 \n\
/* 0800e71a */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800e71c */ ADD R1, SP, 0xC \n\
/* 0800e71e */ STR R3, [SP, 0x10] \n\
/* 0800e720 */ BL func_0800742c \n\
/* 0800e724 */ ADD R0, SP, 0xC \n\
/* 0800e726 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e728 */ LDRSH R1, [R0, R7] \n\
/* 0800e72a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800e72c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e72e */ LDRSH R2, [R0, R7] \n\
/* 0800e730 */ LSLS R6, R6, 0x10 \n\
/* 0800e732 */ ASRS R6, R6, 0x10 \n\
/* 0800e734 */ LSLS R4, R4, 0x10 \n\
/* 0800e736 */ ASRS R4, R4, 0x10 \n\
/* 0800e738 */ STR R4, [SP] \n\
/* 0800e73a */ LSLS R5, R5, 0x10 \n\
/* 0800e73c */ ASRS R5, R5, 0x10 \n\
/* 0800e73e */ STR R5, [SP, 0x4] \n\
/* 0800e740 */ LDR R3, [SP, 0x10] \n\
/* 0800e742 */ STR R3, [SP, 0x8] \n\
/* 0800e744 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e746 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800e748 */ BL func_0800e694 \n\
/* 0800e74c */ ADD SP, 0x14 \n\
/* 0800e74e */ POP {R3, R4} \n\
/* 0800e750 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e752 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e754 */ POP {R4-R7} \n\
/* 0800e756 */ POP {R1} \n\
/* 0800e758 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
