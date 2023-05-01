asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032430 \n\
/* 08032430 */ PUSH {R4, LR} \n\
/* 08032432 */ LDR R4, =gCurrentEngineData \n\
/* 08032434 */ LDR R1, [R4] \n\
/* 08032436 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 08032438 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803243a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803243c */ STRB R2, [R1] \n\
/* 0803243e */ LDR R1, [R4] \n\
/* 08032440 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 08032442 */ STRB R0, [R1] \n\
/* 08032444 */ LDR R0, [R4] \n\
/* 08032446 */ STR R3, [R0, 0x7C] \n\
/* 08032448 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803244a */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0803244c */ STR R3, [R1] \n\
/* 0803244e */ LDR R2, [R0, 0x7C] \n\
/* 08032450 */ LSLS R2, R2, 0x8 \n\
/* 08032452 */ ASRS R2, R2, 0x10 \n\
/* 08032454 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08032456 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032458 */ BL scene_set_bg_layer_pos \n\
/* 0803245c */ LDR R0, [R4] \n\
/* 0803245e */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08032460 */ LDR R2, [R0] \n\
/* 08032462 */ LSLS R2, R2, 0x8 \n\
/* 08032464 */ ASRS R2, R2, 0x10 \n\
/* 08032466 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08032468 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803246a */ BL scene_set_bg_layer_pos \n\
/* 0803246e */ POP {R4} \n\
/* 08032470 */ POP {R0} \n\
/* 08032472 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
