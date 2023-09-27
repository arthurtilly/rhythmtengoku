asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e10c \n\
/* 0803e10c */ PUSH {LR} \n\
/* 0803e10e */ SUB SP, 0x8 \n\
/* 0803e110 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e112 */ BEQ branch_0803e138 \n\
/* 0803e114 */ LDR R0, =gCurrentEngineData \n\
/* 0803e116 */ LDR R0, [R0] \n\
/* 0803e118 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803e11a */ LDRSH R0, [R0, R1] \n\
/* 0803e11c */ MOVS R1, 0x38 @ Set R1 to 0x38 \n\
/* 0803e11e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803e120 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803e122 */ STR R2, [SP] \n\
/* 0803e124 */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 0803e126 */ STR R2, [SP, 0x4] \n\
/* 0803e128 */ MOVS R2, 0xB0 @ Set R2 to 0xB0 \n\
/* 0803e12a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e12c */ BL scene_set_sprite_motion_decelerate \n\
/* 0803e130 */ B branch_0803e154 \n\
\n\
.ltorg \n\
 \n\
branch_0803e138: \n\
/* 0803e138 */ LDR R0, =gCurrentEngineData \n\
/* 0803e13a */ LDR R0, [R0] \n\
/* 0803e13c */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803e13e */ LDRSH R0, [R0, R1] \n\
/* 0803e140 */ MOVS R3, 0x38 @ Set R3 to 0x38 \n\
/* 0803e142 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0803e144 */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 0803e146 */ STR R1, [SP] \n\
/* 0803e148 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0803e14a */ STR R1, [SP, 0x4] \n\
/* 0803e14c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803e14e */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803e150 */ BL scene_set_sprite_motion_decelerate \n\
 \n\
branch_0803e154: \n\
/* 0803e154 */ ADD SP, 0x8 \n\
/* 0803e156 */ POP {R0} \n\
/* 0803e158 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
