asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023ffc \n\
/* 08023ffc */ PUSH {R4-R7, LR} \n\
/* 08023ffe */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08024000 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08024002 */ PUSH {R6, R7} \n\
/* 08024004 */ SUB SP, 0xC \n\
/* 08024006 */ LDR R0, =gCurrentEngineData \n\
/* 08024008 */ LDR R0, [R0] \n\
/* 0802400a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802400c */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 0802400e */ LSLS R7, R7, 0x2 \n\
/* 08024010 */ ADD R7, R9 @ Add R9 to R7 \n\
/* 08024012 */ BL func_08024bd0 \n\
/* 08024016 */ LDR R3, =anim_drum_samurai_use_hihat \n\
/* 08024018 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802401a */ BEQ branch_0802401e \n\
/* 0802401c */ LDR R3, =anim_drum_player_use_hihat \n\
 \n\
branch_0802401e: \n\
/* 0802401e */ LDR R6, =gSpriteHandler \n\
/* 08024020 */ LDR R0, [R6] \n\
/* 08024022 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08024024 */ LDRSH R1, [R7, R2] \n\
/* 08024026 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08024028 */ STR R2, [SP] \n\
/* 0802402a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802402c */ STR R2, [SP, 0x4] \n\
/* 0802402e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024030 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08024032 */ STR R2, [SP, 0x8] \n\
/* 08024034 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08024036 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08024038 */ BL sprite_set_anim \n\
/* 0802403c */ LDR R4, [R6] \n\
/* 0802403e */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08024040 */ LDRSH R5, [R7, R0] \n\
/* 08024042 */ BL func_08024bd0 \n\
/* 08024046 */ BL func_08024bd0 \n\
/* 0802404a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802404c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802404e */ MOVS R2, 0x76 @ Set R2 to 0x76 \n\
/* 08024050 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08024052 */ BL sprite_set_x_y \n\
/* 08024056 */ LDR R0, [R6] \n\
/* 08024058 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0802405a */ LDRSH R1, [R7, R2] \n\
/* 0802405c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802405e */ STR R2, [SP] \n\
/* 08024060 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08024062 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08024064 */ BL sprite_set_playback \n\
/* 08024068 */ LDR R0, [R6] \n\
/* 0802406a */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0802406c */ LDRSH R1, [R7, R2] \n\
/* 0802406e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024070 */ BL sprite_set_anim_cel \n\
/* 08024074 */ MOVS R1, 0x1A @ Set R1 to 0x1A \n\
/* 08024076 */ LDRSH R0, [R7, R1] \n\
/* 08024078 */ LDR R1, =0x0000037a \n\
/* 0802407a */ ADD R1, R9 @ Add R9 to R1 \n\
/* 0802407c */ BL func_08023d78 \n\
/* 08024080 */ ADD SP, 0xC \n\
/* 08024082 */ POP {R3, R4} \n\
/* 08024084 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08024086 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08024088 */ POP {R4-R7} \n\
/* 0802408a */ POP {R0} \n\
/* 0802408c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
