asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022fb8 \n\
/* 08022fb8 */ PUSH {R4-R7, LR} \n\
/* 08022fba */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08022fbc */ PUSH {R7} \n\
/* 08022fbe */ LDR R4, =gCurrentEngineData \n\
/* 08022fc0 */ LDR R2, [R4] \n\
/* 08022fc2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08022fc4 */ ADDS R0, 0xB2 @ Add 0xB2 to R0 \n\
/* 08022fc6 */ LDRB R0, [R0] \n\
/* 08022fc8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022fca */ BEQ branch_0802302a \n\
/* 08022fcc */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08022fce */ ADDS R1, 0xB4 @ Add 0xB4 to R1 \n\
/* 08022fd0 */ LDR R0, [R1] \n\
/* 08022fd2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08022fd4 */ STR R0, [R1] \n\
/* 08022fd6 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08022fd8 */ LDR R1, [R1] \n\
/* 08022fda */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08022fdc */ BLS branch_0802302a \n\
/* 08022fde */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08022fe0 */ ADDS R0, 0xB0 @ Add 0xB0 to R0 \n\
/* 08022fe2 */ LDRH R0, [R0] \n\
/* 08022fe4 */ BL set_beatscript_tempo \n\
/* 08022fe8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022fea */ BL scene_set_music_pitch \n\
/* 08022fee */ LDR R0, [R4] \n\
/* 08022ff0 */ ADDS R0, 0xB2 @ Add 0xB2 to R0 \n\
/* 08022ff2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022ff4 */ STRB R1, [R0] \n\
/* 08022ff6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08022ff8 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 08022ffa */ LDR R7, =gSpriteHandler \n\
/* 08022ffc */ MOVS R5, 0x14 @ Set R5 to 0x14 \n\
 \n\
branch_08022ffe: \n\
/* 08022ffe */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08023000 */ LDR R0, [R1] \n\
/* 08023002 */ ADDS R4, R0, R5 @ Set R4 to R0 + R5 \n\
/* 08023004 */ LDRB R0, [R4] \n\
/* 08023006 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023008 */ BEQ branch_08023022 \n\
/* 0802300a */ LDR R0, [R7] \n\
/* 0802300c */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802300e */ LDRSH R1, [R4, R2] \n\
/* 08023010 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08023012 */ BL sprite_set_anim_cel \n\
/* 08023016 */ LDR R0, [R7] \n\
/* 08023018 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802301a */ LDRSH R1, [R4, R2] \n\
/* 0802301c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802301e */ BL sprite_set_visible \n\
 \n\
branch_08023022: \n\
/* 08023022 */ ADDS R5, 0x14 @ Add 0x14 to R5 \n\
/* 08023024 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08023026 */ CMP R6, 0x5 @ Compare R6 and 0x5 \n\
/* 08023028 */ BLS branch_08022ffe \n\
 \n\
branch_0802302a: \n\
/* 0802302a */ POP {R3} \n\
/* 0802302c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802302e */ POP {R4-R7} \n\
/* 08023030 */ POP {R0} \n\
/* 08023032 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
