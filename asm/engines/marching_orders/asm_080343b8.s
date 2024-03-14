asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080343b8 \n\
/* 080343b8 */ PUSH {R4-R7, LR} \n\
/* 080343ba */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080343bc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080343be */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080343c0 */ PUSH {R5-R7} \n\
/* 080343c2 */ SUB SP, 0xC \n\
/* 080343c4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080343c6 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 080343c8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080343ca */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080343cc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080343ce */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080343d0 */ MOV R10, R6 @ Set R10 to R6 \n\
/* 080343d2 */ MOV R8, R6 @ Set R8 to R6 \n\
/* 080343d4 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 080343d6 */ BHI branch_080344be \n\
/* 080343d8 */ LSLS R0, R7, 0x2 \n\
/* 080343da */ LDR R1, =jtbl_080343e8 \n\
/* 080343dc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080343de */ LDR R0, [R0] \n\
/* 080343e0 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_080343e8: \n\
.word jump_08034410 \n\
.word jump_0803441e \n\
.word jump_08034422 \n\
.word jump_08034426 \n\
.word jump_08034454 \n\
.word jump_0803448a \n\
.word jump_0803448e \n\
.word jump_08034492 \n\
.word jump_080344a2 \n\
.word jump_080344b6 \n\
jump_08034410: \n\
/* 08034410 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08034412 */ BL func_08034100 \n\
/* 08034416 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08034418 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803441a */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0803441c */ B branch_080344be \n\
jump_0803441e: \n\
/* 0803441e */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08034420 */ B branch_080344b8 \n\
jump_08034422: \n\
/* 08034422 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08034424 */ B branch_080344b8 \n\
jump_08034426: \n\
/* 08034426 */ LDRH R0, [R5, 0x6] \n\
/* 08034428 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803442a */ BEQ branch_08034434 \n\
/* 0803442c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803442e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034430 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08034432 */ B branch_08034450 \n\
 \n\
branch_08034434: \n\
/* 08034434 */ LDR R0, =gCurrentEngineData \n\
/* 08034436 */ LDR R0, [R0] \n\
/* 08034438 */ ADDS R0, 0x45 @ Add 0x45 to R0 \n\
/* 0803443a */ LDRB R0, [R0] \n\
/* 0803443c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803443e */ BEQ branch_08034448 \n\
/* 08034440 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08034442 */ B branch_0803444a \n\
\n\
.ltorg \n\
 \n\
branch_08034448: \n\
/* 08034448 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0803444a: \n\
/* 0803444a */ BL func_08034100 \n\
/* 0803444e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_08034450: \n\
/* 08034450 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08034452 */ B branch_08034482 \n\
jump_08034454: \n\
/* 08034454 */ LDRH R0, [R5, 0x6] \n\
/* 08034456 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034458 */ BEQ branch_08034462 \n\
/* 0803445a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803445c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803445e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08034460 */ B branch_08034480 \n\
 \n\
branch_08034462: \n\
/* 08034462 */ LDR R0, =gCurrentEngineData \n\
/* 08034464 */ LDR R0, [R0] \n\
/* 08034466 */ ADDS R0, 0x45 @ Add 0x45 to R0 \n\
/* 08034468 */ LDRB R0, [R0] \n\
/* 0803446a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803446c */ BEQ branch_08034478 \n\
/* 0803446e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08034470 */ B branch_0803447a \n\
\n\
.ltorg \n\
 \n\
branch_08034478: \n\
/* 08034478 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803447a: \n\
/* 0803447a */ BL func_08034100 \n\
/* 0803447e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_08034480: \n\
/* 08034480 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
 \n\
branch_08034482: \n\
/* 08034482 */ BL func_08034100 \n\
/* 08034486 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08034488 */ B branch_080344be \n\
jump_0803448a: \n\
/* 0803448a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803448c */ B branch_080344b8 \n\
jump_0803448e: \n\
/* 0803448e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08034490 */ B branch_080344b8 \n\
jump_08034492: \n\
/* 08034492 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08034494 */ BL func_08034100 \n\
/* 08034498 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803449a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803449c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803449e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080344a0 */ B branch_080344b0 \n\
jump_080344a2: \n\
/* 080344a2 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080344a4 */ BL func_08034100 \n\
/* 080344a8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080344aa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080344ac */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080344ae */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_080344b0: \n\
/* 080344b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080344b2 */ STRB R0, [R5, 0x8] \n\
/* 080344b4 */ B branch_080344be \n\
jump_080344b6: \n\
/* 080344b6 */ MOVS R0, 0xD @ Set R0 to 0xD \n\
 \n\
branch_080344b8: \n\
/* 080344b8 */ BL func_08034100 \n\
/* 080344bc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_080344be: \n\
/* 080344be */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080344c0 */ BEQ branch_080344de \n\
/* 080344c2 */ LDR R0, =gSpriteHandler \n\
/* 080344c4 */ LDR R0, [R0] \n\
/* 080344c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080344c8 */ LDRSH R1, [R5, R2] \n\
/* 080344ca */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080344cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080344ce */ STR R2, [SP] \n\
/* 080344d0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080344d2 */ STR R2, [SP, 0x4] \n\
/* 080344d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080344d6 */ STR R2, [SP, 0x8] \n\
/* 080344d8 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080344da */ BL sprite_set_anim \n\
 \n\
branch_080344de: \n\
/* 080344de */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080344e0 */ BEQ branch_080344fe \n\
/* 080344e2 */ LDR R0, =gSpriteHandler \n\
/* 080344e4 */ LDR R0, [R0] \n\
/* 080344e6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080344e8 */ LDRSH R1, [R5, R2] \n\
/* 080344ea */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080344ec */ STR R2, [SP] \n\
/* 080344ee */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080344f0 */ STR R2, [SP, 0x4] \n\
/* 080344f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080344f4 */ STR R2, [SP, 0x8] \n\
/* 080344f6 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080344f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080344fa */ BL sprite_set_anim \n\
 \n\
branch_080344fe: \n\
/* 080344fe */ LDR R0, =gCurrentEngineData \n\
/* 08034500 */ LDR R0, [R0] \n\
/* 08034502 */ LDRB R0, [R0] \n\
/* 08034504 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08034506 */ BEQ branch_08034516 \n\
/* 08034508 */ LDR R0, =gSpriteHandler \n\
/* 0803450a */ LDR R0, [R0] \n\
/* 0803450c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803450e */ LDRSH R1, [R5, R2] \n\
/* 08034510 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08034512 */ BL sprite_set_visible \n\
 \n\
branch_08034516: \n\
/* 08034516 */ STRB R7, [R5, 0x4] \n\
/* 08034518 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0803451a */ STRH R0, [R5, 0x6] \n\
/* 0803451c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803451e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08034520 */ BEQ branch_0803452c \n\
/* 08034522 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034524 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08034526 */ LSLS R1, R1, 0x1 \n\
/* 08034528 */ BL play_sound_w_pitch_volume \n\
 \n\
branch_0803452c: \n\
/* 0803452c */ ADD SP, 0xC \n\
/* 0803452e */ POP {R3-R5} \n\
/* 08034530 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08034532 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08034534 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08034536 */ POP {R4-R7} \n\
/* 08034538 */ POP {R0} \n\
/* 0803453a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
