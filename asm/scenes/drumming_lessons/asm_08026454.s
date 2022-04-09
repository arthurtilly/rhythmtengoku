asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026454 \n\
/* 08026454 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026456 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 08026458 */ BL func_0804d160 \n\
/* 0802645c */ STRH R0, [R7] \n\
/* 0802645e */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08026460 */ BL func_08025228 \n\
/* 08026464 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026466 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026468 */ LDR R0, [R3] \n\
/* 0802646a */ STR R4, [SP] \n\
/* 0802646c */ LDR R2, =0x0000479c \n\
/* 0802646e */ STR R2, [SP, 0x4] \n\
/* 08026470 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026472 */ STR R3, [SP, 0x8] \n\
/* 08026474 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08026476 */ STR R2, [SP, 0xC] \n\
/* 08026478 */ STR R5, [SP, 0x10] \n\
/* 0802647a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802647c */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0802647e */ BL func_0804d160 \n\
/* 08026482 */ STRH R0, [R7, 0x2] \n\
/* 08026484 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08026486 */ BL func_08025228 \n\
/* 0802648a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802648c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802648e */ LDR R0, [R3] \n\
/* 08026490 */ STR R4, [SP] \n\
/* 08026492 */ LDR R2, =0x000047a6 \n\
/* 08026494 */ STR R2, [SP, 0x4] \n\
/* 08026496 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026498 */ STR R3, [SP, 0x8] \n\
/* 0802649a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802649c */ STR R2, [SP, 0xC] \n\
/* 0802649e */ STR R5, [SP, 0x10] \n\
/* 080264a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080264a2 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 080264a4 */ BL func_0804d160 \n\
/* 080264a8 */ STRH R0, [R7, 0x8] \n\
/* 080264aa */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 080264ac */ BL func_08025228 \n\
/* 080264b0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080264b2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080264b4 */ LDR R0, [R3] \n\
/* 080264b6 */ STR R4, [SP] \n\
/* 080264b8 */ STR R6, [SP, 0x4] \n\
/* 080264ba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080264bc */ STR R2, [SP, 0x8] \n\
/* 080264be */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080264c0 */ STR R3, [SP, 0xC] \n\
/* 080264c2 */ STR R5, [SP, 0x10] \n\
/* 080264c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080264c6 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 080264c8 */ BL func_0804d160 \n\
/* 080264cc */ STRH R0, [R7, 0x4] \n\
/* 080264ce */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 080264d0 */ BL func_08025228 \n\
/* 080264d4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080264d6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080264d8 */ LDR R0, [R2] \n\
/* 080264da */ STR R4, [SP] \n\
/* 080264dc */ STR R6, [SP, 0x4] \n\
/* 080264de */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080264e0 */ STR R3, [SP, 0x8] \n\
/* 080264e2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080264e4 */ STR R2, [SP, 0xC] \n\
/* 080264e6 */ STR R5, [SP, 0x10] \n\
/* 080264e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080264ea */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 080264ec */ BL func_0804d160 \n\
/* 080264f0 */ STRH R0, [R7, 0x6] \n\
/* 080264f2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080264f4 */ LDRSH R0, [R7, R3] \n\
/* 080264f6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080264f8 */ BL func_08025fbc \n\
/* 080264fc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080264fe */ LDRSH R0, [R7, R1] \n\
/* 08026500 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026502 */ BL func_08025fbc \n\
/* 08026506 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08026508 */ LDRSH R0, [R7, R2] \n\
/* 0802650a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802650c */ BL func_08025fbc \n\
/* 08026510 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08026512 */ LDRSH R0, [R7, R3] \n\
/* 08026514 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026516 */ BL func_08025fbc \n\
/* 0802651a */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0802651c */ LDRSH R0, [R7, R1] \n\
/* 0802651e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026520 */ BL func_08025fbc \n\
/* 08026524 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 08026526 */ BL func_08025228 \n\
/* 0802652a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802652c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802652e */ LDR R0, [R2] \n\
/* 08026530 */ MOVS R2, 0x8B @ Set R2 to 0x8B \n\
/* 08026532 */ STR R2, [SP] \n\
/* 08026534 */ LDR R3, =0x00004738 \n\
/* 08026536 */ STR R3, [SP, 0x4] \n\
/* 08026538 */ STR R5, [SP, 0x8] \n\
/* 0802653a */ STR R5, [SP, 0xC] \n\
/* 0802653c */ STR R5, [SP, 0x10] \n\
/* 0802653e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026540 */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 08026542 */ BL func_0804d160 \n\
/* 08026546 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026548 */ STRB R0, [R7, 0xE] \n\
/* 0802654a */ STRH R5, [R7, 0x10] \n\
/* 0802654c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802654e */ LDR R4, [R1] \n\
/* 08026550 */ BL func_0800c3b8 \n\
/* 08026554 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026556 */ LSLS R1, R1, 0x10 \n\
/* 08026558 */ LSRS R1, R1, 0x10 \n\
/* 0802655a */ LDR R3, =D_03004b22 \n\
/* 0802655c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802655e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026560 */ BL func_0804e188 \n\
/* 08026564 */ LDR R2, =D_030055d0 \n\
/* 08026566 */ LDR R0, [R2] \n\
/* 08026568 */ MOVS R3, 0xE7 @ Set R3 to 0xE7 \n\
/* 0802656a */ LSLS R3, R3, 0x2 \n\
/* 0802656c */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0802656e */ STR R5, [R1] \n\
/* 08026570 */ MOVS R4, 0xE8 @ Set R4 to 0xE8 \n\
/* 08026572 */ LSLS R4, R4, 0x2 \n\
/* 08026574 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08026576 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08026578 */ STRB R1, [R0] \n\
/* 0802657a */ MOVS R0, 0x26 @ Set R0 to 0x26 \n\
/* 0802657c */ BL func_08025228 \n\
/* 08026580 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026582 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026584 */ LDR R0, [R2] \n\
/* 08026586 */ LDR R3, =D_030055d0 \n\
/* 08026588 */ LDR R2, [R3] \n\
/* 0802658a */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802658c */ LDRB R2, [R2] \n\
/* 0802658e */ LSLS R2, R2, 0x18 \n\
/* 08026590 */ ASRS R2, R2, 0x18 \n\
/* 08026592 */ MOVS R3, 0x9A @ Set R3 to 0x9A \n\
/* 08026594 */ STR R3, [SP] \n\
/* 08026596 */ STR R5, [SP, 0x4] \n\
/* 08026598 */ STR R5, [SP, 0x8] \n\
/* 0802659a */ STR R5, [SP, 0xC] \n\
/* 0802659c */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0802659e */ LSLS R4, R4, 0x8 \n\
/* 080265a0 */ STR R4, [SP, 0x10] \n\
/* 080265a2 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080265a4 */ BL func_0804d160 \n\
/* 080265a8 */ LDR R2, =D_030055d0 \n\
/* 080265aa */ LDR R1, [R2] \n\
/* 080265ac */ LDR R3, =0x000003a2 \n\
/* 080265ae */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080265b0 */ STRH R0, [R1] \n\
/* 080265b2 */ MOVS R0, 0x27 @ Set R0 to 0x27 \n\
/* 080265b4 */ BL func_08025228 \n\
/* 080265b8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080265ba */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080265bc */ LDR R0, [R2] \n\
/* 080265be */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080265c0 */ STR R2, [SP] \n\
/* 080265c2 */ STR R5, [SP, 0x4] \n\
/* 080265c4 */ STR R5, [SP, 0x8] \n\
/* 080265c6 */ STR R5, [SP, 0xC] \n\
/* 080265c8 */ STR R4, [SP, 0x10] \n\
/* 080265ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080265cc */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080265ce */ BL func_0804d160 \n\
/* 080265d2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080265d4 */ LDR R3, =D_030055d0 \n\
/* 080265d6 */ LDR R0, [R3] \n\
/* 080265d8 */ MOVS R3, 0xE9 @ Set R3 to 0xE9 \n\
/* 080265da */ LSLS R3, R3, 0x2 \n\
/* 080265dc */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 080265de */ STRH R2, [R1] \n\
/* 080265e0 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080265e2 */ BL func_0802a9b4 \n\
/* 080265e6 */ MOVS R0, 0xF3 @ Set R0 to 0xF3 \n\
/* 080265e8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080265ea */ BL func_08017338 \n\
/* 080265ee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080265f0 */ BL func_080177a4 \n\
/* 080265f4 */ BL func_08025b88 \n\
/* 080265f8 */ LDR R1, =D_030055d0 \n\
/* 080265fa */ LDR R0, [R1] \n\
/* 080265fc */ LDR R2, =0x000013d0 \n\
/* 080265fe */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08026600 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08026602 */ LSLS R1, R1, 0x1 \n\
/* 08026604 */ STRH R1, [R0] \n\
/* 08026606 */ BL func_08025248 \n\
/* 0802660a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802660c */ BL func_08026b0c \n\
/* 08026610 */ ADD SP, 0x14 \n\
/* 08026612 */ POP {R3-R5} \n\
/* 08026614 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08026616 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08026618 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802661a */ POP {R4-R7} \n\
/* 0802661c */ POP {R0} \n\
/* 0802661e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
