asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f3a4 \n\
/* 0801f3a4 */ PUSH {R4-R7, LR} \n\
/* 0801f3a6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801f3a8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801f3aa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801f3ac */ PUSH {R5-R7} \n\
/* 0801f3ae */ SUB SP, 0x18 \n\
/* 0801f3b0 */ STR R0, [SP, 0x14] \n\
/* 0801f3b2 */ LDR R7, =D_030055d0 \n\
/* 0801f3b4 */ LDR R0, [R7] \n\
/* 0801f3b6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801f3b8 */ MOV R1, SP @ Set R1 to SP \n\
/* 0801f3ba */ LDRB R1, [R1, 0x14] \n\
/* 0801f3bc */ STRB R1, [R0, 0x4] \n\
/* 0801f3be */ BL func_0801f378 \n\
/* 0801f3c2 */ BL func_0800e0ec \n\
/* 0801f3c6 */ STR R4, [SP] \n\
/* 0801f3c8 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801f3ca */ STR R0, [SP, 0x4] \n\
/* 0801f3cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f3ce */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0801f3d0 */ STR R2, [SP, 0x8] \n\
/* 0801f3d2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801f3d4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801f3d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f3d8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f3da */ BL func_0800e0a0 \n\
/* 0801f3de */ STR R4, [SP] \n\
/* 0801f3e0 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0801f3e2 */ STR R0, [SP, 0x4] \n\
/* 0801f3e4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801f3e6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0801f3e8 */ STR R0, [SP, 0x8] \n\
/* 0801f3ea */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801f3ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f3ee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f3f0 */ BL func_0800e0a0 \n\
/* 0801f3f4 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 0801f3f6 */ LSLS R0, R0, 0x2 \n\
/* 0801f3f8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801f3fa */ BL func_0800c660 \n\
/* 0801f3fe */ LDR R1, [R7] \n\
/* 0801f400 */ STR R0, [R1] \n\
/* 0801f402 */ LDR R1, =D_08059f90 \n\
/* 0801f404 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f406 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f408 */ BL func_08004b98 \n\
/* 0801f40c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f40e */ LDR R5, =D_03005380 \n\
/* 0801f410 */ LDR R0, [R5] \n\
/* 0801f412 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0801f414 */ STR R2, [SP] \n\
/* 0801f416 */ STR R4, [SP, 0x4] \n\
/* 0801f418 */ STR R4, [SP, 0x8] \n\
/* 0801f41a */ STR R4, [SP, 0xC] \n\
/* 0801f41c */ STR R4, [SP, 0x10] \n\
/* 0801f41e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f420 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801f422 */ BL func_0804d160 \n\
/* 0801f426 */ LDR R1, [R7] \n\
/* 0801f428 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 0801f42a */ STRH R0, [R1] \n\
/* 0801f42c */ BL func_0801ef70 \n\
/* 0801f430 */ LDR R0, [R5] \n\
/* 0801f432 */ LDR R1, =D_088a0ca0 \n\
/* 0801f434 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801f436 */ STR R2, [SP] \n\
/* 0801f438 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0801f43a */ LSLS R2, R2, 0x7 \n\
/* 0801f43c */ STR R2, [SP, 0x4] \n\
/* 0801f43e */ STR R4, [SP, 0x8] \n\
/* 0801f440 */ STR R4, [SP, 0xC] \n\
/* 0801f442 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0801f444 */ LSLS R6, R6, 0x8 \n\
/* 0801f446 */ STR R6, [SP, 0x10] \n\
/* 0801f448 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f44a */ MOVS R3, 0xD2 @ Set R3 to 0xD2 \n\
/* 0801f44c */ BL func_0804d160 \n\
/* 0801f450 */ LDR R1, [R7] \n\
/* 0801f452 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801f454 */ ADDS R2, 0x70 @ Add 0x70 to R2 \n\
/* 0801f456 */ STRH R0, [R2] \n\
/* 0801f458 */ ADDS R1, 0x72 @ Add 0x72 to R1 \n\
/* 0801f45a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f45c */ STRB R2, [R1] \n\
/* 0801f45e */ LDR R0, [R5] \n\
/* 0801f460 */ LDR R1, =0x088a0d08 @ !PossiblePointer \n\
/* 0801f462 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 0801f464 */ STR R2, [SP] \n\
/* 0801f466 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0801f468 */ LSLS R2, R2, 0x8 \n\
/* 0801f46a */ STR R2, [SP, 0x4] \n\
/* 0801f46c */ STR R4, [SP, 0x8] \n\
/* 0801f46e */ STR R4, [SP, 0xC] \n\
/* 0801f470 */ STR R4, [SP, 0x10] \n\
/* 0801f472 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f474 */ MOVS R3, 0x48 @ Set R3 to 0x48 \n\
/* 0801f476 */ BL func_0804d160 \n\
/* 0801f47a */ LDR R1, [R7] \n\
/* 0801f47c */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0801f47e */ STRH R0, [R1] \n\
/* 0801f480 */ LDR R0, [R5] \n\
/* 0801f482 */ LDR R1, =D_088a0cf8 \n\
/* 0801f484 */ MOVS R2, 0x2D @ Set R2 to 0x2D \n\
/* 0801f486 */ STR R2, [SP] \n\
/* 0801f488 */ LDR R2, =0x0000879c @ !PossiblePointer \n\
/* 0801f48a */ STR R2, [SP, 0x4] \n\
/* 0801f48c */ STR R4, [SP, 0x8] \n\
/* 0801f48e */ STR R4, [SP, 0xC] \n\
/* 0801f490 */ STR R4, [SP, 0x10] \n\
/* 0801f492 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f494 */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 0801f496 */ BL func_0804d160 \n\
/* 0801f49a */ LDR R1, [R7] \n\
/* 0801f49c */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0801f49e */ STRH R0, [R1] \n\
/* 0801f4a0 */ LDR R0, [R5] \n\
/* 0801f4a2 */ LDR R1, =D_088a0f58 \n\
/* 0801f4a4 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 0801f4a6 */ STR R2, [SP] \n\
/* 0801f4a8 */ LDR R2, =0x00008792 \n\
/* 0801f4aa */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0801f4ac */ STR R2, [SP, 0x4] \n\
/* 0801f4ae */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801f4b0 */ STR R2, [SP, 0x8] \n\
/* 0801f4b2 */ STR R4, [SP, 0xC] \n\
/* 0801f4b4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0801f4b6 */ STR R2, [SP, 0x10] \n\
/* 0801f4b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f4ba */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0801f4bc */ BL func_0804d160 \n\
/* 0801f4c0 */ LDR R1, [R7] \n\
/* 0801f4c2 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0801f4c4 */ STRH R0, [R1] \n\
/* 0801f4c6 */ LDR R0, [R5] \n\
/* 0801f4c8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f4ca */ LDRSH R1, [R1, R2] \n\
/* 0801f4cc */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 0801f4ce */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0801f4d0 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0801f4d2 */ BL func_0804d5d4 \n\
/* 0801f4d6 */ LDR R0, [R5] \n\
/* 0801f4d8 */ LDR R1, =D_088a11a8 \n\
/* 0801f4da */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 0801f4dc */ STR R2, [SP] \n\
/* 0801f4de */ LDR R2, =0x00008791 \n\
/* 0801f4e0 */ STR R2, [SP, 0x4] \n\
/* 0801f4e2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801f4e4 */ STR R2, [SP, 0x8] \n\
/* 0801f4e6 */ STR R4, [SP, 0xC] \n\
/* 0801f4e8 */ STR R4, [SP, 0x10] \n\
/* 0801f4ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f4ec */ MOVS R3, 0x58 @ Set R3 to 0x58 \n\
/* 0801f4ee */ BL func_0804d160 \n\
/* 0801f4f2 */ LDR R1, [R7] \n\
/* 0801f4f4 */ ADDS R1, 0x7C @ Add 0x7C to R1 \n\
/* 0801f4f6 */ STRH R0, [R1] \n\
/* 0801f4f8 */ LDR R0, [R5] \n\
/* 0801f4fa */ LDR R1, =D_088a0cd0 \n\
/* 0801f4fc */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 0801f4fe */ STR R2, [SP] \n\
/* 0801f500 */ LDR R2, =0x000087a6 \n\
/* 0801f502 */ STR R2, [SP, 0x4] \n\
/* 0801f504 */ STR R4, [SP, 0x8] \n\
/* 0801f506 */ STR R4, [SP, 0xC] \n\
/* 0801f508 */ STR R6, [SP, 0x10] \n\
/* 0801f50a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f50c */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 0801f50e */ BL func_0804d160 \n\
/* 0801f512 */ LDR R1, [R7] \n\
/* 0801f514 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801f516 */ ADDS R2, 0x7E @ Add 0x7E to R2 \n\
/* 0801f518 */ STRH R0, [R2] \n\
/* 0801f51a */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0801f51c */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0801f51e */ STRH R0, [R1] \n\
/* 0801f520 */ LDR R0, [R5] \n\
/* 0801f522 */ LDR R1, =D_088a1280 \n\
/* 0801f524 */ MOVS R2, 0x5C @ Set R2 to 0x5C \n\
/* 0801f526 */ STR R2, [SP] \n\
/* 0801f528 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801f52a */ STR R2, [SP, 0x4] \n\
/* 0801f52c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801f52e */ STR R2, [SP, 0x8] \n\
/* 0801f530 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0801f532 */ STR R2, [SP, 0xC] \n\
/* 0801f534 */ STR R6, [SP, 0x10] \n\
/* 0801f536 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f538 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801f53a */ BL func_0804d160 \n\
/* 0801f53e */ LDR R2, [R7] \n\
/* 0801f540 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0801f542 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0801f544 */ STRH R0, [R1] \n\
/* 0801f546 */ SUBS R1, 0xC @ Subtract 0xC from R1 \n\
/* 0801f548 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801f54a */ LSLS R0, R0, 0x1 \n\
/* 0801f54c */ STRH R0, [R1] \n\
/* 0801f54e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801f550 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0801f552 */ STR R4, [R0] \n\
/* 0801f554 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f556 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f558 */ BL func_08017338 \n\
/* 0801f55c */ LDR R0, [R7] \n\
/* 0801f55e */ ADDS R0, 0x8A @ Add 0x8A to R0 \n\
/* 0801f560 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801f562 */ STRB R1, [R0] \n\
/* 0801f564 */ LDR R2, [SP, 0x14] \n\
/* 0801f566 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0801f568 */ BNE branch_0801f572 \n\
/* 0801f56a */ LDR R0, [R7] \n\
/* 0801f56c */ ADDS R0, 0x8A @ Add 0x8A to R0 \n\
/* 0801f56e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f570 */ STRB R1, [R0] \n\
 \n\
branch_0801f572: \n\
/* 0801f572 */ ADD SP, 0x18 \n\
/* 0801f574 */ POP {R3-R5} \n\
/* 0801f576 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801f578 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801f57a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801f57c */ POP {R4-R7} \n\
/* 0801f57e */ POP {R0} \n\
/* 0801f580 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
