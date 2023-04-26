asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e3b8 \n\
/* 0801e3b8 */ PUSH {R4, R5, LR} \n\
/* 0801e3ba */ BL func_0801e4c4 \n\
/* 0801e3be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e3c0 */ BEQ branch_0801e4ae \n\
/* 0801e3c2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801e3c4 */ LDR R0, =gCurrentSceneData \n\
/* 0801e3c6 */ LDR R3, [R0] \n\
/* 0801e3c8 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0801e3ca */ LDRSH R1, [R3, R2] \n\
/* 0801e3cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e3ce */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0801e3d0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801e3d2 */ CMP R1, R2 @ Check R1 - R2 \n\
/* 0801e3d4 */ BLE branch_0801e3ea \n\
/* 0801e3d6 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801e3d8 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
 \n\
branch_0801e3da: \n\
/* 0801e3da */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0801e3dc */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801e3de */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e3e0 */ LDRSH R0, [R1, R3] \n\
/* 0801e3e2 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0801e3e4 */ BLE branch_0801e3ea \n\
/* 0801e3e6 */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0801e3e8 */ BLE branch_0801e3da \n\
 \n\
branch_0801e3ea: \n\
/* 0801e3ea */ LDR R0, =D_030053b8 \n\
/* 0801e3ec */ LDRH R1, [R0] \n\
/* 0801e3ee */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801e3f0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e3f2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e3f4 */ BEQ branch_0801e418 \n\
/* 0801e3f6 */ LDR R1, [R5] \n\
/* 0801e3f8 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0801e3fa */ LDRSH R2, [R1, R0] \n\
/* 0801e3fc */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0801e3fe */ LDRSH R0, [R1, R3] \n\
/* 0801e400 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e402 */ BLE branch_0801e410 \n\
/* 0801e404 */ SUBS R1, R0, 0x1 @ Set R1 to R0 - 0x1 \n\
/* 0801e406 */ B branch_0801e412 \n\
\n\
.ltorg \n\
 \n\
branch_0801e410: \n\
/* 0801e410 */ SUBS R1, R4, 0x1 @ Set R1 to R4 - 0x1 \n\
 \n\
branch_0801e412: \n\
/* 0801e412 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801e414 */ BL func_0801e4f4 \n\
 \n\
branch_0801e418: \n\
/* 0801e418 */ LDR R0, =D_030053b8 \n\
/* 0801e41a */ LDRH R1, [R0] \n\
/* 0801e41c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801e41e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e420 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e422 */ BEQ branch_0801e440 \n\
/* 0801e424 */ LDR R0, =gCurrentSceneData \n\
/* 0801e426 */ LDR R0, [R0] \n\
/* 0801e428 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0801e42a */ LDRSH R3, [R0, R1] \n\
/* 0801e42c */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801e42e */ LDRSH R2, [R0, R1] \n\
/* 0801e430 */ SUBS R0, R4, 0x1 @ Set R0 to R4 - 0x1 \n\
/* 0801e432 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801e434 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0801e436 */ BGE branch_0801e43a \n\
/* 0801e438 */ ADDS R1, R2, 0x1 @ Set R1 to R2 + 0x1 \n\
 \n\
branch_0801e43a: \n\
/* 0801e43a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0801e43c */ BL func_0801e4f4 \n\
 \n\
branch_0801e440: \n\
/* 0801e440 */ LDR R4, =D_030053b8 \n\
/* 0801e442 */ LDRH R1, [R4] \n\
/* 0801e444 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801e446 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e448 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e44a */ BEQ branch_0801e45e \n\
/* 0801e44c */ LDR R0, =gCurrentSceneData \n\
/* 0801e44e */ LDR R1, [R0] \n\
/* 0801e450 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801e452 */ LDRSH R0, [R1, R2] \n\
/* 0801e454 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801e456 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0801e458 */ LDRSH R1, [R1, R3] \n\
/* 0801e45a */ BL func_0801e4f4 \n\
 \n\
branch_0801e45e: \n\
/* 0801e45e */ LDRH R1, [R4] \n\
/* 0801e460 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0801e462 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e464 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e466 */ BEQ branch_0801e47a \n\
/* 0801e468 */ LDR R0, =gCurrentSceneData \n\
/* 0801e46a */ LDR R1, [R0] \n\
/* 0801e46c */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801e46e */ LDRSH R0, [R1, R2] \n\
/* 0801e470 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801e472 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0801e474 */ LDRSH R1, [R1, R3] \n\
/* 0801e476 */ BL func_0801e4f4 \n\
 \n\
branch_0801e47a: \n\
/* 0801e47a */ LDR R0, =D_03004afc \n\
/* 0801e47c */ LDRH R1, [R0] \n\
/* 0801e47e */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0801e480 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e482 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e484 */ BEQ branch_0801e4ae \n\
/* 0801e486 */ LDR R2, =debug_menu_entry_table \n\
/* 0801e488 */ LDR R4, =gCurrentSceneData \n\
/* 0801e48a */ LDR R1, [R4] \n\
/* 0801e48c */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 0801e48e */ LDRSH R0, [R1, R3] \n\
/* 0801e490 */ LSLS R0, R0, 0x3 \n\
/* 0801e492 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0801e494 */ LDRSH R1, [R1, R3] \n\
/* 0801e496 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801e498 */ LSLS R0, R0, 0x3 \n\
/* 0801e49a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801e49c */ LDR R0, [R0] \n\
/* 0801e49e */ BL func_08000584 \n\
/* 0801e4a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e4a4 */ BL set_pause_beatscript_scene \n\
/* 0801e4a8 */ LDR R1, [R4] \n\
/* 0801e4aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e4ac */ STR R0, [R1, 0x8] \n\
 \n\
branch_0801e4ae: \n\
/* 0801e4ae */ POP {R4, R5} \n\
/* 0801e4b0 */ POP {R0} \n\
/* 0801e4b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
