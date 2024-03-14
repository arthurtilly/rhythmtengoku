asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080404c4 \n\
/* 080404c4 */ PUSH {R4-R7, LR} \n\
/* 080404c6 */ LSLS R0, R0, 0x18 \n\
/* 080404c8 */ LSRS R0, R0, 0x18 \n\
/* 080404ca */ LSLS R1, R1, 0x18 \n\
/* 080404cc */ LSRS R1, R1, 0x18 \n\
/* 080404ce */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080404d0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080404d2 */ BNE branch_08040584 \n\
/* 080404d4 */ LDR R7, =gCurrentEngineData \n\
/* 080404d6 */ LDR R4, [R7] \n\
/* 080404d8 */ LSLS R5, R2, 0x2 \n\
/* 080404da */ ADDS R0, R5, R2 @ Set R0 to R5 + R2 \n\
/* 080404dc */ LSLS R6, R0, 0x2 \n\
/* 080404de */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080404e0 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 080404e2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080404e4 */ BL ticks_to_frames \n\
/* 080404e8 */ LDR R1, [R4] \n\
/* 080404ea */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080404ec */ BCC branch_080405c6 \n\
/* 080404ee */ LDR R4, [R7] \n\
/* 080404f0 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080404f2 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 080404f4 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080404f6 */ BL ticks_to_frames \n\
/* 080404fa */ LDR R1, [R4] \n\
/* 080404fc */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080404fe */ BCS branch_08040514 \n\
/* 08040500 */ LDR R0, =gSpriteHandler \n\
/* 08040502 */ LDR R0, [R0] \n\
/* 08040504 */ LDR R1, [R7] \n\
/* 08040506 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08040508 */ B branch_080406ea \n\
\n\
.ltorg \n\
 \n\
branch_08040514: \n\
/* 08040514 */ LDR R4, [R7] \n\
/* 08040516 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040518 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0804051a */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0804051c */ BL ticks_to_frames \n\
/* 08040520 */ LDR R1, [R4] \n\
/* 08040522 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040524 */ BCS branch_08040534 \n\
/* 08040526 */ LDR R0, =gSpriteHandler \n\
/* 08040528 */ LDR R0, [R0] \n\
/* 0804052a */ LDR R1, [R7] \n\
/* 0804052c */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0804052e */ B branch_080406be \n\
\n\
.ltorg \n\
 \n\
branch_08040534: \n\
/* 08040534 */ LDR R4, [R7] \n\
/* 08040536 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040538 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0804053a */ MOVS R0, 0x15 @ Set R0 to 0x15 \n\
/* 0804053c */ BL ticks_to_frames \n\
/* 08040540 */ LDR R1, [R4] \n\
/* 08040542 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040544 */ BCS branch_08040554 \n\
/* 08040546 */ LDR R0, =gSpriteHandler \n\
/* 08040548 */ LDR R0, [R0] \n\
/* 0804054a */ LDR R1, [R7] \n\
/* 0804054c */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0804054e */ B branch_08040692 \n\
\n\
.ltorg \n\
 \n\
branch_08040554: \n\
/* 08040554 */ LDR R4, [R7] \n\
/* 08040556 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040558 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0804055a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804055c */ BL ticks_to_frames \n\
/* 08040560 */ LDR R1, [R4] \n\
/* 08040562 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040564 */ BCS branch_08040574 \n\
/* 08040566 */ LDR R0, =gSpriteHandler \n\
/* 08040568 */ LDR R0, [R0] \n\
/* 0804056a */ LDR R1, [R7] \n\
/* 0804056c */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0804056e */ B branch_080406be \n\
\n\
.ltorg \n\
 \n\
branch_08040574: \n\
/* 08040574 */ LDR R0, =gSpriteHandler \n\
/* 08040576 */ LDR R0, [R0] \n\
/* 08040578 */ LDR R1, [R7] \n\
/* 0804057a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0804057c */ B branch_080406ea \n\
\n\
.ltorg \n\
 \n\
branch_08040584: \n\
/* 08040584 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08040586 */ BNE branch_080405f8 \n\
/* 08040588 */ LDR R7, =gCurrentEngineData \n\
/* 0804058a */ LDR R4, [R7] \n\
/* 0804058c */ LSLS R5, R2, 0x2 \n\
/* 0804058e */ ADDS R0, R5, R2 @ Set R0 to R5 + R2 \n\
/* 08040590 */ LSLS R6, R0, 0x2 \n\
/* 08040592 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040594 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08040596 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08040598 */ BL ticks_to_frames \n\
/* 0804059c */ LDR R1, [R4] \n\
/* 0804059e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080405a0 */ BCS branch_080405b4 \n\
/* 080405a2 */ LDR R0, =gSpriteHandler \n\
/* 080405a4 */ LDR R0, [R0] \n\
/* 080405a6 */ LDR R1, [R7] \n\
/* 080405a8 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080405aa */ B branch_080406ea \n\
\n\
.ltorg \n\
 \n\
branch_080405b4: \n\
/* 080405b4 */ LDR R4, [R7] \n\
/* 080405b6 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080405b8 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 080405ba */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 080405bc */ BL ticks_to_frames \n\
/* 080405c0 */ LDR R1, [R4] \n\
/* 080405c2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080405c4 */ BCS branch_080405e0 \n\
 \n\
branch_080405c6: \n\
/* 080405c6 */ LDR R0, =gSpriteHandler \n\
/* 080405c8 */ LDR R0, [R0] \n\
/* 080405ca */ LDR R1, [R7] \n\
/* 080405cc */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080405ce */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 080405d0 */ LDRSH R1, [R1, R2] \n\
/* 080405d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080405d4 */ BL sprite_set_anim_cel \n\
/* 080405d8 */ B branch_0804070e \n\
\n\
.ltorg \n\
 \n\
branch_080405e0: \n\
/* 080405e0 */ LDR R0, =gSpriteHandler \n\
/* 080405e2 */ LDR R0, [R0] \n\
/* 080405e4 */ LDR R1, [R7] \n\
/* 080405e6 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080405e8 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 080405ea */ LDRSH R1, [R1, R2] \n\
/* 080405ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080405ee */ BL sprite_set_anim_cel \n\
/* 080405f2 */ B branch_0804070e \n\
\n\
.ltorg \n\
 \n\
branch_080405f8: \n\
/* 080405f8 */ LDR R6, =gCurrentEngineData \n\
/* 080405fa */ LDR R4, [R6] \n\
/* 080405fc */ LSLS R7, R0, 0x2 \n\
/* 080405fe */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 08040600 */ LSLS R5, R0, 0x2 \n\
/* 08040602 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040604 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08040606 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08040608 */ BL ticks_to_frames \n\
/* 0804060c */ LDR R1, [R4] \n\
/* 0804060e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040610 */ BCC branch_080406b6 \n\
/* 08040612 */ LDR R4, [R6] \n\
/* 08040614 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040616 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08040618 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0804061a */ BL ticks_to_frames \n\
/* 0804061e */ LDR R1, [R4] \n\
/* 08040620 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040622 */ BCC branch_0804068a \n\
/* 08040624 */ LDR R4, [R6] \n\
/* 08040626 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08040628 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0804062a */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0804062c */ BL ticks_to_frames \n\
/* 08040630 */ LDR R1, [R4] \n\
/* 08040632 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040634 */ BCC branch_0804065a \n\
/* 08040636 */ LDR R4, [R6] \n\
/* 08040638 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0804063a */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0804063c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804063e */ BL ticks_to_frames \n\
/* 08040642 */ LDR R1, [R4] \n\
/* 08040644 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040646 */ BCC branch_0804068a \n\
/* 08040648 */ LDR R4, [R6] \n\
/* 0804064a */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0804064c */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0804064e */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08040650 */ BL ticks_to_frames \n\
/* 08040654 */ LDR R1, [R4] \n\
/* 08040656 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040658 */ BCS branch_08040678 \n\
 \n\
branch_0804065a: \n\
/* 0804065a */ LDR R0, =gSpriteHandler \n\
/* 0804065c */ LDR R0, [R0] \n\
/* 0804065e */ LDR R1, [R6] \n\
/* 08040660 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08040662 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 08040664 */ LDRSH R1, [R1, R2] \n\
/* 08040666 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08040668 */ BL sprite_set_anim_cel \n\
/* 0804066c */ B branch_0804070e \n\
\n\
.ltorg \n\
 \n\
branch_08040678: \n\
/* 08040678 */ LDR R4, [R6] \n\
/* 0804067a */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0804067c */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0804067e */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 08040680 */ BL ticks_to_frames \n\
/* 08040684 */ LDR R1, [R4] \n\
/* 08040686 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040688 */ BCS branch_080406a4 \n\
 \n\
branch_0804068a: \n\
/* 0804068a */ LDR R0, =gSpriteHandler \n\
/* 0804068c */ LDR R0, [R0] \n\
/* 0804068e */ LDR R1, [R6] \n\
/* 08040690 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
 \n\
branch_08040692: \n\
/* 08040692 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 08040694 */ LDRSH R1, [R1, R2] \n\
/* 08040696 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08040698 */ BL sprite_set_anim_cel \n\
/* 0804069c */ B branch_0804070e \n\
\n\
.ltorg \n\
 \n\
branch_080406a4: \n\
/* 080406a4 */ LDR R4, [R6] \n\
/* 080406a6 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080406a8 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080406aa */ MOVS R0, 0x15 @ Set R0 to 0x15 \n\
/* 080406ac */ BL ticks_to_frames \n\
/* 080406b0 */ LDR R1, [R4] \n\
/* 080406b2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080406b4 */ BCS branch_080406d0 \n\
 \n\
branch_080406b6: \n\
/* 080406b6 */ LDR R0, =gSpriteHandler \n\
/* 080406b8 */ LDR R0, [R0] \n\
/* 080406ba */ LDR R1, [R6] \n\
/* 080406bc */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
 \n\
branch_080406be: \n\
/* 080406be */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 080406c0 */ LDRSH R1, [R1, R2] \n\
/* 080406c2 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 080406c4 */ BL sprite_set_anim_cel \n\
/* 080406c8 */ B branch_0804070e \n\
\n\
.ltorg \n\
 \n\
branch_080406d0: \n\
/* 080406d0 */ LDR R4, [R6] \n\
/* 080406d2 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080406d4 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080406d6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080406d8 */ BL ticks_to_frames \n\
/* 080406dc */ LDR R1, [R4] \n\
/* 080406de */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080406e0 */ BCS branch_080406fc \n\
/* 080406e2 */ LDR R0, =gSpriteHandler \n\
/* 080406e4 */ LDR R0, [R0] \n\
/* 080406e6 */ LDR R1, [R6] \n\
/* 080406e8 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
 \n\
branch_080406ea: \n\
/* 080406ea */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 080406ec */ LDRSH R1, [R1, R2] \n\
/* 080406ee */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080406f0 */ BL sprite_set_anim_cel \n\
/* 080406f4 */ B branch_0804070e \n\
\n\
.ltorg \n\
 \n\
branch_080406fc: \n\
/* 080406fc */ LDR R0, =gSpriteHandler \n\
/* 080406fe */ LDR R0, [R0] \n\
/* 08040700 */ LDR R1, [R6] \n\
/* 08040702 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08040704 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 08040706 */ LDRSH R1, [R1, R2] \n\
/* 08040708 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0804070a */ BL sprite_set_anim_cel \n\
 \n\
branch_0804070e: \n\
/* 0804070e */ POP {R4-R7} \n\
/* 08040710 */ POP {R0} \n\
/* 08040712 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
