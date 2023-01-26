asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_engine_update \n\
/* 0802e53c */ PUSH {R4, R5, LR} \n\
/* 0802e53e */ BL func_0802e208 \n\
/* 0802e542 */ LDR R4, =D_030055d0 \n\
/* 0802e544 */ LDR R0, [R4] \n\
/* 0802e546 */ LDR R2, =0x1d3 \n\
/* 0802e548 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802e54a */ LDRB R0, [R1] \n\
/* 0802e54c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e54e */ BEQ branch_0802e554 \n\
/* 0802e550 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802e552 */ STRB R0, [R1] \n\
 \n\
branch_0802e554: \n\
/* 0802e554 */ LDR R5, =D_03004afc \n\
/* 0802e556 */ LDRH R1, [R5] \n\
/* 0802e558 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e55a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802e55c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e55e */ BEQ branch_0802e56a \n\
/* 0802e560 */ LDR R0, [R4] \n\
/* 0802e562 */ LDR R0, [R0, 0x34] \n\
/* 0802e564 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e566 */ BL affine_sprite_set_anim_frame \n\
 \n\
branch_0802e56a: \n\
/* 0802e56a */ LDRH R1, [R5] \n\
/* 0802e56c */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802e56e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802e570 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e572 */ BEQ branch_0802e57e \n\
/* 0802e574 */ LDR R0, [R4] \n\
/* 0802e576 */ LDR R0, [R0, 0x38] \n\
/* 0802e578 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e57a */ BL affine_sprite_set_anim_frame \n\
 \n\
branch_0802e57e: \n\
/* 0802e57e */ POP {R4, R5} \n\
/* 0802e580 */ POP {R0} \n\
/* 0802e582 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
