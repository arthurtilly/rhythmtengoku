asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042438 \n\
/* 08042438 */ PUSH {R4-R6, LR} \n\
/* 0804243a */ LDR R6, =gCurrentEngineData \n\
/* 0804243c */ LDR R2, [R6] \n\
/* 0804243e */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 08042440 */ LSLS R0, R0, 0x2 \n\
/* 08042442 */ ADDS R5, R2, R0 @ Set R5 to R2 + R0 \n\
/* 08042444 */ MOVS R1, 0xBC @ Set R1 to 0xBC \n\
/* 08042446 */ LSLS R1, R1, 0x2 \n\
/* 08042448 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0804244a */ LDRH R1, [R0] \n\
/* 0804244c */ LDR R0, [R2, 0x14] \n\
/* 0804244e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08042450 */ ASRS R1, R0, 0x8 \n\
/* 08042452 */ STR R1, [R5] \n\
/* 08042454 */ MOVS R4, 0xB5 @ Set R4 to 0xB5 \n\
/* 08042456 */ LSLS R4, R4, 0x2 \n\
/* 08042458 */ ADDS R3, R2, R4 @ Set R3 to R2 + R4 \n\
/* 0804245a */ LSRS R0, R0, 0x1F \n\
/* 0804245c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804245e */ ASRS R1, R1, 0x1 \n\
/* 08042460 */ LDR R0, [R3] \n\
/* 08042462 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042464 */ STR R0, [R3] \n\
/* 08042466 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 08042468 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0804246a */ LDR R0, [R2] \n\
/* 0804246c */ LDR R1, [R5] \n\
/* 0804246e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042470 */ STR R0, [R2] \n\
/* 08042472 */ LDR R1, [R3] \n\
/* 08042474 */ LSLS R1, R1, 0x8 \n\
/* 08042476 */ ASRS R1, R1, 0x10 \n\
/* 08042478 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804247a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804247c */ BL scene_set_bg_layer_pos \n\
/* 08042480 */ LDR R0, [R6] \n\
/* 08042482 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08042484 */ LDR R1, [R0] \n\
/* 08042486 */ LSLS R1, R1, 0x8 \n\
/* 08042488 */ ASRS R1, R1, 0x10 \n\
/* 0804248a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804248c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804248e */ BL scene_set_bg_layer_pos \n\
/* 08042492 */ POP {R4-R6} \n\
/* 08042494 */ POP {R0} \n\
/* 08042496 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
