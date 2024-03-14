asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024bfc \n\
/* 08024bfc */ PUSH {LR} \n\
/* 08024bfe */ LSLS R0, R0, 0x10 \n\
/* 08024c00 */ LSRS R3, R0, 0x10 \n\
/* 08024c02 */ LDRB R2, [R1] \n\
/* 08024c04 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08024c06 */ LDRSB R0, [R1, R0] \n\
/* 08024c08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024c0a */ BLE branch_08024c24 \n\
/* 08024c0c */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 08024c0e */ STRB R0, [R1] \n\
/* 08024c10 */ LSLS R0, R0, 0x18 \n\
/* 08024c12 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024c14 */ BNE branch_08024c24 \n\
/* 08024c16 */ LDR R0, =gSpriteHandler \n\
/* 08024c18 */ LDR R0, [R0] \n\
/* 08024c1a */ LSLS R1, R3, 0x10 \n\
/* 08024c1c */ ASRS R1, R1, 0x10 \n\
/* 08024c1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024c20 */ BL sprite_set_visible \n\
 \n\
branch_08024c24: \n\
/* 08024c24 */ POP {R0} \n\
/* 08024c26 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
