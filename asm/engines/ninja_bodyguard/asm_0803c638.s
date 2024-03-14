asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c638 \n\
/* 0803c638 */ PUSH {R4-R6, LR} \n\
/* 0803c63a */ SUB SP, 0xC \n\
/* 0803c63c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803c63e */ LDR R6, =gCurrentEngineData \n\
/* 0803c640 */ LDR R0, [R6] \n\
/* 0803c642 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803c644 */ STRB R1, [R0, 0x6] \n\
/* 0803c646 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803c648 */ BEQ branch_0803c654 \n\
/* 0803c64a */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 0803c64c */ BEQ branch_0803c694 \n\
/* 0803c64e */ B branch_0803c6ce \n\
\n\
.ltorg \n\
 \n\
branch_0803c654: \n\
/* 0803c654 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803c656 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c658 */ BL gameplay_set_input_buttons \n\
/* 0803c65c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803c65e */ BL ninja_get_anim \n\
/* 0803c662 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c664 */ LDR R4, =gSpriteHandler \n\
/* 0803c666 */ LDR R0, [R4] \n\
/* 0803c668 */ LDR R1, [R6] \n\
/* 0803c66a */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803c66c */ LDRSH R1, [R1, R3] \n\
/* 0803c66e */ STR R5, [SP] \n\
/* 0803c670 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803c672 */ STR R3, [SP, 0x4] \n\
/* 0803c674 */ STR R5, [SP, 0x8] \n\
/* 0803c676 */ BL sprite_set_anim \n\
/* 0803c67a */ LDR R0, [R4] \n\
/* 0803c67c */ LDR R1, [R6] \n\
/* 0803c67e */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803c680 */ LSLS R2, R2, 0x2 \n\
/* 0803c682 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c684 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c686 */ LDRSH R1, [R1, R3] \n\
/* 0803c688 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c68a */ BL sprite_set_anim_cel \n\
/* 0803c68e */ B branch_0803c6ce \n\
\n\
.ltorg \n\
 \n\
branch_0803c694: \n\
/* 0803c694 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803c696 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c698 */ BL gameplay_set_input_buttons \n\
/* 0803c69c */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0803c69e */ BL ninja_get_anim \n\
/* 0803c6a2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c6a4 */ LDR R4, =gSpriteHandler \n\
/* 0803c6a6 */ LDR R0, [R4] \n\
/* 0803c6a8 */ LDR R1, [R6] \n\
/* 0803c6aa */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803c6ac */ LDRSH R1, [R1, R3] \n\
/* 0803c6ae */ STR R5, [SP] \n\
/* 0803c6b0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803c6b2 */ STR R3, [SP, 0x4] \n\
/* 0803c6b4 */ STR R5, [SP, 0x8] \n\
/* 0803c6b6 */ BL sprite_set_anim \n\
/* 0803c6ba */ LDR R0, [R4] \n\
/* 0803c6bc */ LDR R1, [R6] \n\
/* 0803c6be */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803c6c0 */ LSLS R2, R2, 0x2 \n\
/* 0803c6c2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c6c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c6c6 */ LDRSH R1, [R1, R3] \n\
/* 0803c6c8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c6ca */ BL sprite_set_anim_cel \n\
 \n\
branch_0803c6ce: \n\
/* 0803c6ce */ LDR R2, =gCurrentEngineData \n\
/* 0803c6d0 */ LDR R0, [R2] \n\
/* 0803c6d2 */ LDR R1, =0x2ce \n\
/* 0803c6d4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803c6d6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c6d8 */ STRB R1, [R0] \n\
/* 0803c6da */ LDR R0, [R2] \n\
/* 0803c6dc */ LDR R2, =0x2cf \n\
/* 0803c6de */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803c6e0 */ STRB R1, [R0] \n\
/* 0803c6e2 */ ADD SP, 0xC \n\
/* 0803c6e4 */ POP {R4-R6} \n\
/* 0803c6e6 */ POP {R0} \n\
/* 0803c6e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
