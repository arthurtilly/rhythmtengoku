asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_engine_update \n\
/* 0802bd44 */ PUSH {R4-R6, LR} \n\
/* 0802bd46 */ SUB SP, 0x14 \n\
/* 0802bd48 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802bd4a */ LDR R1, =gCurrentEngineData \n\
/* 0802bd4c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802bd4e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0802bd50: \n\
/* 0802bd50 */ LDR R0, [R1] \n\
/* 0802bd52 */ MOVS R3, 0xF2 @ Set R3 to 0xF2 \n\
/* 0802bd54 */ LSLS R3, R3, 0x2 \n\
/* 0802bd56 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0802bd58 */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 0802bd5a */ LDR R3, [R0] \n\
/* 0802bd5c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802bd5e */ BEQ branch_0802bdc8 \n\
/* 0802bd60 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802bd62 */ BNE branch_0802bd98 \n\
/* 0802bd64 */ LDR R0, =gSpriteHandler \n\
/* 0802bd66 */ LDR R0, [R0] \n\
/* 0802bd68 */ LDR R3, [R2] \n\
/* 0802bd6a */ SUBS R3, 0x4 @ Subtract 0x4 from R3 \n\
/* 0802bd6c */ LSLS R3, R3, 0x10 \n\
/* 0802bd6e */ ASRS R3, R3, 0x10 \n\
/* 0802bd70 */ MOVS R1, 0x9C @ Set R1 to 0x9C \n\
/* 0802bd72 */ STR R1, [SP] \n\
/* 0802bd74 */ STR R4, [SP, 0x4] \n\
/* 0802bd76 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802bd78 */ STR R1, [SP, 0x8] \n\
/* 0802bd7a */ STR R4, [SP, 0xC] \n\
/* 0802bd7c */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802bd7e */ STR R1, [SP, 0x10] \n\
/* 0802bd80 */ LDR R1, =anim_showtime_splash_ball \n\
/* 0802bd82 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bd84 */ BL sprite_create \n\
/* 0802bd88 */ B branch_0802bdba \n\
\n\
.ltorg \n\
 \n\
branch_0802bd98: \n\
/* 0802bd98 */ LDR R0, =gSpriteHandler \n\
/* 0802bd9a */ LDR R0, [R0] \n\
/* 0802bd9c */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 0802bd9e */ LSLS R3, R3, 0x10 \n\
/* 0802bda0 */ ASRS R3, R3, 0x10 \n\
/* 0802bda2 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0802bda4 */ STR R1, [SP] \n\
/* 0802bda6 */ STR R6, [SP, 0x4] \n\
/* 0802bda8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802bdaa */ STR R1, [SP, 0x8] \n\
/* 0802bdac */ STR R6, [SP, 0xC] \n\
/* 0802bdae */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802bdb0 */ STR R1, [SP, 0x10] \n\
/* 0802bdb2 */ LDR R1, =anim_showtime_splash_penguin \n\
/* 0802bdb4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bdb6 */ BL sprite_create \n\
 \n\
branch_0802bdba: \n\
/* 0802bdba */ LDR R1, =gCurrentEngineData \n\
/* 0802bdbc */ LDR R0, [R1] \n\
/* 0802bdbe */ MOVS R2, 0xF2 @ Set R2 to 0xF2 \n\
/* 0802bdc0 */ LSLS R2, R2, 0x2 \n\
/* 0802bdc2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802bdc4 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802bdc6 */ STR R6, [R0] \n\
 \n\
branch_0802bdc8: \n\
/* 0802bdc8 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0802bdca */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802bdcc */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0802bdce */ BLE branch_0802bd50 \n\
/* 0802bdd0 */ BL func_0802c334 \n\
/* 0802bdd4 */ BL func_0802d43c \n\
/* 0802bdd8 */ BL func_0802c5c8 \n\
/* 0802bddc */ BL func_0802d250 \n\
/* 0802bde0 */ BL func_0802d9fc \n\
/* 0802bde4 */ BL func_0802db08 \n\
/* 0802bde8 */ LDR R0, =gCurrentEngineData \n\
/* 0802bdea */ LDR R0, [R0] \n\
/* 0802bdec */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 0802bdee */ LSLS R3, R3, 0x2 \n\
/* 0802bdf0 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0802bdf2 */ LDR R0, [R1] \n\
/* 0802bdf4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802bdf6 */ BLE branch_0802bdfc \n\
/* 0802bdf8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802bdfa */ STR R0, [R1] \n\
 \n\
branch_0802bdfc: \n\
/* 0802bdfc */ ADD SP, 0x14 \n\
/* 0802bdfe */ POP {R4-R6} \n\
/* 0802be00 */ POP {R0} \n\
/* 0802be02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
