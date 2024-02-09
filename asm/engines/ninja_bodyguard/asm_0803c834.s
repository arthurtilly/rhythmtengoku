asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c834 \n\
/* 0803c834 */ PUSH {R4-R6, LR} \n\
/* 0803c836 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0803c838 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0803c83a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0803c83c */ PUSH {R4-R6} \n\
/* 0803c83e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803c840 */ LDR R6, [SP, 0x1C] \n\
/* 0803c842 */ LDR R0, =gCurrentEngineData \n\
/* 0803c844 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803c846 */ LDR R5, [R0] \n\
/* 0803c848 */ MOVS R4, 0xB3 @ Set R4 to 0xB3 \n\
/* 0803c84a */ LSLS R4, R4, 0x2 \n\
/* 0803c84c */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0803c84e */ ADDS R0, R5, R4 @ Set R0 to R5 + R4 \n\
/* 0803c850 */ LDRH R4, [R0] \n\
/* 0803c852 */ LSLS R0, R4, 0x3 \n\
/* 0803c854 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0803c856 */ LSLS R0, R0, 0x2 \n\
/* 0803c858 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0803c85a */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0803c85c */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 0803c85e */ LSLS R0, R1, 0x8 \n\
/* 0803c860 */ STR R0, [R5, 0x4] \n\
/* 0803c862 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803c864 */ LSLS R0, R0, 0x6 \n\
/* 0803c866 */ STR R0, [R5, 0x8] \n\
/* 0803c868 */ STR R2, [R5, 0xC] \n\
/* 0803c86a */ STR R3, [R5, 0x10] \n\
/* 0803c86c */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0803c86e */ STR R0, [R5, 0x14] \n\
/* 0803c870 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803c872 */ STRH R4, [R5, 0x18] \n\
/* 0803c874 */ STRH R6, [R5, 0x1A] \n\
/* 0803c876 */ LDR R0, [R5] \n\
/* 0803c878 */ LSLS R1, R1, 0x10 \n\
/* 0803c87a */ ASRS R1, R1, 0x10 \n\
/* 0803c87c */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 0803c87e */ BL affine_sprite_set_x_y \n\
/* 0803c882 */ LDR R0, [R5] \n\
/* 0803c884 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0803c886 */ BL affine_sprite_set_anim_cel \n\
/* 0803c88a */ LDR R0, [R5] \n\
/* 0803c88c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c88e */ BL affine_sprite_set_rotation \n\
/* 0803c892 */ LDR R0, [R5] \n\
/* 0803c894 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803c896 */ BL affine_sprite_set_visible \n\
/* 0803c89a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803c89c */ LDR R0, [R1] \n\
/* 0803c89e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803c8a0 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803c8a2 */ LDRH R0, [R1] \n\
/* 0803c8a4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803c8a6 */ STRH R0, [R1] \n\
/* 0803c8a8 */ LSLS R0, R0, 0x10 \n\
/* 0803c8aa */ LSRS R0, R0, 0x10 \n\
/* 0803c8ac */ CMP R0, 0x17 @ Compare R0 and 0x17 \n\
/* 0803c8ae */ BLS branch_0803c8b2 \n\
/* 0803c8b0 */ STRH R4, [R1] \n\
 \n\
branch_0803c8b2: \n\
/* 0803c8b2 */ POP {R3-R5} \n\
/* 0803c8b4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c8b6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c8b8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803c8ba */ POP {R4-R6} \n\
/* 0803c8bc */ POP {R0} \n\
/* 0803c8be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
