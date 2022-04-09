asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f420 \n\
/* 0802f420 */ PUSH {R4-R7, LR} \n\
/* 0802f422 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802f424 */ PUSH {R7} \n\
/* 0802f426 */ SUB SP, 0x14 \n\
/* 0802f428 */ LDR R5, =D_030055d0 \n\
/* 0802f42a */ LDR R1, [R5] \n\
/* 0802f42c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802f42e */ STRB R0, [R1] \n\
/* 0802f430 */ BL func_0802f3f4 \n\
/* 0802f434 */ BL func_0800e0ec \n\
/* 0802f438 */ STR R4, [SP] \n\
/* 0802f43a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0802f43c */ STR R0, [SP, 0x4] \n\
/* 0802f43e */ STR R4, [SP, 0x8] \n\
/* 0802f440 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802f442 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802f444 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f446 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f448 */ BL func_0800e0a0 \n\
/* 0802f44c */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 0802f44e */ LSLS R0, R0, 0x2 \n\
/* 0802f450 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802f452 */ BL func_0800c660 \n\
/* 0802f456 */ LDR R1, [R5] \n\
/* 0802f458 */ STR R0, [R1, 0x4] \n\
/* 0802f45a */ LDR R1, =D_0805a3d0 \n\
/* 0802f45c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802f45e */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0802f460 */ BL func_08004b98 \n\
/* 0802f464 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802f466 */ LDR R0, =D_03005380 \n\
/* 0802f468 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802f46a */ LDR R0, [R0] \n\
/* 0802f46c */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0802f46e */ STR R2, [SP] \n\
/* 0802f470 */ LDR R2, =0x7f7 \n\
/* 0802f472 */ STR R2, [SP, 0x4] \n\
/* 0802f474 */ STR R4, [SP, 0x8] \n\
/* 0802f476 */ STR R4, [SP, 0xC] \n\
/* 0802f478 */ STR R4, [SP, 0x10] \n\
/* 0802f47a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f47c */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802f47e */ BL func_0804d160 \n\
/* 0802f482 */ LDR R1, [R5] \n\
/* 0802f484 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802f486 */ STRH R0, [R1, 0x8] \n\
/* 0802f488 */ LDR R2, =0x90e \n\
/* 0802f48a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f48c */ STRB R6, [R1] \n\
/* 0802f48e */ LDR R0, [R5] \n\
/* 0802f490 */ LDR R1, =0x90f \n\
/* 0802f492 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802f494 */ STRB R6, [R0] \n\
/* 0802f496 */ LDR R0, =D_03004b10 \n\
/* 0802f498 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802f49a */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 0802f49c */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 0802f49e */ STRH R1, [R2] \n\
/* 0802f4a0 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 0802f4a2 */ STRH R4, [R0] \n\
/* 0802f4a4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f4a6 */ LDR R0, [R2] \n\
/* 0802f4a8 */ LDR R1, =D_088e93bc \n\
/* 0802f4aa */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 0802f4ac */ STR R2, [SP] \n\
/* 0802f4ae */ LDR R2, =0x802 \n\
/* 0802f4b0 */ STR R2, [SP, 0x4] \n\
/* 0802f4b2 */ STR R4, [SP, 0x8] \n\
/* 0802f4b4 */ STR R4, [SP, 0xC] \n\
/* 0802f4b6 */ STR R4, [SP, 0x10] \n\
/* 0802f4b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f4ba */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0802f4bc */ BL func_0804d160 \n\
/* 0802f4c0 */ LDR R1, [R5] \n\
/* 0802f4c2 */ LDR R2, =0x90c \n\
/* 0802f4c4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f4c6 */ STRH R0, [R1] \n\
/* 0802f4c8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802f4ca */ LDR R0, [R2] \n\
/* 0802f4cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f4ce */ LDRSH R1, [R1, R2] \n\
/* 0802f4d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f4d2 */ BL func_0804d770 \n\
/* 0802f4d6 */ LDR R0, [R5] \n\
/* 0802f4d8 */ MOVS R1, 0x91 @ Set R1 to 0x91 \n\
/* 0802f4da */ LSLS R1, R1, 0x4 \n\
/* 0802f4dc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802f4de */ STRB R6, [R0] \n\
/* 0802f4e0 */ LDR R0, [R5] \n\
/* 0802f4e2 */ LDR R2, =0x911 \n\
/* 0802f4e4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802f4e6 */ STRB R6, [R0] \n\
/* 0802f4e8 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802f4ea */ MOV R7, R8 @ Set R7 to R8 \n\
 \n\
branch_0802f4ec: \n\
/* 0802f4ec */ LDR R0, [R7] \n\
/* 0802f4ee */ STR R4, [SP] \n\
/* 0802f4f0 */ LDR R1, =0x801 \n\
/* 0802f4f2 */ STR R1, [SP, 0x4] \n\
/* 0802f4f4 */ STR R4, [SP, 0x8] \n\
/* 0802f4f6 */ STR R4, [SP, 0xC] \n\
/* 0802f4f8 */ STR R4, [SP, 0x10] \n\
/* 0802f4fa */ LDR R1, =D_088e8f64 \n\
/* 0802f4fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f4fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f500 */ BL func_0804d160 \n\
/* 0802f504 */ LDR R1, [R5] \n\
/* 0802f506 */ LSLS R2, R6, 0x5 \n\
/* 0802f508 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f50a */ STRH R0, [R1, 0xC] \n\
/* 0802f50c */ STRB R4, [R1, 0xE] \n\
/* 0802f50e */ LDR R0, [R7] \n\
/* 0802f510 */ LDR R1, [R5] \n\
/* 0802f512 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f514 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802f516 */ LDRSH R1, [R1, R2] \n\
/* 0802f518 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f51a */ BL func_0804d770 \n\
/* 0802f51e */ ADDS R0, R6, 0x1 @ Set R0 to R6 + 0x1 \n\
/* 0802f520 */ LSLS R0, R0, 0x18 \n\
/* 0802f522 */ LSRS R6, R0, 0x18 \n\
/* 0802f524 */ CMP R6, 0x47 @ Compare R6 and 0x47 \n\
/* 0802f526 */ BLS branch_0802f4ec \n\
/* 0802f528 */ BL func_0800c3b8 \n\
/* 0802f52c */ LSLS R0, R0, 0x10 \n\
/* 0802f52e */ LSRS R0, R0, 0x10 \n\
/* 0802f530 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802f532 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802f534 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0802f536 */ BL func_0800a204 \n\
/* 0802f53a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802f53c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f53e */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802f540 */ BL func_0800ac68 \n\
/* 0802f544 */ LDR R1, =0x7f7 \n\
/* 0802f546 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802f548 */ BL func_0800aca0 \n\
/* 0802f54c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802f54e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f550 */ BL func_0800acd8 \n\
/* 0802f554 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802f556 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f558 */ BL func_0800acb0 \n\
/* 0802f55c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802f55e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f560 */ BL func_0800acbc \n\
/* 0802f564 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802f566 */ BL func_08018630 \n\
/* 0802f56a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802f56c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f56e */ BL func_08017338 \n\
/* 0802f572 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802f574 */ BL func_08018078 \n\
/* 0802f578 */ ADD SP, 0x14 \n\
/* 0802f57a */ POP {R3} \n\
/* 0802f57c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802f57e */ POP {R4-R7} \n\
/* 0802f580 */ POP {R0} \n\
/* 0802f582 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
