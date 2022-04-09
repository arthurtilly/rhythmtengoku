asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080183c8 \n\
/* 080183c8 */ PUSH {R4-R6, LR} \n\
/* 080183ca */ SUB SP, 0xC \n\
/* 080183cc */ LDR R5, =D_030046a4 \n\
/* 080183ce */ LDR R2, [R5] \n\
/* 080183d0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080183d2 */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 080183d4 */ LDRB R4, [R0] \n\
/* 080183d6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080183d8 */ BEQ branch_080183dc \n\
/* 080183da */ B branch_080184f8 \n\
 \n\
branch_080183dc: \n\
/* 080183dc */ LDR R6, =D_03004afc \n\
/* 080183de */ LDRH R1, [R6] \n\
/* 080183e0 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080183e2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080183e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080183e6 */ BEQ branch_08018410 \n\
/* 080183e8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080183ea */ ADDS R0, 0x91 @ Add 0x91 to R0 \n\
/* 080183ec */ STRB R4, [R0] \n\
/* 080183ee */ LDR R0, =D_03005380 \n\
/* 080183f0 */ LDR R0, [R0] \n\
/* 080183f2 */ LDR R1, [R5] \n\
/* 080183f4 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 080183f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080183f8 */ LDRSH R1, [R1, R2] \n\
/* 080183fa */ LDR R2, =D_0890ab88 \n\
/* 080183fc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080183fe */ STR R3, [SP] \n\
/* 08018400 */ STR R4, [SP, 0x4] \n\
/* 08018402 */ STR R4, [SP, 0x8] \n\
/* 08018404 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08018406 */ BL func_0804d8f8 \n\
/* 0801840a */ LDR R0, =s_f_pause_cursor_seqData \n\
/* 0801840c */ BL func_08002634 \n\
 \n\
branch_08018410: \n\
/* 08018410 */ LDRH R1, [R6] \n\
/* 08018412 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08018414 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08018416 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018418 */ BEQ branch_08018442 \n\
/* 0801841a */ LDR R0, [R5] \n\
/* 0801841c */ ADDS R0, 0x91 @ Add 0x91 to R0 \n\
/* 0801841e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08018420 */ STRB R3, [R0] \n\
/* 08018422 */ LDR R0, =D_03005380 \n\
/* 08018424 */ LDR R0, [R0] \n\
/* 08018426 */ LDR R1, [R5] \n\
/* 08018428 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 0801842a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801842c */ LDRSH R1, [R1, R2] \n\
/* 0801842e */ LDR R2, =D_0890abb0 \n\
/* 08018430 */ STR R3, [SP] \n\
/* 08018432 */ STR R4, [SP, 0x4] \n\
/* 08018434 */ STR R4, [SP, 0x8] \n\
/* 08018436 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08018438 */ BL func_0804d8f8 \n\
/* 0801843c */ LDR R0, =s_f_pause_cursor_seqData \n\
/* 0801843e */ BL func_08002634 \n\
 \n\
branch_08018442: \n\
/* 08018442 */ LDRH R1, [R6] \n\
/* 08018444 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08018446 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08018448 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801844a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801844c */ BEQ branch_080184c4 \n\
/* 0801844e */ LDR R4, =D_03005380 \n\
/* 08018450 */ LDR R0, [R4] \n\
/* 08018452 */ LDR R1, [R5] \n\
/* 08018454 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 08018456 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018458 */ LDRSH R1, [R1, R2] \n\
/* 0801845a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801845c */ BL func_0804d770 \n\
/* 08018460 */ LDR R0, [R4] \n\
/* 08018462 */ LDR R1, [R5] \n\
/* 08018464 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 08018466 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018468 */ LDRSH R1, [R1, R2] \n\
/* 0801846a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801846c */ BL func_0804d770 \n\
/* 08018470 */ LDR R1, [R5] \n\
/* 08018472 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08018474 */ ADDS R0, 0x91 @ Add 0x91 to R0 \n\
/* 08018476 */ LDRB R0, [R0] \n\
/* 08018478 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801847a */ BNE branch_080184a8 \n\
/* 0801847c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_0801847e: \n\
/* 0801847e */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 08018480 */ STRB R6, [R0] \n\
/* 08018482 */ LDR R0, =s_f_pause_continue_seqData \n\
/* 08018484 */ BL func_08002634 \n\
/* 08018488 */ B branch_08018518 \n\
\n\
.ltorg \n\
 \n\
branch_080184a8: \n\
/* 080184a8 */ LDR R2, =0x4a6 \n\
/* 080184aa */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080184ac */ STRB R6, [R0] \n\
/* 080184ae */ LDR R0, =D_03001328 \n\
/* 080184b0 */ LDR R0, [R0] \n\
/* 080184b2 */ BL func_08000584 \n\
/* 080184b6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080184b8 */ B branch_0801851a \n\
\n\
.ltorg \n\
 \n\
branch_080184c4: \n\
/* 080184c4 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080184c6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080184c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080184ca */ BEQ branch_08018518 \n\
/* 080184cc */ LDR R4, =D_03005380 \n\
/* 080184ce */ LDR R0, [R4] \n\
/* 080184d0 */ LDR R1, [R5] \n\
/* 080184d2 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 080184d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080184d6 */ LDRSH R1, [R1, R2] \n\
/* 080184d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080184da */ BL func_0804d770 \n\
/* 080184de */ LDR R0, [R4] \n\
/* 080184e0 */ LDR R1, [R5] \n\
/* 080184e2 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 080184e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080184e6 */ LDRSH R1, [R1, R2] \n\
/* 080184e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080184ea */ BL func_0804d770 \n\
/* 080184ee */ LDR R0, [R5] \n\
/* 080184f0 */ B branch_0801847e \n\
\n\
.ltorg \n\
 \n\
branch_080184f8: \n\
/* 080184f8 */ LDR R0, =D_03004ac0 \n\
/* 080184fa */ LDRH R0, [R0] \n\
/* 080184fc */ MOVS R4, 0xB @ Set R4 to 0xB \n\
/* 080184fe */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08018500 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08018502 */ BNE branch_08018518 \n\
/* 08018504 */ BL func_08018318 \n\
/* 08018508 */ LDR R0, =D_03004b00 \n\
/* 0801850a */ STRH R4, [R0] \n\
/* 0801850c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801850e */ B branch_0801851a \n\
\n\
.ltorg \n\
 \n\
branch_08018518: \n\
/* 08018518 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801851a: \n\
/* 0801851a */ ADD SP, 0xC \n\
/* 0801851c */ POP {R4-R6} \n\
/* 0801851e */ POP {R1} \n\
/* 08018520 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
