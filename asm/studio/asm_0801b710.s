asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b710 \n\
/* 0801b710 */ PUSH {R4-R6, LR} \n\
/* 0801b712 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801b714 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801b716 */ PUSH {R5, R6} \n\
/* 0801b718 */ SUB SP, 0x3C \n\
/* 0801b71a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801b71c */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0801b71e */ LDR R1, =gCurrentSceneData \n\
/* 0801b720 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0801b722 */ LDR R1, [R1] \n\
/* 0801b724 */ MOVS R2, 0xDB @ Set R2 to 0xDB \n\
/* 0801b726 */ LSLS R2, R2, 0x2 \n\
/* 0801b728 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b72a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801b72c */ STRB R0, [R1] \n\
/* 0801b72e */ BL get_current_mem_id \n\
/* 0801b732 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801b734 */ LSLS R4, R4, 0x10 \n\
/* 0801b736 */ LSRS R4, R4, 0x10 \n\
/* 0801b738 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801b73a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801b73c */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0801b73e */ BL clamp_int32 \n\
/* 0801b742 */ STR R6, [SP] \n\
/* 0801b744 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801b746 */ STR R1, [SP, 0x4] \n\
/* 0801b748 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801b74a */ STR R1, [SP, 0x8] \n\
/* 0801b74c */ MOVS R1, 0xB3 @ Set R1 to 0xB3 \n\
/* 0801b74e */ LSLS R1, R1, 0x1 \n\
/* 0801b750 */ STR R1, [SP, 0xC] \n\
/* 0801b752 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801b754 */ STR R2, [SP, 0x10] \n\
/* 0801b756 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801b758 */ LSLS R1, R1, 0x8 \n\
/* 0801b75a */ STR R1, [SP, 0x14] \n\
/* 0801b75c */ STR R2, [SP, 0x18] \n\
/* 0801b75e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801b760 */ STR R1, [SP, 0x1C] \n\
/* 0801b762 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0801b764 */ STR R1, [SP, 0x20] \n\
/* 0801b766 */ LDR R1, =anim_studio_selection_item \n\
/* 0801b768 */ STR R1, [SP, 0x24] \n\
/* 0801b76a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801b76c */ STR R1, [SP, 0x28] \n\
/* 0801b76e */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0801b770 */ STR R1, [SP, 0x2C] \n\
/* 0801b772 */ STR R0, [SP, 0x30] \n\
/* 0801b774 */ LDR R0, =func_0801b668 \n\
/* 0801b776 */ STR R0, [SP, 0x34] \n\
/* 0801b778 */ STR R6, [SP, 0x38] \n\
/* 0801b77a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801b77c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801b77e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801b780 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0801b782 */ BL func_0800aeb4 \n\
/* 0801b786 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801b788 */ LDR R1, [R2] \n\
/* 0801b78a */ MOVS R2, 0xDA @ Set R2 to 0xDA \n\
/* 0801b78c */ LSLS R2, R2, 0x2 \n\
/* 0801b78e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b790 */ STR R0, [R1] \n\
/* 0801b792 */ LDR R1, =func_0801b6fc \n\
/* 0801b794 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b796 */ BL func_0800b30c \n\
/* 0801b79a */ ADD SP, 0x3C \n\
/* 0801b79c */ POP {R3, R4} \n\
/* 0801b79e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801b7a0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801b7a2 */ POP {R4-R6} \n\
/* 0801b7a4 */ POP {R0} \n\
/* 0801b7a6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
