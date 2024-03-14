asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041744 \n\
/* 08041744 */ PUSH {R4-R7, LR} \n\
/* 08041746 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08041748 */ LDR R0, =gCurrentEngineData \n\
/* 0804174a */ LDR R0, [R0] \n\
/* 0804174c */ LDR R1, =0x2e9 \n\
/* 0804174e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041750 */ STRB R5, [R0] \n\
/* 08041752 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08041754 */ LSLS R7, R5, 0x10 \n\
 \n\
branch_08041756: \n\
/* 08041756 */ LDR R0, =gSpriteHandler \n\
/* 08041758 */ LDR R0, [R0] \n\
/* 0804175a */ LDR R6, =gCurrentEngineData \n\
/* 0804175c */ LDR R2, [R6] \n\
/* 0804175e */ LSLS R1, R4, 0x1 \n\
/* 08041760 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041762 */ LSLS R1, R1, 0x3 \n\
/* 08041764 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08041766 */ MOVS R3, 0x9B @ Set R3 to 0x9B \n\
/* 08041768 */ LSLS R3, R3, 0x2 \n\
/* 0804176a */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804176c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804176e */ LDRSH R1, [R2, R3] \n\
/* 08041770 */ LSRS R2, R7, 0x10 \n\
/* 08041772 */ BL sprite_set_visible \n\
/* 08041776 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08041778 */ LSLS R0, R0, 0x18 \n\
/* 0804177a */ LSRS R4, R0, 0x18 \n\
/* 0804177c */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0804177e */ BLS branch_08041756 \n\
/* 08041780 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08041782 */ BNE branch_0804179a \n\
/* 08041784 */ LDR R1, [R6] \n\
/* 08041786 */ MOVS R2, 0xB3 @ Set R2 to 0xB3 \n\
/* 08041788 */ LSLS R2, R2, 0x2 \n\
/* 0804178a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0804178c */ LDRB R0, [R0] \n\
/* 0804178e */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08041790 */ BNE branch_0804179a \n\
/* 08041792 */ LDR R3, =0x2e9 \n\
/* 08041794 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08041796 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08041798 */ STRB R0, [R1] \n\
 \n\
branch_0804179a: \n\
/* 0804179a */ POP {R4-R7} \n\
/* 0804179c */ POP {R0} \n\
/* 0804179e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
