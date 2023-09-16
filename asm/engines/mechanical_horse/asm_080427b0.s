asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_cue_update \n\
/* 080427b0 */ PUSH {R4, R5, LR} \n\
/* 080427b2 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080427b4 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080427b6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080427b8 */ BL ticks_to_frames \n\
/* 080427bc */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080427be */ BLS branch_080427c4 \n\
/* 080427c0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080427c2 */ B branch_080427e0 \n\
 \n\
branch_080427c4: \n\
/* 080427c4 */ LDRB R0, [R5] \n\
/* 080427c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080427c8 */ BNE branch_080427de \n\
/* 080427ca */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080427cc */ BL ticks_to_frames \n\
/* 080427d0 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080427d2 */ BCC branch_080427de \n\
/* 080427d4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080427d6 */ BL func_08041444 \n\
/* 080427da */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080427dc */ STRB R0, [R5] \n\
 \n\
branch_080427de: \n\
/* 080427de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080427e0: \n\
/* 080427e0 */ POP {R4, R5} \n\
/* 080427e2 */ POP {R1} \n\
/* 080427e4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
