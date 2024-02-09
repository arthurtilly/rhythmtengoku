asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803be88 \n\
/* 0803be88 */ PUSH {R4, LR} \n\
/* 0803be8a */ LDR R4, =gCurrentEngineData \n\
/* 0803be8c */ LDR R1, [R4] \n\
/* 0803be8e */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 0803be90 */ LSLS R2, R2, 0x2 \n\
/* 0803be92 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803be94 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803be96 */ STR R2, [R1] \n\
/* 0803be98 */ BL ticks_to_frames \n\
/* 0803be9c */ LDR R2, [R4] \n\
/* 0803be9e */ MOVS R3, 0xBF @ Set R3 to 0xBF \n\
/* 0803bea0 */ LSLS R3, R3, 0x2 \n\
/* 0803bea2 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803bea4 */ STR R0, [R1] \n\
/* 0803bea6 */ MOVS R1, 0xBD @ Set R1 to 0xBD \n\
/* 0803bea8 */ LSLS R1, R1, 0x2 \n\
/* 0803beaa */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0803beac */ LDR R0, [R0] \n\
/* 0803beae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803beb0 */ BL affine_sprite_set_visible \n\
/* 0803beb4 */ BL func_0803be44 \n\
/* 0803beb8 */ POP {R4} \n\
/* 0803beba */ POP {R0} \n\
/* 0803bebc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
