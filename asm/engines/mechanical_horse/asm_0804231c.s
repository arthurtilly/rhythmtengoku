asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804231c \n\
/* 0804231c */ PUSH {R4-R7, LR} \n\
/* 0804231e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08042320 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08042322 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08042324 */ PUSH {R5-R7} \n\
/* 08042326 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08042328 */ LDR R0, =gCurrentEngineData \n\
/* 0804232a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804232c */ LDR R1, =0x26e \n\
/* 0804232e */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08042330 */ MOVS R3, 0x9E @ Set R3 to 0x9E \n\
/* 08042332 */ LSLS R3, R3, 0x2 \n\
/* 08042334 */ MOV R9, R3 @ Set R9 to R3 \n\
 \n\
branch_08042336: \n\
/* 08042336 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042338 */ LDR R3, [R0] \n\
/* 0804233a */ LSLS R0, R7, 0x1 \n\
/* 0804233c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0804233e */ LSLS R4, R0, 0x3 \n\
/* 08042340 */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 08042342 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08042344 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 08042346 */ LDRB R0, [R5] \n\
/* 08042348 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804234a */ BEQ branch_0804241a \n\
/* 0804234c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804234e */ BNE branch_080423c8 \n\
/* 08042350 */ LDR R2, =0x26f \n\
/* 08042352 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042354 */ LDRB R0, [R1] \n\
/* 08042356 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08042358 */ STRB R0, [R1] \n\
/* 0804235a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804235c */ LDR R3, [R1] \n\
/* 0804235e */ ADDS R5, R3, R4 @ Set R5 to R3 + R4 \n\
/* 08042360 */ ADDS R2, R5, R2 @ Set R2 to R5 + R2 \n\
/* 08042362 */ LDRB R2, [R2] \n\
/* 08042364 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08042366 */ BNE branch_0804241a \n\
/* 08042368 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804236a */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0804236c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804236e */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08042370 */ LSLS R1, R1, 0x8 \n\
/* 08042372 */ STR R1, [R0] \n\
/* 08042374 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08042376 */ LSLS R1, R1, 0x2 \n\
/* 08042378 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0804237a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804237c */ LDR R1, =0xffffff00 \n\
/* 0804237e */ STR R1, [R0] \n\
/* 08042380 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08042382 */ ADDS R1, R5, R3 @ Set R1 to R5 + R3 \n\
/* 08042384 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08042386 */ STRB R0, [R1] \n\
/* 08042388 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804238a */ LDR R0, [R1] \n\
/* 0804238c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804238e */ LDR R3, =0x26f \n\
/* 08042390 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08042392 */ STRB R2, [R0] \n\
/* 08042394 */ LDR R0, =gSpriteHandler \n\
/* 08042396 */ LDR R0, [R0] \n\
/* 08042398 */ LDR R2, [R1] \n\
/* 0804239a */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 0804239c */ SUBS R3, 0x3 @ Subtract 0x3 from R3 \n\
/* 0804239e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080423a0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080423a2 */ LDRSH R1, [R1, R3] \n\
/* 080423a4 */ ADD R2, R9 @ Add R9 to R2 \n\
/* 080423a6 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080423a8 */ LDR R2, [R2] \n\
/* 080423aa */ LSLS R2, R2, 0x8 \n\
/* 080423ac */ ASRS R2, R2, 0x10 \n\
/* 080423ae */ BL sprite_set_y \n\
/* 080423b2 */ B branch_0804241a \n\
\n\
.ltorg \n\
 \n\
branch_080423c8: \n\
/* 080423c8 */ MOVS R6, 0x9E @ Set R6 to 0x9E \n\
/* 080423ca */ LSLS R6, R6, 0x2 \n\
/* 080423cc */ ADDS R0, R3, R6 @ Set R0 to R3 + R6 \n\
/* 080423ce */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 080423d0 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 080423d2 */ LSLS R1, R1, 0x2 \n\
/* 080423d4 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 080423d6 */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 080423d8 */ LDR R0, [R2] \n\
/* 080423da */ LDR R1, [R3] \n\
/* 080423dc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080423de */ STR R0, [R2] \n\
/* 080423e0 */ LDR R0, [R3] \n\
/* 080423e2 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 080423e4 */ STR R0, [R3] \n\
/* 080423e6 */ LDR R0, [R2] \n\
/* 080423e8 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 080423ea */ LSLS R1, R1, 0x8 \n\
/* 080423ec */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080423ee */ BLE branch_080423f8 \n\
/* 080423f0 */ STR R1, [R2] \n\
/* 080423f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080423f4 */ STR R0, [R3] \n\
/* 080423f6 */ STRB R0, [R5] \n\
 \n\
branch_080423f8: \n\
/* 080423f8 */ LDR R0, =gSpriteHandler \n\
/* 080423fa */ LDR R0, [R0] \n\
/* 080423fc */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080423fe */ LDR R2, [R3] \n\
/* 08042400 */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 08042402 */ MOVS R3, 0x9B @ Set R3 to 0x9B \n\
/* 08042404 */ LSLS R3, R3, 0x2 \n\
/* 08042406 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08042408 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804240a */ LDRSH R1, [R1, R3] \n\
/* 0804240c */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0804240e */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08042410 */ LDR R2, [R2] \n\
/* 08042412 */ LSLS R2, R2, 0x8 \n\
/* 08042414 */ ASRS R2, R2, 0x10 \n\
/* 08042416 */ BL sprite_set_y \n\
 \n\
branch_0804241a: \n\
/* 0804241a */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 0804241c */ LSLS R0, R0, 0x18 \n\
/* 0804241e */ LSRS R7, R0, 0x18 \n\
/* 08042420 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 08042422 */ BLS branch_08042336 \n\
/* 08042424 */ POP {R3-R5} \n\
/* 08042426 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08042428 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804242a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804242c */ POP {R4-R7} \n\
/* 0804242e */ POP {R0} \n\
/* 08042430 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
