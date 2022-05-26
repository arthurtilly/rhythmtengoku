asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f22c \n\
/* 0800f22c */ PUSH {R4-R7, LR} \n\
/* 0800f22e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800f230 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800f232 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800f234 */ PUSH {R5-R7} \n\
/* 0800f236 */ SUB SP, 0x58 \n\
/* 0800f238 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800f23a */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0800f23c */ STR R0, [SP] \n\
/* 0800f23e */ LDRB R0, [R7, 0x18] \n\
/* 0800f240 */ LDR R2, =D_08935fcc \n\
/* 0800f242 */ LSLS R0, R0, 0x1 \n\
/* 0800f244 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0800f246 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f248 */ LDRSH R3, [R1, R4] \n\
/* 0800f24a */ STR R3, [SP, 0x4] \n\
/* 0800f24c */ LDR R3, =D_089361cc \n\
/* 0800f24e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800f250 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800f252 */ LDRSH R5, [R0, R1] \n\
/* 0800f254 */ STR R5, [SP, 0x8] \n\
/* 0800f256 */ LDRB R0, [R7, 0x1A] \n\
/* 0800f258 */ LSLS R0, R0, 0x1 \n\
/* 0800f25a */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0800f25c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800f25e */ LDRSH R4, [R1, R5] \n\
/* 0800f260 */ STR R4, [SP, 0xC] \n\
/* 0800f262 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800f264 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f266 */ LDRSH R1, [R0, R4] \n\
/* 0800f268 */ STR R1, [SP, 0x10] \n\
/* 0800f26a */ LDRH R0, [R7, 0x1C] \n\
/* 0800f26c */ LSLS R0, R0, 0x10 \n\
/* 0800f26e */ ASRS R0, R0, 0x11 \n\
/* 0800f270 */ LSLS R0, R0, 0x1 \n\
/* 0800f272 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0800f274 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f276 */ LDRSH R5, [R1, R4] \n\
/* 0800f278 */ STR R5, [SP, 0x14] \n\
/* 0800f27a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800f27c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800f27e */ LDRSH R5, [R0, R1] \n\
/* 0800f280 */ STR R5, [SP, 0x18] \n\
/* 0800f282 */ LDRH R0, [R7, 0x1E] \n\
/* 0800f284 */ LSLS R0, R0, 0x10 \n\
/* 0800f286 */ ASRS R0, R0, 0x11 \n\
/* 0800f288 */ LSLS R0, R0, 0x1 \n\
/* 0800f28a */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 0800f28c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800f28e */ LDRSH R4, [R2, R5] \n\
/* 0800f290 */ STR R4, [SP, 0x1C] \n\
/* 0800f292 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800f294 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f296 */ LDRSH R1, [R0, R2] \n\
/* 0800f298 */ STR R1, [SP, 0x20] \n\
/* 0800f29a */ LDR R3, [SP] \n\
/* 0800f29c */ LDR R0, [R3, 0x4] \n\
/* 0800f29e */ LSLS R0, R0, 0x8 \n\
/* 0800f2a0 */ LDR R5, [SP, 0xC] \n\
/* 0800f2a2 */ NEGS R4, R5 @ Set R4 to -R5 \n\
/* 0800f2a4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800f2a6 */ BL fast_divsi3 \n\
/* 0800f2aa */ STR R0, [SP, 0x24] \n\
/* 0800f2ac */ LDR R1, [SP, 0x18] \n\
/* 0800f2ae */ LSLS R0, R1, 0x4 \n\
/* 0800f2b0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800f2b2 */ LSLS R0, R0, 0xB \n\
/* 0800f2b4 */ LDR R1, [SP, 0x14] \n\
/* 0800f2b6 */ BL Div \n\
/* 0800f2ba */ STR R0, [SP, 0x28] \n\
/* 0800f2bc */ LDR R2, [SP] \n\
/* 0800f2be */ LDR R0, [R2, 0x4] \n\
/* 0800f2c0 */ LDR R3, [SP, 0x10] \n\
/* 0800f2c2 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0800f2c4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800f2c6 */ BL fast_divsi3 \n\
/* 0800f2ca */ STR R0, [SP, 0x2C] \n\
/* 0800f2cc */ LDR R4, [SP, 0x28] \n\
/* 0800f2ce */ LDR R5, [SP, 0x1C] \n\
/* 0800f2d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f2d2 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800f2d4 */ LDR R1, [SP, 0x20] \n\
/* 0800f2d6 */ BL fast_divsi3 \n\
/* 0800f2da */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f2dc */ NEGS R0, R4 @ Set R0 to -R4 \n\
/* 0800f2de */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0800f2e0 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0800f2e2 */ BL fast_divsi3 \n\
/* 0800f2e6 */ STR R0, [SP, 0x30] \n\
/* 0800f2e8 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f2ea */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 0800f2ec */ LDRH R0, [R0] \n\
/* 0800f2ee */ LDR R1, [SP, 0x30] \n\
/* 0800f2f0 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800f2f2 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800f2f4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800f2f6 */ LDR R2, [SP, 0x28] \n\
/* 0800f2f8 */ LDR R3, [SP, 0x14] \n\
/* 0800f2fa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800f2fc */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0800f2fe */ LDR R1, [SP, 0x18] \n\
/* 0800f300 */ BL fast_divsi3 \n\
/* 0800f304 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800f306 */ STR R0, [SP, 0x34] \n\
/* 0800f308 */ MOVS R4, 0x1A @ Set R4 to 0x1A \n\
/* 0800f30a */ LDRSH R1, [R7, R4] \n\
/* 0800f30c */ MOVS R5, 0x1E @ Set R5 to 0x1E \n\
/* 0800f30e */ LDRSH R0, [R7, R5] \n\
/* 0800f310 */ CMN R1, R0 @ Check R1 + R0 \n\
/* 0800f312 */ BLT branch_0800f334 \n\
/* 0800f314 */ LDR R1, [SP, 0x28] \n\
/* 0800f316 */ LDR R2, [SP, 0xC] \n\
/* 0800f318 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800f31a */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800f31c */ LDR R1, [SP, 0x10] \n\
/* 0800f31e */ BL fast_divsi3 \n\
/* 0800f322 */ ASRS R0, R0, 0x8 \n\
/* 0800f324 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 0800f326 */ STR R0, [SP, 0x38] \n\
/* 0800f328 */ B branch_0800f338 \n\
\n\
.ltorg \n\
 \n\
branch_0800f334: \n\
/* 0800f334 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800f336 */ STR R3, [SP, 0x38] \n\
 \n\
branch_0800f338: \n\
/* 0800f338 */ LDR R5, [R7, 0x8] \n\
/* 0800f33a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f33c */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 0800f33e */ LDRH R6, [R0] \n\
/* 0800f340 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0800f342 */ LDR R4, [SP, 0x18] \n\
/* 0800f344 */ LSLS R4, R4, 0x4 \n\
/* 0800f346 */ STR R4, [SP, 0x50] \n\
/* 0800f348 */ STR R0, [SP, 0x44] \n\
/* 0800f34a */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0800f34c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0800f34e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800f350 */ LDR R2, [SP, 0x8] \n\
/* 0800f352 */ LDR R3, [SP, 0x10] \n\
/* 0800f354 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800f356 */ MULS R1, R3 @ Multiply R1 by R3 \n\
/* 0800f358 */ STR R1, [SP, 0x4C] \n\
/* 0800f35a */ LDR R0, [SP, 0x4] \n\
/* 0800f35c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f35e */ MULS R4, R3 @ Multiply R4 by R3 \n\
/* 0800f360 */ STR R4, [SP, 0x48] \n\
/* 0800f362 */ NEGS R1, R2 @ Set R1 to -R2 \n\
/* 0800f364 */ STR R1, [SP, 0x40] \n\
/* 0800f366 */ NEGS R2, R0 @ Set R2 to -R0 \n\
/* 0800f368 */ STR R2, [SP, 0x3C] \n\
/* 0800f36a */ LDR R3, [SP, 0x20] \n\
/* 0800f36c */ LSLS R3, R3, 0x2 \n\
/* 0800f36e */ STR R3, [SP, 0x54] \n\
/* 0800f370 */ LDR R4, [SP, 0x44] \n\
/* 0800f372 */ LDRH R4, [R4] \n\
/* 0800f374 */ CMP R6, R4 @ Check R6 - R4 \n\
/* 0800f376 */ BGE branch_0800f41c \n\
/* 0800f378 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f37a */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_0800f37c: \n\
/* 0800f37c */ LDR R1, [SP, 0x38] \n\
/* 0800f37e */ CMP R6, R1 @ Check R6 - R1 \n\
/* 0800f380 */ BGE branch_0800f390 \n\
/* 0800f382 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800f384 */ STR R2, [R5, 0xC] \n\
/* 0800f386 */ STR R2, [R5, 0x8] \n\
/* 0800f388 */ STRH R2, [R5, 0x4] \n\
/* 0800f38a */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0800f38c */ STRH R3, [R5] \n\
/* 0800f38e */ B branch_0800f40c \n\
 \n\
branch_0800f390: \n\
/* 0800f390 */ LDR R4, [SP, 0x28] \n\
/* 0800f392 */ LDR R0, [SP, 0xC] \n\
/* 0800f394 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800f396 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f398 */ LDR R2, [SP, 0x10] \n\
/* 0800f39a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800f39c */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800f39e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800f3a0 */ ASRS R1, R1, 0x8 \n\
/* 0800f3a2 */ LDR R3, [SP, 0x24] \n\
/* 0800f3a4 */ LSLS R0, R3, 0x8 \n\
/* 0800f3a6 */ BL fast_divsi3 \n\
/* 0800f3aa */ LDR R1, [SP, 0xC] \n\
/* 0800f3ac */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f3ae */ MULS R4, R1 @ Multiply R4 by R1 \n\
/* 0800f3b0 */ ASRS R4, R4, 0x8 \n\
/* 0800f3b2 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800f3b4 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0800f3b6 */ ASRS R2, R2, 0x8 \n\
/* 0800f3b8 */ LDR R3, [SP, 0x2C] \n\
/* 0800f3ba */ SUBS R2, R3, R2 @ Set R2 to R3 - R2 \n\
/* 0800f3bc */ LDR R0, [SP, 0x34] \n\
/* 0800f3be */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800f3c0 */ MULS R3, R4 @ Multiply R3 by R4 \n\
/* 0800f3c2 */ ASRS R3, R3, 0x8 \n\
/* 0800f3c4 */ LDR R0, [SP, 0x8] \n\
/* 0800f3c6 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800f3c8 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f3ca */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0800f3cc */ LDR R1, [SP, 0x4] \n\
/* 0800f3ce */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800f3d0 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800f3d2 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800f3d4 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0800f3d6 */ ASRS R0, R0, 0x8 \n\
/* 0800f3d8 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800f3da */ LDR R1, [SP] \n\
/* 0800f3dc */ LDR R0, [R1] \n\
/* 0800f3de */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0800f3e0 */ STR R0, [R5, 0x8] \n\
/* 0800f3e2 */ LDR R0, [SP, 0x4] \n\
/* 0800f3e4 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800f3e6 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800f3e8 */ LDR R2, [SP, 0x8] \n\
/* 0800f3ea */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800f3ec */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800f3ee */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800f3f0 */ ASRS R1, R1, 0x8 \n\
/* 0800f3f2 */ LDR R3, [SP] \n\
/* 0800f3f4 */ LDR R0, [R3, 0x8] \n\
/* 0800f3f6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f3f8 */ STR R0, [R5, 0xC] \n\
/* 0800f3fa */ NEGS R0, R4 @ Set R0 to -R4 \n\
/* 0800f3fc */ LDR R1, [SP, 0x4] \n\
/* 0800f3fe */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800f400 */ ASRS R0, R0, 0x8 \n\
/* 0800f402 */ STRH R0, [R5] \n\
/* 0800f404 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f406 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800f408 */ ASRS R0, R0, 0x8 \n\
/* 0800f40a */ STRH R0, [R5, 0x4] \n\
 \n\
branch_0800f40c: \n\
/* 0800f40c */ LDR R2, [SP, 0x30] \n\
/* 0800f40e */ ADD R9, R2 @ Add R2 to R9 \n\
/* 0800f410 */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0800f412 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800f414 */ LDR R3, [SP, 0x44] \n\
/* 0800f416 */ LDRH R3, [R3] \n\
/* 0800f418 */ CMP R6, R3 @ Check R6 - R3 \n\
/* 0800f41a */ BLT branch_0800f37c \n\
 \n\
branch_0800f41c: \n\
/* 0800f41c */ LDR R4, [SP, 0x4C] \n\
/* 0800f41e */ ASRS R2, R4, 0x8 \n\
/* 0800f420 */ STRH R2, [R7, 0x20] \n\
/* 0800f422 */ MOV R5, SP @ Set R5 to SP \n\
/* 0800f424 */ LDRH R0, [R5, 0xC] \n\
/* 0800f426 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800f428 */ STRH R0, [R5, 0x2] \n\
/* 0800f42a */ LDR R3, [SP, 0x48] \n\
/* 0800f42c */ ASRS R1, R3, 0x8 \n\
/* 0800f42e */ STRH R1, [R5, 0x4] \n\
/* 0800f430 */ LDR R4, [SP, 0x40] \n\
/* 0800f432 */ LDR R5, [SP, 0xC] \n\
/* 0800f434 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f436 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800f438 */ ASRS R0, R0, 0x8 \n\
/* 0800f43a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800f43c */ STRH R0, [R3, 0x6] \n\
/* 0800f43e */ MOV R4, SP @ Set R4 to SP \n\
/* 0800f440 */ LDRH R4, [R4, 0x10] \n\
/* 0800f442 */ STRH R4, [R3, 0x8] \n\
/* 0800f444 */ LDR R3, [SP, 0x3C] \n\
/* 0800f446 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800f448 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800f44a */ ASRS R0, R0, 0x8 \n\
/* 0800f44c */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800f44e */ STRH R0, [R4, 0xA] \n\
/* 0800f450 */ STRH R3, [R4, 0xC] \n\
/* 0800f452 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f454 */ STRH R0, [R4, 0xE] \n\
/* 0800f456 */ MOV R0, SP @ Set R0 to SP \n\
/* 0800f458 */ LDRH R0, [R0, 0x8] \n\
/* 0800f45a */ STRH R0, [R4, 0x10] \n\
/* 0800f45c */ STR R2, [R7, 0x34] \n\
/* 0800f45e */ STR R5, [R7, 0x38] \n\
/* 0800f460 */ STR R1, [R7, 0x3C] \n\
/* 0800f462 */ LDR R1, [SP, 0x50] \n\
/* 0800f464 */ LDR R2, [SP, 0x18] \n\
/* 0800f466 */ SUBS R0, R1, R2 @ Set R0 to R1 - R2 \n\
/* 0800f468 */ LSLS R0, R0, 0x3 \n\
/* 0800f46a */ LDR R1, [SP, 0x14] \n\
/* 0800f46c */ BL fast_divsi3 \n\
/* 0800f470 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f472 */ BGE branch_0800f476 \n\
/* 0800f474 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800f476: \n\
/* 0800f476 */ STR R0, [R7, 0x40] \n\
/* 0800f478 */ LDR R3, [SP, 0x54] \n\
/* 0800f47a */ LDR R4, [SP, 0x20] \n\
/* 0800f47c */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 0800f47e */ LSLS R0, R0, 0x8 \n\
/* 0800f480 */ LDR R1, [SP, 0x1C] \n\
/* 0800f482 */ BL fast_divsi3 \n\
/* 0800f486 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f488 */ BGE branch_0800f48c \n\
/* 0800f48a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800f48c: \n\
/* 0800f48c */ STR R0, [R7, 0x44] \n\
/* 0800f48e */ ADD SP, 0x58 \n\
/* 0800f490 */ POP {R3-R5} \n\
/* 0800f492 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f494 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800f496 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800f498 */ POP {R4-R7} \n\
/* 0800f49a */ POP {R0} \n\
/* 0800f49c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
