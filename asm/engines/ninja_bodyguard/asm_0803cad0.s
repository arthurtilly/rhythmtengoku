asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803cad0 \n\
/* 0803cad0 */ PUSH {LR} \n\
/* 0803cad2 */ SUB SP, 0xC \n\
/* 0803cad4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cad6 */ BL ninja_get_anim \n\
/* 0803cada */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803cadc */ LDR R0, =gSpriteHandler \n\
/* 0803cade */ LDR R0, [R0] \n\
/* 0803cae0 */ LDR R1, =gCurrentEngineData \n\
/* 0803cae2 */ LDR R1, [R1] \n\
/* 0803cae4 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0803cae6 */ LSLS R3, R3, 0x2 \n\
/* 0803cae8 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803caea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803caec */ LDRSH R1, [R1, R3] \n\
/* 0803caee */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803caf0 */ STR R3, [SP] \n\
/* 0803caf2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803caf4 */ STR R3, [SP, 0x4] \n\
/* 0803caf6 */ STR R3, [SP, 0x8] \n\
/* 0803caf8 */ BL sprite_set_anim \n\
/* 0803cafc */ ADD SP, 0xC \n\
/* 0803cafe */ POP {R0} \n\
/* 0803cb00 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
