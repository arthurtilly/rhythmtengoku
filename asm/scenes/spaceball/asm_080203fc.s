asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080203fc \n\
/* 080203fc */ PUSH {R4-R6, LR} \n\
/* 080203fe */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08020400 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08020402 */ LDR R3, [R5, 0x8] \n\
/* 08020404 */ CMP R2, R3 @ Check R2 - R3 \n\
/* 08020406 */ BLS branch_0802045c \n\
/* 08020408 */ LDR R0, =s_f_batter_ball_land_seqData \n\
/* 0802040a */ BL func_08002634 \n\
/* 0802040e */ LDR R4, =D_030055d0 \n\
/* 08020410 */ LDR R0, [R4] \n\
/* 08020412 */ LDR R0, [R0, 0x44] \n\
/* 08020414 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08020416 */ BL func_0800ffc0 \n\
/* 0802041a */ LDR R0, [R4] \n\
/* 0802041c */ LDR R0, [R0, 0x44] \n\
/* 0802041e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08020420 */ BL func_08010040 \n\
/* 08020424 */ LDR R0, [R4] \n\
/* 08020426 */ LDR R0, [R0, 0x54] \n\
/* 08020428 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802042a */ BL func_0800ffc0 \n\
/* 0802042e */ LDR R0, [R4] \n\
/* 08020430 */ LDR R0, [R0, 0x54] \n\
/* 08020432 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08020434 */ BL func_08010040 \n\
/* 08020438 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802043a */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802043c */ LDRB R0, [R0] \n\
/* 0802043e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020440 */ BNE branch_08020450 \n\
/* 08020442 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08020444 */ BL func_080180bc \n\
/* 08020448 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802044a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802044c */ BL func_08017928 \n\
 \n\
branch_08020450: \n\
/* 08020450 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08020452 */ B branch_080204ae \n\
\n\
.ltorg \n\
 \n\
branch_0802045c: \n\
/* 0802045c */ LSRS R4, R3, 0x1 \n\
/* 0802045e */ SUBS R4, R2, R4 @ Set R4 to R2 - R4 \n\
/* 08020460 */ MOVS R0, 0x46 @ Set R0 to 0x46 \n\
/* 08020462 */ MOVS R1, 0x8A @ Set R1 to 0x8A \n\
/* 08020464 */ BL func_08008f04 \n\
/* 08020468 */ STR R0, [R5, 0x10] \n\
/* 0802046a */ LDR R2, =D_03004af8 \n\
/* 0802046c */ LSLS R1, R4, 0x2 \n\
/* 0802046e */ LDR R0, [R5, 0x1C] \n\
/* 08020470 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08020472 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08020474 */ LDR R1, [R5, 0x8] \n\
/* 08020476 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08020478 */ MULS R3, R1 @ Multiply R3 by R1 \n\
/* 0802047a */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0802047c */ LDR R2, [R2] \n\
/* 0802047e */ BL func_0804eaf4 \n\
/* 08020482 */ LDR R1, [R5, 0x1C] \n\
/* 08020484 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08020486 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08020488 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 0802048a */ STR R2, [R5, 0x14] \n\
/* 0802048c */ LDR R0, [R5, 0x4] \n\
/* 0802048e */ LDR R1, [R5, 0x10] \n\
/* 08020490 */ SUBS R1, 0x78 @ Subtract 0x78 from R1 \n\
/* 08020492 */ SUBS R2, 0x50 @ Subtract 0x50 from R2 \n\
/* 08020494 */ LDR R3, [R5, 0x18] \n\
/* 08020496 */ BL func_0801fd70 \n\
/* 0802049a */ LDR R0, [R5, 0x4] \n\
/* 0802049c */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802049e */ LDRSH R1, [R5, R2] \n\
/* 080204a0 */ BL func_0800fe94 \n\
/* 080204a4 */ LDRH R0, [R5, 0xE] \n\
/* 080204a6 */ LDRH R3, [R5, 0xC] \n\
/* 080204a8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080204aa */ STRH R0, [R5, 0xC] \n\
/* 080204ac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080204ae: \n\
/* 080204ae */ POP {R4-R6} \n\
/* 080204b0 */ POP {R1} \n\
/* 080204b2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
