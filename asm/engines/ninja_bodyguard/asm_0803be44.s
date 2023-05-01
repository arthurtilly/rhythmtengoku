asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803be44 \n\
/* 0803be44 */ PUSH {R4, R5, LR} \n\
/* 0803be46 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0803be48 */ LSLS R1, R1, 0x3 \n\
/* 0803be4a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803be4c */ SUBS R0, 0xC8 @ Subtract 0xC8 from R0 \n\
/* 0803be4e */ ADDS R1, 0xC8 @ Add 0xC8 to R1 \n\
/* 0803be50 */ LDR R4, =gCurrentEngineData \n\
/* 0803be52 */ LDR R3, [R4] \n\
/* 0803be54 */ MOVS R5, 0xBE @ Set R5 to 0xBE \n\
/* 0803be56 */ LSLS R5, R5, 0x2 \n\
/* 0803be58 */ ADDS R2, R3, R5 @ Set R2 to R3 + R5 \n\
/* 0803be5a */ LDR R2, [R2] \n\
/* 0803be5c */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0803be5e */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0803be60 */ LDR R3, [R3] \n\
/* 0803be62 */ BL math_lerp \n\
/* 0803be66 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803be68 */ LDR R0, [R4] \n\
/* 0803be6a */ MOVS R2, 0xBD @ Set R2 to 0xBD \n\
/* 0803be6c */ LSLS R2, R2, 0x2 \n\
/* 0803be6e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803be70 */ LDR R0, [R0] \n\
/* 0803be72 */ LSLS R1, R1, 0x10 \n\
/* 0803be74 */ ASRS R1, R1, 0x10 \n\
/* 0803be76 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803be78 */ BL affine_sprite_set_orbit \n\
/* 0803be7c */ POP {R4, R5} \n\
/* 0803be7e */ POP {R0} \n\
/* 0803be80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
