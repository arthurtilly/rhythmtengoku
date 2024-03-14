asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bc98 \n\
/* 0803bc98 */ PUSH {R4, R5, LR} \n\
/* 0803bc9a */ LDR R0, =gCurrentEngineData \n\
/* 0803bc9c */ LDR R0, [R0] \n\
/* 0803bc9e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803bca0 */ ADDS R5, 0xEC @ Add 0xEC to R5 \n\
/* 0803bca2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803bca4 */ B branch_0803bcb8 \n\
\n\
.ltorg \n\
 \n\
branch_0803bcac: \n\
/* 0803bcac */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0803bcae */ LSLS R0, R0, 0x18 \n\
/* 0803bcb0 */ LSRS R1, R0, 0x18 \n\
/* 0803bcb2 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0803bcb4 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 0803bcb6 */ BHI branch_0803bd00 \n\
 \n\
branch_0803bcb8: \n\
/* 0803bcb8 */ LDRB R0, [R5, 0x2] \n\
/* 0803bcba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803bcbc */ BNE branch_0803bcac \n\
/* 0803bcbe */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 0803bcc0 */ BHI branch_0803bd00 \n\
/* 0803bcc2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803bcc4 */ STRB R0, [R5, 0x2] \n\
/* 0803bcc6 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0803bcc8 */ LSLS R2, R2, 0x9 \n\
/* 0803bcca */ STR R2, [R5, 0x4] \n\
/* 0803bccc */ LDR R4, =gSpriteHandler \n\
/* 0803bcce */ LDR R0, [R4] \n\
/* 0803bcd0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803bcd2 */ LDRSH R1, [R5, R3] \n\
/* 0803bcd4 */ ASRS R2, R2, 0x8 \n\
/* 0803bcd6 */ BL sprite_set_x \n\
/* 0803bcda */ LDR R0, [R4] \n\
/* 0803bcdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bcde */ LDRSH R1, [R5, R2] \n\
/* 0803bce0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803bce2 */ BL sprite_set_visible \n\
/* 0803bce6 */ LDR R4, [R4] \n\
/* 0803bce8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803bcea */ LDRSH R5, [R5, R3] \n\
/* 0803bcec */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803bcee */ BL agb_random \n\
/* 0803bcf2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803bcf4 */ LSLS R2, R2, 0x18 \n\
/* 0803bcf6 */ ASRS R2, R2, 0x18 \n\
/* 0803bcf8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803bcfa */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803bcfc */ BL sprite_set_anim_cel \n\
 \n\
branch_0803bd00: \n\
/* 0803bd00 */ POP {R4, R5} \n\
/* 0803bd02 */ POP {R0} \n\
/* 0803bd04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
