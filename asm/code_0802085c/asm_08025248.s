asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025248 \n\
/* 08025248 */ PUSH {R4-R7, LR} \n\
/* 0802524a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802524c */ PUSH {R7} \n\
/* 0802524e */ SUB SP, 0x14 \n\
/* 08025250 */ LDR R0, =D_030055d0 \n\
/* 08025252 */ LDR R1, [R0] \n\
/* 08025254 */ LDR R2, =0x000013fa \n\
/* 08025256 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025258 */ MOVS R2, 0xFF @ Set R2 to 0xFF \n\
/* 0802525a */ STRB R2, [R1] \n\
/* 0802525c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802525e */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08025260 */ LDR R3, =D_089e0698 \n\
/* 08025262 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08025264 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 08025266 */ LDR R2, =0x000013fb \n\
/* 08025268 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_0802526a: \n\
/* 0802526a */ LDR R0, [R3] \n\
/* 0802526c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802526e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08025270 */ STRB R1, [R0] \n\
/* 08025272 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08025274 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08025276 */ BLS branch_0802526a \n\
/* 08025278 */ LDR R0, [R7] \n\
/* 0802527a */ LDR R1, =0x00001414 \n\
/* 0802527c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802527e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025280 */ STRB R2, [R0] \n\
/* 08025282 */ LDR R1, [R7] \n\
/* 08025284 */ LDR R3, =0x00001416 \n\
/* 08025286 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08025288 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802528a */ STRH R2, [R0] \n\
/* 0802528c */ LDRB R0, [R1] \n\
/* 0802528e */ LSLS R0, R0, 0x2 \n\
/* 08025290 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08025292 */ LDR R0, [R0] \n\
/* 08025294 */ LDR R2, =0x0000149c \n\
/* 08025296 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025298 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0802529a */ LSLS R4, R4, 0x2 \n\
/* 0802529c */ STR R4, [SP] \n\
/* 0802529e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080252a0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080252a2 */ BL func_0800186c \n\
/* 080252a6 */ LDR R5, =D_089e06a4 \n\
/* 080252a8 */ LDR R1, [R7] \n\
/* 080252aa */ LDRB R0, [R1] \n\
/* 080252ac */ LSLS R0, R0, 0x2 \n\
/* 080252ae */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080252b0 */ LDR R0, [R0] \n\
/* 080252b2 */ LDR R3, =0x0000141c \n\
/* 080252b4 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080252b6 */ STR R4, [SP] \n\
/* 080252b8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080252ba */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080252bc */ BL func_0800186c \n\
/* 080252c0 */ LDR R1, [R7] \n\
/* 080252c2 */ LDRB R0, [R1] \n\
/* 080252c4 */ LSLS R0, R0, 0x2 \n\
/* 080252c6 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080252c8 */ LDR R0, [R0] \n\
/* 080252ca */ LDR R2, =0x0000171c \n\
/* 080252cc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080252ce */ STR R4, [SP] \n\
/* 080252d0 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080252d2 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080252d4 */ BL func_0800186c \n\
/* 080252d8 */ LDR R1, [R7] \n\
/* 080252da */ LDRB R0, [R1] \n\
/* 080252dc */ LSLS R0, R0, 0x2 \n\
/* 080252de */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080252e0 */ LDR R0, [R0] \n\
/* 080252e2 */ LDR R3, =0x0000161c \n\
/* 080252e4 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080252e6 */ STR R4, [SP] \n\
/* 080252e8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080252ea */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080252ec */ BL func_0800186c \n\
/* 080252f0 */ LDR R1, [R7] \n\
/* 080252f2 */ LDRB R0, [R1] \n\
/* 080252f4 */ LSLS R0, R0, 0x2 \n\
/* 080252f6 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080252f8 */ LDR R0, [R0] \n\
/* 080252fa */ LDR R2, =0x0000179c \n\
/* 080252fc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080252fe */ STR R4, [SP] \n\
/* 08025300 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08025302 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08025304 */ BL func_0800186c \n\
/* 08025308 */ LDR R1, [R7] \n\
/* 0802530a */ LDRB R0, [R1] \n\
/* 0802530c */ LSLS R0, R0, 0x2 \n\
/* 0802530e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08025310 */ LDR R0, [R0] \n\
/* 08025312 */ LDR R3, =0x0000169c \n\
/* 08025314 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08025316 */ STR R4, [SP] \n\
/* 08025318 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802531a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802531c */ BL func_0800186c \n\
/* 08025320 */ LDR R2, =0x0000294a \n\
/* 08025322 */ LDR R1, [R7] \n\
/* 08025324 */ LDRB R0, [R1] \n\
/* 08025326 */ LSLS R0, R0, 0x2 \n\
/* 08025328 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0802532a */ LDR R3, [R0] \n\
/* 0802532c */ LDR R0, =0x0000159c \n\
/* 0802532e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025330 */ STR R1, [SP] \n\
/* 08025332 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08025334 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08025336 */ BL func_08001e4c \n\
/* 0802533a */ LDR R2, =0x00007fff \n\
/* 0802533c */ LDR R1, [R7] \n\
/* 0802533e */ LDRB R0, [R1] \n\
/* 08025340 */ LSLS R0, R0, 0x2 \n\
/* 08025342 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08025344 */ LDR R3, [R0] \n\
/* 08025346 */ LDR R0, =0x0000151c \n\
/* 08025348 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802534a */ STR R1, [SP] \n\
/* 0802534c */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0802534e */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08025350 */ BL func_08001e4c \n\
/* 08025354 */ LDR R0, [R7] \n\
/* 08025356 */ LDR R1, =0x000013f9 \n\
/* 08025358 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802535a */ STRB R6, [R0] \n\
/* 0802535c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802535e */ LDR R7, =D_03005380 \n\
/* 08025360 */ MOVS R5, 0xC0 @ Set R5 to 0xC0 \n\
/* 08025362 */ LSLS R5, R5, 0xC \n\
 \n\
branch_08025364: \n\
/* 08025364 */ MOVS R0, 0x29 @ Set R0 to 0x29 \n\
/* 08025366 */ BL func_08025228 \n\
/* 0802536a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802536c */ LDR R0, [R7] \n\
/* 0802536e */ ASRS R3, R5, 0x10 \n\
/* 08025370 */ MOVS R2, 0x15 @ Set R2 to 0x15 \n\
/* 08025372 */ STR R2, [SP] \n\
/* 08025374 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08025376 */ LSLS R2, R2, 0x3 \n\
/* 08025378 */ STR R2, [SP, 0x4] \n\
/* 0802537a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802537c */ STR R2, [SP, 0x8] \n\
/* 0802537e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025380 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08025382 */ STR R2, [SP, 0xC] \n\
/* 08025384 */ LDR R2, =0x00008002 \n\
/* 08025386 */ STR R2, [SP, 0x10] \n\
/* 08025388 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802538a */ BL func_0804d160 \n\
/* 0802538e */ LDR R6, =D_030055d0 \n\
/* 08025390 */ LDR R1, [R6] \n\
/* 08025392 */ LSLS R2, R4, 0x1 \n\
/* 08025394 */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 08025396 */ LSLS R3, R3, 0x5 \n\
/* 08025398 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802539a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802539c */ STRH R0, [R1] \n\
/* 0802539e */ LDR R0, [R7] \n\
/* 080253a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080253a2 */ LDRSH R1, [R1, R2] \n\
/* 080253a4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080253a6 */ BL func_0804d7b4 \n\
/* 080253aa */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 080253ac */ LSLS R3, R3, 0xF \n\
/* 080253ae */ ADDS R5, R5, R3 @ Set R5 to R5 + R3 \n\
/* 080253b0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080253b2 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 080253b4 */ BLS branch_08025364 \n\
/* 080253b6 */ LDR R0, [R6] \n\
/* 080253b8 */ LDR R1, =0x00001408 \n\
/* 080253ba */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080253bc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080253be */ STRB R1, [R0] \n\
/* 080253c0 */ LDR R2, =D_03004b10 \n\
/* 080253c2 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080253c4 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 080253c6 */ LDR R0, =0x000002bf \n\
/* 080253c8 */ STRH R0, [R1] \n\
/* 080253ca */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080253cc */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 080253ce */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080253d0 */ STRH R3, [R0] \n\
/* 080253d2 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 080253d4 */ LDR R0, =0x00001008 \n\
/* 080253d6 */ STRH R0, [R1] \n\
/* 080253d8 */ LDR R0, [R6] \n\
/* 080253da */ LDR R2, =0x0000140c \n\
/* 080253dc */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080253de */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080253e0 */ STR R3, [R1] \n\
/* 080253e2 */ LDR R1, =0x00001410 \n\
/* 080253e4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080253e6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080253e8 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080253ea */ STR R1, [R0] \n\
/* 080253ec */ ADD SP, 0x14 \n\
/* 080253ee */ POP {R3} \n\
/* 080253f0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080253f2 */ POP {R4-R7} \n\
/* 080253f4 */ POP {R0} \n\
/* 080253f6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
