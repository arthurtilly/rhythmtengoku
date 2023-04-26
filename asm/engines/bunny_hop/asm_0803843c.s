asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803843c \n\
/* 0803843c */ PUSH {LR} \n\
/* 0803843e */ LDR R0, =gCurrentEngineData \n\
/* 08038440 */ LDR R2, [R0] \n\
/* 08038442 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08038444 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038446 */ LDRB R1, [R0] \n\
/* 08038448 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803844a */ BEQ branch_080384ac \n\
/* 0803844c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803844e */ LDRB R0, [R0] \n\
/* 08038450 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038452 */ BEQ branch_080384ac \n\
/* 08038454 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08038456 */ BEQ branch_0803845c \n\
/* 08038458 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803845a */ BNE branch_08038468 \n\
 \n\
branch_0803845c: \n\
/* 0803845c */ LDR R0, =s_f_rabbit_miss_seqData \n\
/* 0803845e */ B branch_08038472 \n\
\n\
.ltorg \n\
 \n\
branch_08038468: \n\
/* 08038468 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 0803846a */ BEQ branch_08038470 \n\
/* 0803846c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803846e */ BNE branch_08038484 \n\
 \n\
branch_08038470: \n\
/* 08038470 */ LDR R0, =s_witch_donats_seqData \n\
 \n\
branch_08038472: \n\
/* 08038472 */ BL play_sound \n\
/* 08038476 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038478 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803847a */ BL func_08038fbc \n\
/* 0803847e */ B branch_0803849c \n\
\n\
.ltorg \n\
 \n\
branch_08038484: \n\
/* 08038484 */ LDR R0, =s_BD4_seqData \n\
/* 08038486 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08038488 */ LSLS R1, R1, 0x1 \n\
/* 0803848a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803848c */ BL play_sound_w_pitch_volume \n\
/* 08038490 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038492 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038494 */ BL func_08038fbc \n\
/* 08038498 */ BL func_08038a84 \n\
 \n\
branch_0803849c: \n\
/* 0803849c */ LDR R2, =gCurrentEngineData \n\
/* 0803849e */ LDR R0, [R2] \n\
/* 080384a0 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 080384a2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080384a4 */ STRB R1, [R0] \n\
/* 080384a6 */ LDR R0, [R2] \n\
/* 080384a8 */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
/* 080384aa */ STRB R1, [R0] \n\
 \n\
branch_080384ac: \n\
/* 080384ac */ POP {R0} \n\
/* 080384ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
