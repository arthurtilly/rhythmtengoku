asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042548 \n\
/* 08042548 */ PUSH {R4-R7, LR} \n\
/* 0804254a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804254c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804254e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08042550 */ PUSH {R5-R7} \n\
/* 08042552 */ LDR R4, =gCurrentEngineData \n\
/* 08042554 */ LDR R2, [R4] \n\
/* 08042556 */ LDR R1, =0x2e9 \n\
/* 08042558 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0804255a */ LDRB R0, [R0] \n\
/* 0804255c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804255e */ BNE branch_08042562 \n\
/* 08042560 */ B branch_080426ec \n\
 \n\
branch_08042562: \n\
/* 08042562 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08042564 */ ADDS R1, 0x7 @ Add 0x7 to R1 \n\
/* 08042566 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08042568 */ LDRH R1, [R0] \n\
/* 0804256a */ LDR R0, =0x13f \n\
/* 0804256c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804256e */ BLS branch_08042572 \n\
/* 08042570 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08042572: \n\
/* 08042572 */ MOVS R1, 0xBD @ Set R1 to 0xBD \n\
/* 08042574 */ LSLS R1, R1, 0x2 \n\
/* 08042576 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08042578 */ LDR R0, [R0] \n\
/* 0804257a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804257c */ BL affine_sprite_set_visible \n\
/* 08042580 */ LDR R0, [R4] \n\
/* 08042582 */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 08042584 */ LSLS R2, R2, 0x2 \n\
/* 08042586 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08042588 */ LDR R0, [R0] \n\
/* 0804258a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804258c */ BL affine_sprite_set_visible \n\
/* 08042590 */ LDR R0, =gSpriteHandler \n\
/* 08042592 */ LDR R0, [R0] \n\
/* 08042594 */ LDR R1, [R4] \n\
/* 08042596 */ MOVS R2, 0xBF @ Set R2 to 0xBF \n\
/* 08042598 */ LSLS R2, R2, 0x2 \n\
/* 0804259a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804259c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804259e */ LDRSH R1, [R1, R2] \n\
/* 080425a0 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080425a2 */ BL sprite_set_visible \n\
/* 080425a6 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080425a8 */ BEQ branch_080425c4 \n\
/* 080425aa */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080425ac */ BL scene_show_bg_layer \n\
/* 080425b0 */ B branch_080425ca \n\
\n\
.ltorg \n\
 \n\
branch_080425c4: \n\
/* 080425c4 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080425c6 */ BL scene_hide_bg_layer \n\
 \n\
branch_080425ca: \n\
/* 080425ca */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080425cc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080425ce */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080425d0 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 080425d2 */ LSLS R7, R0, 0x10 \n\
/* 080425d4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_080425d6: \n\
/* 080425d6 */ LDR R0, =gSpriteHandler \n\
/* 080425d8 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080425da */ LDR R0, [R0] \n\
/* 080425dc */ LDR R1, =gCurrentEngineData \n\
/* 080425de */ MOV R10, R1 @ Set R10 to R1 \n\
/* 080425e0 */ LDR R1, [R1] \n\
/* 080425e2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080425e4 */ MOVS R2, 0x9B @ Set R2 to 0x9B \n\
/* 080425e6 */ LSLS R2, R2, 0x2 \n\
/* 080425e8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080425ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080425ec */ LDRSH R1, [R1, R2] \n\
/* 080425ee */ LSRS R2, R7, 0x10 \n\
/* 080425f0 */ BL sprite_set_visible \n\
/* 080425f4 */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
/* 080425f6 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080425f8 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 080425fa */ BLS branch_080425d6 \n\
/* 080425fc */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080425fe */ BEQ branch_080426ec \n\
/* 08042600 */ MOV R8, R10 @ Set R8 to R10 \n\
/* 08042602 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08042604 */ LDR R0, [R1] \n\
/* 08042606 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 08042608 */ LSLS R2, R2, 0x2 \n\
/* 0804260a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804260c */ LDRH R0, [R0] \n\
/* 0804260e */ LDR R1, =0xffffff00 \n\
/* 08042610 */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 08042612 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08042614 */ BL agb_random \n\
/* 08042618 */ MOVS R6, 0xAA @ Set R6 to 0xAA \n\
/* 0804261a */ LSLS R0, R0, 0x10 \n\
/* 0804261c */ LSRS R0, R0, 0x10 \n\
/* 0804261e */ LDR R2, =0x352 \n\
/* 08042620 */ ADDS R5, R0, R2 @ Set R5 to R0 + R2 \n\
/* 08042622 */ MOVS R1, 0xAA @ Set R1 to 0xAA \n\
/* 08042624 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08042626 */ LSLS R0, R1, 0x1 \n\
/* 08042628 */ SUBS R4, R0, R6 @ Set R4 to R0 - R6 \n\
/* 0804262a */ LSLS R0, R7, 0x3 \n\
/* 0804262c */ SUBS R0, R0, R7 @ Set R0 to R0 - R7 \n\
/* 0804262e */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08042630 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08042632 */ LSLS R1, R1, 0x1 \n\
/* 08042634 */ BL __divsi3 \n\
/* 08042638 */ ADDS R4, R0, R4 @ Set R4 to R0 + R4 \n\
/* 0804263a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804263c */ LDR R1, =0xfffffd58 \n\
/* 0804263e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08042640 */ BL clamp_int32 \n\
/* 08042644 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08042646 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08042648 */ LDR R0, [R2] \n\
/* 0804264a */ MOVS R1, 0xBD @ Set R1 to 0xBD \n\
/* 0804264c */ LSLS R1, R1, 0x2 \n\
/* 0804264e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042650 */ LDR R0, [R0] \n\
/* 08042652 */ LSLS R1, R4, 0x10 \n\
/* 08042654 */ ASRS R1, R1, 0x10 \n\
/* 08042656 */ BL affine_sprite_set_rotation \n\
/* 0804265a */ LSLS R0, R6, 0x1 \n\
/* 0804265c */ ADDS R0, 0xAA @ Add 0xAA to R0 \n\
/* 0804265e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08042660 */ BGE branch_0804267a \n\
/* 08042662 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08042664 */ LDR R0, [R2] \n\
/* 08042666 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08042668 */ LDR R1, [R2] \n\
/* 0804266a */ MOVS R2, 0xBF @ Set R2 to 0xBF \n\
/* 0804266c */ LSLS R2, R2, 0x2 \n\
/* 0804266e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042670 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042672 */ LDRSH R1, [R1, R2] \n\
/* 08042674 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042676 */ BL sprite_set_visible \n\
 \n\
branch_0804267a: \n\
/* 0804267a */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804267c */ BL agb_random \n\
/* 08042680 */ LSLS R0, R0, 0x10 \n\
/* 08042682 */ LSRS R0, R0, 0x10 \n\
/* 08042684 */ LDR R1, =0x352 \n\
/* 08042686 */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08042688 */ LSLS R0, R7, 0x2 \n\
/* 0804268a */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0804268c */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0804268e */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08042690 */ LSLS R1, R1, 0x1 \n\
/* 08042692 */ BL __divsi3 \n\
/* 08042696 */ LDR R2, =0xfffffe02 \n\
/* 08042698 */ ADDS R4, R0, R2 @ Set R4 to R0 + R2 \n\
/* 0804269a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804269c */ LDR R1, =0xfffffd58 \n\
/* 0804269e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 080426a0 */ BL clamp_int32 \n\
/* 080426a4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080426a6 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080426a8 */ LDR R0, [R1] \n\
/* 080426aa */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 080426ac */ LSLS R2, R2, 0x2 \n\
/* 080426ae */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080426b0 */ LDR R0, [R0] \n\
/* 080426b2 */ LSLS R1, R4, 0x10 \n\
/* 080426b4 */ ASRS R1, R1, 0x10 \n\
/* 080426b6 */ BL affine_sprite_set_rotation \n\
/* 080426ba */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080426bc */ LDR R0, [R1] \n\
/* 080426be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080426c0 */ MOVS R2, 0xAA @ Set R2 to 0xAA \n\
/* 080426c2 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 080426c4 */ CMP R4, R2 @ Check R4 - R2 \n\
/* 080426c6 */ BLT branch_080426ca \n\
/* 080426c8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_080426ca: \n\
/* 080426ca */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 080426cc */ LSLS R2, R2, 0x2 \n\
/* 080426ce */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080426d0 */ STRB R1, [R0] \n\
/* 080426d2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080426d4 */ ADDS R0, 0xAA @ Add 0xAA to R0 \n\
/* 080426d6 */ MOVS R1, 0xAA @ Set R1 to 0xAA \n\
/* 080426d8 */ BL __divsi3 \n\
/* 080426dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080426de */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 080426e0 */ BL clamp_int32 \n\
/* 080426e4 */ LDR R1, =0x7fff \n\
/* 080426e6 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080426e8 */ BL func_08040eb0 \n\
 \n\
branch_080426ec: \n\
/* 080426ec */ POP {R3-R5} \n\
/* 080426ee */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080426f0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080426f2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080426f4 */ POP {R4-R7} \n\
/* 080426f6 */ POP {R0} \n\
/* 080426f8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
