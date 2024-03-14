asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d81c \n\
/* 0802d81c */ PUSH {R4-R7, LR} \n\
/* 0802d81e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802d820 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802d822 */ LDR R7, =gCurrentEngineData \n\
 \n\
branch_0802d824: \n\
/* 0802d824 */ LDR R3, [R7] \n\
/* 0802d826 */ LSLS R2, R4, 0x4 \n\
/* 0802d828 */ MOVS R1, 0xBC @ Set R1 to 0xBC \n\
/* 0802d82a */ LSLS R1, R1, 0x1 \n\
/* 0802d82c */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0802d82e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802d830 */ LDR R0, [R1] \n\
/* 0802d832 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802d834 */ BNE branch_0802d864 \n\
/* 0802d836 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802d838 */ STR R0, [R1] \n\
/* 0802d83a */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0802d83c */ LSLS R1, R1, 0x1 \n\
/* 0802d83e */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0802d840 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802d842 */ STR R6, [R0] \n\
/* 0802d844 */ SUBS R1, 0x4 @ Subtract 0x4 from R1 \n\
/* 0802d846 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0802d848 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802d84a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802d84c */ STR R1, [R0] \n\
/* 0802d84e */ LDR R0, =gSpriteHandler \n\
/* 0802d850 */ LDR R0, [R0] \n\
/* 0802d852 */ ADDS R1, R3, R2 @ Set R1 to R3 + R2 \n\
/* 0802d854 */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 0802d856 */ LSLS R2, R2, 0x1 \n\
/* 0802d858 */ B branch_0802d89c \n\
\n\
.ltorg \n\
 \n\
branch_0802d864: \n\
/* 0802d864 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802d866 */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0802d868 */ BLE branch_0802d824 \n\
/* 0802d86a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0802d86c: \n\
/* 0802d86c */ LDR R3, [R7] \n\
/* 0802d86e */ LSLS R1, R4, 0x4 \n\
/* 0802d870 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0802d872 */ LSLS R2, R2, 0x1 \n\
/* 0802d874 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d876 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0802d878 */ LDR R5, [R2] \n\
/* 0802d87a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802d87c */ BNE branch_0802d8b0 \n\
/* 0802d87e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802d880 */ STR R0, [R2] \n\
/* 0802d882 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802d884 */ LSLS R2, R2, 0x1 \n\
/* 0802d886 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d888 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d88a */ STR R6, [R0] \n\
/* 0802d88c */ SUBS R2, 0x4 @ Subtract 0x4 from R2 \n\
/* 0802d88e */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d890 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d892 */ STR R5, [R0] \n\
/* 0802d894 */ LDR R0, =gSpriteHandler \n\
/* 0802d896 */ LDR R0, [R0] \n\
/* 0802d898 */ ADDS R1, R3, R1 @ Set R1 to R3 + R1 \n\
/* 0802d89a */ SUBS R2, 0x8 @ Subtract 0x8 from R2 \n\
 \n\
branch_0802d89c: \n\
/* 0802d89c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d89e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d8a0 */ LDRSH R1, [R1, R2] \n\
/* 0802d8a2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802d8a4 */ BL sprite_set_visible \n\
/* 0802d8a8 */ B branch_0802d8b6 \n\
\n\
.ltorg \n\
 \n\
branch_0802d8b0: \n\
/* 0802d8b0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802d8b2 */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0802d8b4 */ BLE branch_0802d86c \n\
 \n\
branch_0802d8b6: \n\
/* 0802d8b6 */ POP {R4-R7} \n\
/* 0802d8b8 */ POP {R0} \n\
/* 0802d8ba */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
