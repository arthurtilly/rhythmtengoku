asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036758 \n\
/* 08036758 */ PUSH {R4-R7, LR} \n\
/* 0803675a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0803675c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803675e */ PUSH {R6, R7} \n\
/* 08036760 */ SUB SP, 0x4 \n\
/* 08036762 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08036764 */ BL func_08036604 \n\
/* 08036768 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803676a */ STR R1, [R6, 0x14] \n\
/* 0803676c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803676e */ BL func_080365c8 \n\
/* 08036772 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08036774 */ LDR R1, [R6, 0x14] \n\
/* 08036776 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08036778 */ BL func_0803661c \n\
/* 0803677c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803677e */ LDR R7, [R6, 0x14] \n\
/* 08036780 */ LDR R5, [R6, 0x18] \n\
/* 08036782 */ SUBS R1, R7, R5 @ Set R1 to R7 - R5 \n\
/* 08036784 */ LDR R4, [R6, 0x24] \n\
/* 08036786 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08036788 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0803678a */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0803678c */ LDR R1, [R6, 0x20] \n\
/* 0803678e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08036790 */ MULS R2, R1 @ Multiply R2 by R1 \n\
/* 08036792 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08036794 */ BL __divsi3 \n\
/* 08036798 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0803679a */ LDR R0, [R6, 0x1C] \n\
/* 0803679c */ ADDS R4, R0, R4 @ Set R4 to R0 + R4 \n\
/* 0803679e */ CMP R4, R8 @ Compare R4 and R8 \n\
/* 080367a0 */ BGE branch_080367ba \n\
/* 080367a2 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 080367a4 */ CMP R7, R5 @ Check R7 - R5 \n\
/* 080367a6 */ BLE branch_080367ba \n\
/* 080367a8 */ STR R4, [R6, 0x10] \n\
/* 080367aa */ LDRB R0, [R6] \n\
/* 080367ac */ MOVS R1, 0x71 @ Set R1 to 0x71 \n\
/* 080367ae */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080367b0 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080367b2 */ STRB R1, [R6] \n\
/* 080367b4 */ LDR R0, =s_poly_rakka_seqData \n\
/* 080367b6 */ BL play_sound \n\
 \n\
branch_080367ba: \n\
/* 080367ba */ LDR R0, [R6, 0x14] \n\
/* 080367bc */ STR R0, [R6, 0x8] \n\
/* 080367be */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080367c0 */ LSRS R1, R0, 0x1F \n\
/* 080367c2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080367c4 */ ASRS R0, R0, 0x1 \n\
/* 080367c6 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 080367c8 */ STR R0, [R6, 0xC] \n\
/* 080367ca */ LDRB R0, [R6] \n\
/* 080367cc */ LSRS R0, R0, 0x7 \n\
/* 080367ce */ BL polyrhythm_get_lane_start_x \n\
/* 080367d2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080367d4 */ LDR R0, [R6, 0x8] \n\
/* 080367d6 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080367d8 */ LDRB R0, [R6] \n\
/* 080367da */ LSRS R0, R0, 0x7 \n\
/* 080367dc */ BL polyrhythm_get_lane_start_y \n\
/* 080367e0 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080367e2 */ LDR R0, [R6, 0xC] \n\
/* 080367e4 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080367e6 */ LDR R5, =gSpriteHandler \n\
/* 080367e8 */ LDR R0, [R5] \n\
/* 080367ea */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 080367ec */ LDRSH R1, [R6, R7] \n\
/* 080367ee */ LSLS R4, R4, 0x10 \n\
/* 080367f0 */ ASRS R4, R4, 0x10 \n\
/* 080367f2 */ LSLS R3, R3, 0x10 \n\
/* 080367f4 */ ASRS R3, R3, 0x10 \n\
/* 080367f6 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080367f8 */ LSLS R2, R7, 0x10 \n\
/* 080367fa */ LSRS R2, R2, 0x10 \n\
/* 080367fc */ STR R2, [SP] \n\
/* 080367fe */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08036800 */ BL sprite_set_x_y_z \n\
/* 08036804 */ LDR R0, [R5] \n\
/* 08036806 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036808 */ LDRSH R1, [R6, R2] \n\
/* 0803680a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803680c */ BL sprite_set_visible \n\
/* 08036810 */ LDR R0, [R6, 0x30] \n\
/* 08036812 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08036814 */ STR R0, [R6, 0x30] \n\
/* 08036816 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08036818 */ BL ticks_to_frames \n\
/* 0803681c */ LDR R1, [R6, 0x34] \n\
/* 0803681e */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08036820 */ LDR R0, [R6, 0x30] \n\
/* 08036822 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08036824 */ BLE branch_08036830 \n\
/* 08036826 */ LDRB R1, [R6] \n\
/* 08036828 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803682a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803682c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803682e */ STRB R0, [R6] \n\
 \n\
branch_08036830: \n\
/* 08036830 */ ADD SP, 0x4 \n\
/* 08036832 */ POP {R3, R4} \n\
/* 08036834 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08036836 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08036838 */ POP {R4-R7} \n\
/* 0803683a */ POP {R0} \n\
/* 0803683c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
