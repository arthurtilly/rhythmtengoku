asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080303a4 \n\
/* 080303a4 */ PUSH {R4-R7, LR} \n\
/* 080303a6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080303a8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080303aa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080303ac */ PUSH {R5-R7} \n\
/* 080303ae */ SUB SP, 0x18 \n\
/* 080303b0 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080303b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080303b4 */ BL clappy_trio_get_anim \n\
/* 080303b8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080303ba */ LDR R4, =gSpriteHandler \n\
/* 080303bc */ LDR R0, [R4] \n\
/* 080303be */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080303c0 */ STR R2, [SP] \n\
/* 080303c2 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080303c4 */ LSLS R2, R2, 0x7 \n\
/* 080303c6 */ STR R2, [SP, 0x4] \n\
/* 080303c8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080303ca */ STR R2, [SP, 0x8] \n\
/* 080303cc */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080303ce */ STR R2, [SP, 0xC] \n\
/* 080303d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080303d2 */ STR R2, [SP, 0x10] \n\
/* 080303d4 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 080303d6 */ BL sprite_create \n\
/* 080303da */ STRH R0, [R7] \n\
/* 080303dc */ LDR R0, =gCurrentEngineData \n\
/* 080303de */ LDR R0, [R0] \n\
/* 080303e0 */ LDRB R0, [R0, 0x1] \n\
/* 080303e2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080303e4 */ BNE branch_080303f8 \n\
/* 080303e6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080303e8 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080303ea */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080303ec */ STR R1, [SP, 0x14] \n\
/* 080303ee */ B branch_0803040a \n\
\n\
.ltorg \n\
 \n\
branch_080303f8: \n\
/* 080303f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080303fa */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080303fc */ LDR R0, [R4] \n\
/* 080303fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030400 */ LDRSH R1, [R7, R3] \n\
/* 08030402 */ BL sprite_set_visible \n\
/* 08030406 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030408 */ STR R0, [SP, 0x14] \n\
 \n\
branch_0803040a: \n\
/* 0803040a */ LDR R1, =gSpriteHandler \n\
/* 0803040c */ LDR R0, [R1] \n\
/* 0803040e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030410 */ LDRSH R1, [R7, R2] \n\
/* 08030412 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08030414 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08030416 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08030418 */ SUBS R2, R3, R2 @ Set R2 to R3 - R2 \n\
/* 0803041a */ MOVS R3, 0x88 @ Set R3 to 0x88 \n\
/* 0803041c */ BL sprite_set_x_y \n\
/* 08030420 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030422 */ BL clappy_trio_get_anim \n\
/* 08030426 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030428 */ LDR R2, =gSpriteHandler \n\
/* 0803042a */ LDR R0, [R2] \n\
/* 0803042c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803042e */ ADDS R3, 0x48 @ Add 0x48 to R3 \n\
/* 08030430 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08030432 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08030434 */ STR R2, [SP] \n\
/* 08030436 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08030438 */ LSLS R2, R2, 0x7 \n\
/* 0803043a */ STR R2, [SP, 0x4] \n\
/* 0803043c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803043e */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08030440 */ STR R2, [SP, 0x8] \n\
/* 08030442 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08030444 */ STR R5, [SP, 0xC] \n\
/* 08030446 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08030448 */ STR R4, [SP, 0x10] \n\
/* 0803044a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803044c */ BL sprite_create \n\
/* 08030450 */ STRH R0, [R7, 0x2] \n\
/* 08030452 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030454 */ BL clappy_trio_get_anim \n\
/* 08030458 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803045a */ LDR R3, =gSpriteHandler \n\
/* 0803045c */ LDR R0, [R3] \n\
/* 0803045e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08030460 */ ADDS R3, 0x78 @ Add 0x78 to R3 \n\
/* 08030462 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08030464 */ STR R2, [SP] \n\
/* 08030466 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08030468 */ LSLS R2, R2, 0x7 \n\
/* 0803046a */ STR R2, [SP, 0x4] \n\
/* 0803046c */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803046e */ STR R2, [SP, 0x8] \n\
/* 08030470 */ STR R5, [SP, 0xC] \n\
/* 08030472 */ STR R4, [SP, 0x10] \n\
/* 08030474 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030476 */ BL sprite_create \n\
/* 0803047a */ STRH R0, [R7, 0x4] \n\
/* 0803047c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803047e */ BL clappy_trio_get_anim \n\
/* 08030482 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030484 */ LDR R3, =gSpriteHandler \n\
/* 08030486 */ LDR R0, [R3] \n\
/* 08030488 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803048a */ ADDS R6, 0xA8 @ Add 0xA8 to R6 \n\
/* 0803048c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803048e */ STR R2, [SP] \n\
/* 08030490 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 08030492 */ LSLS R3, R3, 0x7 \n\
/* 08030494 */ STR R3, [SP, 0x4] \n\
/* 08030496 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08030498 */ STR R2, [SP, 0x8] \n\
/* 0803049a */ STR R5, [SP, 0xC] \n\
/* 0803049c */ STR R4, [SP, 0x10] \n\
/* 0803049e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080304a0 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080304a2 */ BL sprite_create \n\
/* 080304a6 */ STRH R0, [R7, 0x6] \n\
/* 080304a8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080304aa */ STRB R3, [R7, 0x8] \n\
/* 080304ac */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080304ae */ STRB R0, [R7, 0x9] \n\
/* 080304b0 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080304b2 */ BL clappy_trio_get_anim \n\
/* 080304b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080304b8 */ LDR R2, =gSpriteHandler \n\
/* 080304ba */ LDR R0, [R2] \n\
/* 080304bc */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 080304be */ STR R2, [SP] \n\
/* 080304c0 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 080304c2 */ LSLS R3, R3, 0x7 \n\
/* 080304c4 */ STR R3, [SP, 0x4] \n\
/* 080304c6 */ STR R4, [SP, 0x8] \n\
/* 080304c8 */ STR R4, [SP, 0xC] \n\
/* 080304ca */ STR R4, [SP, 0x10] \n\
/* 080304cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080304ce */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080304d0 */ BL sprite_create \n\
/* 080304d4 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080304d6 */ BL clappy_trio_get_anim \n\
/* 080304da */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080304dc */ LDR R2, =gSpriteHandler \n\
/* 080304de */ LDR R0, [R2] \n\
/* 080304e0 */ LDR R2, [SP, 0x14] \n\
/* 080304e2 */ MOVS R3, 0x38 @ Set R3 to 0x38 \n\
/* 080304e4 */ STR R3, [SP] \n\
/* 080304e6 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 080304e8 */ LSLS R3, R3, 0x7 \n\
/* 080304ea */ STR R3, [SP, 0x4] \n\
/* 080304ec */ STR R4, [SP, 0x8] \n\
/* 080304ee */ STR R4, [SP, 0xC] \n\
/* 080304f0 */ STR R4, [SP, 0x10] \n\
/* 080304f2 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080304f4 */ BL sprite_create \n\
/* 080304f8 */ ADD SP, 0x18 \n\
/* 080304fa */ POP {R3-R5} \n\
/* 080304fc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080304fe */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08030500 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08030502 */ POP {R4-R7} \n\
/* 08030504 */ POP {R0} \n\
/* 08030506 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
