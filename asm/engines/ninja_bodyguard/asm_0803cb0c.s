asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803cb0c \n\
/* 0803cb0c */ PUSH {LR} \n\
/* 0803cb0e */ SUB SP, 0x14 \n\
/* 0803cb10 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803cb12 */ BL ninja_get_anim \n\
/* 0803cb16 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803cb18 */ LDR R0, =gSpriteHandler \n\
/* 0803cb1a */ LDR R0, [R0] \n\
/* 0803cb1c */ MOVS R2, 0x49 @ Set R2 to 0x49 \n\
/* 0803cb1e */ STR R2, [SP] \n\
/* 0803cb20 */ LDR R2, =0x485a \n\
/* 0803cb22 */ STR R2, [SP, 0x4] \n\
/* 0803cb24 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803cb26 */ STR R2, [SP, 0x8] \n\
/* 0803cb28 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803cb2a */ STR R2, [SP, 0xC] \n\
/* 0803cb2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cb2e */ STR R2, [SP, 0x10] \n\
/* 0803cb30 */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 0803cb32 */ BL sprite_create \n\
/* 0803cb36 */ LDR R1, =gCurrentEngineData \n\
/* 0803cb38 */ LDR R1, [R1] \n\
/* 0803cb3a */ LDR R2, =0x2d2 \n\
/* 0803cb3c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cb3e */ STRH R0, [R1] \n\
/* 0803cb40 */ LDR R0, =s_f_ninja_kabe_seqData \n\
/* 0803cb42 */ BL play_sound \n\
/* 0803cb46 */ ADD SP, 0x14 \n\
/* 0803cb48 */ POP {R0} \n\
/* 0803cb4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
