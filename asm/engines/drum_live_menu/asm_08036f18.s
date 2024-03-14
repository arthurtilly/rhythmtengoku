asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036f18 \n\
/* 08036f18 */ PUSH {R4, R5, LR} \n\
/* 08036f1a */ LDR R5, =gCurrentEngineData \n\
/* 08036f1c */ LDR R1, [R5] \n\
/* 08036f1e */ LDRB R0, [R1, 0x9] \n\
/* 08036f20 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036f22 */ BEQ branch_08036f86 \n\
/* 08036f24 */ LDRH R0, [R1, 0xA] \n\
/* 08036f26 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036f28 */ BEQ branch_08036f86 \n\
/* 08036f2a */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08036f2c */ STRH R0, [R1, 0xA] \n\
/* 08036f2e */ LSLS R0, R0, 0x10 \n\
/* 08036f30 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036f32 */ BNE branch_08036f86 \n\
/* 08036f34 */ LDR R4, =gSpriteHandler \n\
/* 08036f36 */ LDR R0, [R4] \n\
/* 08036f38 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08036f3a */ LDRSH R1, [R1, R2] \n\
/* 08036f3c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036f3e */ BL sprite_set_anim_cel \n\
/* 08036f42 */ LDR R0, [R4] \n\
/* 08036f44 */ LDR R1, [R5] \n\
/* 08036f46 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08036f48 */ LDRSH R1, [R1, R2] \n\
/* 08036f4a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036f4c */ BL sprite_set_anim_cel \n\
/* 08036f50 */ LDR R1, [R5] \n\
/* 08036f52 */ LDRB R0, [R1, 0x8] \n\
/* 08036f54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036f56 */ BEQ branch_08036f64 \n\
/* 08036f58 */ LDR R0, [R4] \n\
/* 08036f5a */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08036f5c */ LDRSH R1, [R1, R2] \n\
/* 08036f5e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036f60 */ BL sprite_set_visible \n\
 \n\
branch_08036f64: \n\
/* 08036f64 */ LDR R1, [R5] \n\
/* 08036f66 */ LDRB R0, [R1, 0x8] \n\
/* 08036f68 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08036f6a */ BHI branch_08036f78 \n\
/* 08036f6c */ LDR R0, [R4] \n\
/* 08036f6e */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08036f70 */ LDRSH R1, [R1, R2] \n\
/* 08036f72 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036f74 */ BL sprite_set_visible \n\
 \n\
branch_08036f78: \n\
/* 08036f78 */ LDR R0, [R4] \n\
/* 08036f7a */ LDR R1, [R5] \n\
/* 08036f7c */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08036f7e */ LDRSH R1, [R1, R2] \n\
/* 08036f80 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036f82 */ BL sprite_set_visible \n\
 \n\
branch_08036f86: \n\
/* 08036f86 */ POP {R4, R5} \n\
/* 08036f88 */ POP {R0} \n\
/* 08036f8a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
