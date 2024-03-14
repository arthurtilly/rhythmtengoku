asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080333e8 \n\
/* 080333e8 */ PUSH {R4-R7, LR} \n\
/* 080333ea */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080333ec */ LDR R1, =gCurrentEngineData \n\
/* 080333ee */ LDR R0, [R1] \n\
/* 080333f0 */ LDRB R0, [R0, 0xB] \n\
/* 080333f2 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080333f4 */ BCS branch_0803345c \n\
/* 080333f6 */ LDR R7, =gSpriteHandler \n\
 \n\
branch_080333f8: \n\
/* 080333f8 */ LDR R1, [R1] \n\
/* 080333fa */ LSLS R0, R6, 0x1 \n\
/* 080333fc */ ADDS R1, 0xE @ Add 0xE to R1 \n\
/* 080333fe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08033400 */ LDR R0, [R7] \n\
/* 08033402 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033404 */ LDRSH R5, [R1, R2] \n\
/* 08033406 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08033408 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0803340a */ BL sprite_get_data \n\
/* 0803340e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08033410 */ LDR R0, [R7] \n\
/* 08033412 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08033414 */ BL sprite_get_anim_cel \n\
/* 08033418 */ LSLS R0, R0, 0x18 \n\
/* 0803341a */ ASRS R1, R0, 0x18 \n\
/* 0803341c */ LDR R0, =anim_power_calligraphy_kokoro_input2 \n\
/* 0803341e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08033420 */ BNE branch_08033450 \n\
/* 08033422 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08033424 */ BNE branch_08033450 \n\
/* 08033426 */ LDR R0, [R7] \n\
/* 08033428 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803342a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0803342c */ BL sprite_set_anim_cel \n\
/* 08033430 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08033432 */ LSLS R0, R0, 0x2 \n\
/* 08033434 */ BL func_080331c0 \n\
/* 08033438 */ LDR R0, =s_furi_seqData \n\
/* 0803343a */ BL play_sound \n\
/* 0803343e */ B branch_0803345c \n\
\n\
.ltorg \n\
 \n\
branch_08033450: \n\
/* 08033450 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08033452 */ LDR R1, =gCurrentEngineData \n\
/* 08033454 */ LDR R0, [R1] \n\
/* 08033456 */ LDRB R0, [R0, 0xB] \n\
/* 08033458 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0803345a */ BCC branch_080333f8 \n\
 \n\
branch_0803345c: \n\
/* 0803345c */ POP {R4-R7} \n\
/* 0803345e */ POP {R0} \n\
/* 08033460 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
