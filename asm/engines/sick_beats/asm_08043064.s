asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043064 \n\
/* 08043064 */ PUSH {R4, R5, LR} \n\
/* 08043066 */ LDR R0, =D_030055d0 \n\
/* 08043068 */ LDR R0, [R0] \n\
/* 0804306a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804306c */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 0804306e */ MOVS R5, 0xF0 @ Set R5 to 0xF0 \n\
/* 08043070 */ LDR R0, [R4, 0x4] \n\
/* 08043072 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043074 */ BL affine_sprite_play_anim \n\
/* 08043078 */ LDR R0, [R4, 0x8] \n\
/* 0804307a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804307c */ BL affine_sprite_play_anim \n\
/* 08043080 */ LDR R0, [R4, 0xC] \n\
/* 08043082 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043084 */ BL affine_sprite_play_anim \n\
/* 08043088 */ LDR R0, [R4, 0x10] \n\
/* 0804308a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804308c */ BL affine_sprite_play_anim \n\
/* 08043090 */ LDRH R0, [R4, 0x14] \n\
/* 08043092 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043094 */ BEQ branch_080430ac \n\
/* 08043096 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08043098 */ STRH R0, [R4, 0x14] \n\
/* 0804309a */ MOVS R5, 0xB0 @ Set R5 to 0xB0 \n\
/* 0804309c */ LDR R0, [R4, 0x4] \n\
/* 0804309e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430a0 */ BL affine_sprite_set_anim_frame \n\
/* 080430a4 */ LDR R0, [R4, 0x4] \n\
/* 080430a6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430a8 */ BL affine_sprite_play_anim \n\
 \n\
branch_080430ac: \n\
/* 080430ac */ LDRH R0, [R4, 0x16] \n\
/* 080430ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080430b0 */ BEQ branch_080430ca \n\
/* 080430b2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080430b4 */ STRH R0, [R4, 0x16] \n\
/* 080430b6 */ LDR R0, =0xff7f \n\
/* 080430b8 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 080430ba */ LDR R0, [R4, 0x8] \n\
/* 080430bc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430be */ BL affine_sprite_set_anim_frame \n\
/* 080430c2 */ LDR R0, [R4, 0x8] \n\
/* 080430c4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430c6 */ BL affine_sprite_play_anim \n\
 \n\
branch_080430ca: \n\
/* 080430ca */ LDRH R0, [R4, 0x18] \n\
/* 080430cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080430ce */ BEQ branch_080430e8 \n\
/* 080430d0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080430d2 */ STRH R0, [R4, 0x18] \n\
/* 080430d4 */ LDR R0, =0xffdf \n\
/* 080430d6 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 080430d8 */ LDR R0, [R4, 0xC] \n\
/* 080430da */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430dc */ BL affine_sprite_set_anim_frame \n\
/* 080430e0 */ LDR R0, [R4, 0xC] \n\
/* 080430e2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430e4 */ BL affine_sprite_play_anim \n\
 \n\
branch_080430e8: \n\
/* 080430e8 */ LDRH R0, [R4, 0x1A] \n\
/* 080430ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080430ec */ BEQ branch_08043106 \n\
/* 080430ee */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080430f0 */ STRH R0, [R4, 0x1A] \n\
/* 080430f2 */ LDR R0, =0xffef \n\
/* 080430f4 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 080430f6 */ LDR R0, [R4, 0x10] \n\
/* 080430f8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080430fa */ BL affine_sprite_set_anim_frame \n\
/* 080430fe */ LDR R0, [R4, 0x10] \n\
/* 08043100 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043102 */ BL affine_sprite_play_anim \n\
 \n\
branch_08043106: \n\
/* 08043106 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08043108 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804310a */ BL gameplay_set_input_buttons \n\
/* 0804310e */ POP {R4, R5} \n\
/* 08043110 */ POP {R0} \n\
/* 08043112 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
