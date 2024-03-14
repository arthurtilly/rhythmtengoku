asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c3c4 \n\
/* 0803c3c4 */ PUSH {R4, LR} \n\
/* 0803c3c6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803c3c8 */ BL scene_hide_bg_layer \n\
/* 0803c3cc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803c3ce: \n\
/* 0803c3ce */ LDR R0, =gSpriteHandler \n\
/* 0803c3d0 */ LDR R0, [R0] \n\
/* 0803c3d2 */ LDR R1, =gCurrentEngineData \n\
/* 0803c3d4 */ LDR R1, [R1] \n\
/* 0803c3d6 */ LSLS R2, R4, 0x1 \n\
/* 0803c3d8 */ MOVS R3, 0xB7 @ Set R3 to 0xB7 \n\
/* 0803c3da */ LSLS R3, R3, 0x2 \n\
/* 0803c3dc */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c3de */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c3e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c3e2 */ LDRSH R1, [R1, R2] \n\
/* 0803c3e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c3e6 */ BL sprite_set_visible \n\
/* 0803c3ea */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c3ec */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0803c3ee */ BLS branch_0803c3ce \n\
/* 0803c3f0 */ POP {R4} \n\
/* 0803c3f2 */ POP {R0} \n\
/* 0803c3f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
