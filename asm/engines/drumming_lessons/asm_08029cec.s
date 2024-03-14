asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029cec \n\
/* 08029cec */ PUSH {LR} \n\
/* 08029cee */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08029cf0 */ LDR R0, =gSpriteHandler \n\
/* 08029cf2 */ LDR R0, [R0] \n\
/* 08029cf4 */ LDR R1, =gCurrentEngineData \n\
/* 08029cf6 */ LDR R1, [R1] \n\
/* 08029cf8 */ LDR R3, =0x00000366 \n\
/* 08029cfa */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08029cfc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029cfe */ LDRSH R1, [R1, R3] \n\
/* 08029d00 */ LSLS R2, R2, 0x3 \n\
/* 08029d02 */ LDR R3, =D_089e2b98 \n\
/* 08029d04 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08029d06 */ BL sprite_set_anim_data \n\
/* 08029d0a */ POP {R0} \n\
/* 08029d0c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
