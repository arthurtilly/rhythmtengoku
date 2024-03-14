asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080223d0 \n\
/* 080223d0 */ PUSH {R4-R7, LR} \n\
/* 080223d2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080223d4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080223d6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080223d8 */ PUSH {R5-R7} \n\
/* 080223da */ SUB SP, 0x14 \n\
/* 080223dc */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080223de */ MOV R10, R1 @ Set R10 to R1 \n\
/* 080223e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080223e2 */ LDR R0, =gCurrentEngineData \n\
/* 080223e4 */ LDR R1, [R0] \n\
/* 080223e6 */ ADDS R1, 0x90 @ Add 0x90 to R1 \n\
/* 080223e8 */ LDRB R1, [R1] \n\
/* 080223ea */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080223ec */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080223ee */ BEQ branch_08022406 \n\
/* 080223f0 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
 \n\
branch_080223f2: \n\
/* 080223f2 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080223f4 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 080223f6 */ BHI branch_08022484 \n\
/* 080223f8 */ LDR R0, [R3] \n\
/* 080223fa */ LSLS R1, R2, 0x3 \n\
/* 080223fc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080223fe */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 08022400 */ LDRB R0, [R0] \n\
/* 08022402 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022404 */ BNE branch_080223f2 \n\
 \n\
branch_08022406: \n\
/* 08022406 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08022408 */ BHI branch_08022484 \n\
/* 0802240a */ LSLS R0, R2, 0x3 \n\
/* 0802240c */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 0802240e */ LDR R1, [R7] \n\
/* 08022410 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 08022412 */ LDR R4, =gSpriteHandler \n\
/* 08022414 */ LDR R0, [R4] \n\
/* 08022416 */ LDR R2, =mannequin_finish_anim \n\
/* 08022418 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802241a */ LSLS R1, R3, 0x2 \n\
/* 0802241c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802241e */ LDR R1, [R1] \n\
/* 08022420 */ MOVS R2, 0x32 @ Set R2 to 0x32 \n\
/* 08022422 */ STR R2, [SP] \n\
/* 08022424 */ LDR R2, =0x000048c8 \n\
/* 08022426 */ STR R2, [SP, 0x4] \n\
/* 08022428 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802242a */ STR R2, [SP, 0x8] \n\
/* 0802242c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802242e */ STR R2, [SP, 0xC] \n\
/* 08022430 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022432 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08022434 */ STR R2, [SP, 0x10] \n\
/* 08022436 */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08022438 */ BL sprite_create \n\
/* 0802243c */ STRH R0, [R6, 0x2] \n\
/* 0802243e */ LDR R4, [R4] \n\
/* 08022440 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08022442 */ LDRSH R5, [R6, R3] \n\
/* 08022444 */ LDR R0, [R7] \n\
/* 08022446 */ ADDS R0, 0xB0 @ Add 0xB0 to R0 \n\
/* 08022448 */ LDRH R0, [R0] \n\
/* 0802244a */ LSLS R0, R0, 0x8 \n\
/* 0802244c */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0802244e */ BL __divsi3 \n\
/* 08022452 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08022454 */ LSLS R2, R2, 0x10 \n\
/* 08022456 */ LSRS R2, R2, 0x10 \n\
/* 08022458 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802245a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802245c */ BL sprite_set_anim_speed \n\
/* 08022460 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08022462 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08022464 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08022466 */ BNE branch_0802246a \n\
/* 08022468 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802246a: \n\
/* 0802246a */ STRB R0, [R6] \n\
/* 0802246c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802246e */ STRH R2, [R6, 0x4] \n\
/* 08022470 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08022472 */ BL ticks_to_frames \n\
/* 08022476 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08022478 */ SUBS R0, R0, R3 @ Set R0 to R0 - R3 \n\
/* 0802247a */ LDR R2, =0x0000270f \n\
/* 0802247c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802247e */ BL clamp_int32 \n\
/* 08022482 */ STRH R0, [R6, 0x6] \n\
 \n\
branch_08022484: \n\
/* 08022484 */ ADD SP, 0x14 \n\
/* 08022486 */ POP {R3-R5} \n\
/* 08022488 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802248a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802248c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802248e */ POP {R4-R7} \n\
/* 08022490 */ POP {R0} \n\
/* 08022492 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
