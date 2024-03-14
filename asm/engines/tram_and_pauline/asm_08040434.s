asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040434 \n\
/* 08040434 */ PUSH {R4, R5, LR} \n\
/* 08040436 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08040438 */ LDR R5, =gCurrentEngineData \n\
/* 0804043a */ LDR R0, [R5] \n\
/* 0804043c */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0804043e */ STRB R1, [R0] \n\
/* 08040440 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08040442 */ BEQ branch_0804046c \n\
/* 08040444 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08040446 */ BCC branch_08040458 \n\
/* 08040448 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 0804044a */ BEQ branch_08040480 \n\
/* 0804044c */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 0804044e */ BEQ branch_08040498 \n\
/* 08040450 */ B branch_080404b8 \n\
\n\
.ltorg \n\
 \n\
branch_08040458: \n\
/* 08040458 */ LDR R0, =gSpriteHandler \n\
/* 0804045a */ LDR R0, [R0] \n\
/* 0804045c */ LDR R1, [R5] \n\
/* 0804045e */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08040460 */ LDRSH R1, [R1, R2] \n\
/* 08040462 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08040464 */ B branch_0804048c \n\
\n\
.ltorg \n\
 \n\
branch_0804046c: \n\
/* 0804046c */ LDR R0, =gSpriteHandler \n\
/* 0804046e */ LDR R0, [R0] \n\
/* 08040470 */ LDR R1, [R5] \n\
/* 08040472 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08040474 */ LDRSH R1, [R1, R2] \n\
/* 08040476 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08040478 */ B branch_0804048c \n\
\n\
.ltorg \n\
 \n\
branch_08040480: \n\
/* 08040480 */ LDR R0, =gSpriteHandler \n\
/* 08040482 */ LDR R0, [R0] \n\
/* 08040484 */ LDR R1, [R5] \n\
/* 08040486 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08040488 */ LDRSH R1, [R1, R2] \n\
/* 0804048a */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
 \n\
branch_0804048c: \n\
/* 0804048c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0804048e */ BL sprite_set_x_y \n\
/* 08040492 */ B branch_080404b8 \n\
\n\
.ltorg \n\
 \n\
branch_08040498: \n\
/* 08040498 */ LDR R4, =gSpriteHandler \n\
/* 0804049a */ LDR R0, [R4] \n\
/* 0804049c */ LDR R1, [R5] \n\
/* 0804049e */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 080404a0 */ LDRSH R1, [R1, R2] \n\
/* 080404a2 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 080404a4 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 080404a6 */ BL sprite_set_x_y \n\
/* 080404aa */ LDR R0, [R4] \n\
/* 080404ac */ LDR R1, [R5] \n\
/* 080404ae */ MOVS R2, 0x3E @ Set R2 to 0x3E \n\
/* 080404b0 */ LDRSH R1, [R1, R2] \n\
/* 080404b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080404b4 */ BL sprite_set_visible \n\
 \n\
branch_080404b8: \n\
/* 080404b8 */ POP {R4, R5} \n\
/* 080404ba */ POP {R0} \n\
/* 080404bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
