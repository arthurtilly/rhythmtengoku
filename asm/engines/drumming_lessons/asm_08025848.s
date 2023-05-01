asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025848 \n\
/* 08025848 */ PUSH {R4, R5, LR} \n\
/* 0802584a */ SUB SP, 0x4 \n\
/* 0802584c */ LDR R4, =gCurrentEngineData \n\
/* 0802584e */ LDR R1, [R4] \n\
/* 08025850 */ LDR R0, =0x00001418 \n\
/* 08025852 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 08025854 */ LDR R0, [R3] \n\
/* 08025856 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08025858 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802585a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0802585c */ STR R0, [R3] \n\
/* 0802585e */ LDR R2, =D_089e06c0 \n\
/* 08025860 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08025862 */ LDRB R5, [R0] \n\
/* 08025864 */ LDR R2, =drum_live_obj_palettes \n\
/* 08025866 */ LDRB R0, [R1] \n\
/* 08025868 */ LSLS R0, R0, 0x2 \n\
/* 0802586a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802586c */ LDR R0, [R0] \n\
/* 0802586e */ LDR R2, =0x0000179c \n\
/* 08025870 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025872 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 08025874 */ STR R2, [SP] \n\
/* 08025876 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025878 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0802587a */ BL func_080257b8 \n\
/* 0802587e */ LDR R2, =drum_live_bg_palettes \n\
/* 08025880 */ LDR R1, [R4] \n\
/* 08025882 */ LDRB R0, [R1] \n\
/* 08025884 */ LSLS R0, R0, 0x2 \n\
/* 08025886 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08025888 */ LDR R0, [R0] \n\
/* 0802588a */ LDR R2, =0x0000169c \n\
/* 0802588c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802588e */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08025890 */ STR R2, [SP] \n\
/* 08025892 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025894 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08025896 */ BL func_080257b8 \n\
/* 0802589a */ ADD SP, 0x4 \n\
/* 0802589c */ POP {R4, R5} \n\
/* 0802589e */ POP {R0} \n\
/* 080258a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
