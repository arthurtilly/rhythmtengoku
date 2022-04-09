asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802030c \n\
/* 0802030c */ PUSH {R4-R7, LR} \n\
/* 0802030e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08020310 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08020312 */ PUSH {R6, R7} \n\
/* 08020314 */ SUB SP, 0x1C \n\
/* 08020316 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08020318 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0802031a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802031c */ STRB R4, [R7] \n\
/* 0802031e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08020320 */ LSLS R0, R0, 0x4 \n\
/* 08020322 */ BL func_08001980 \n\
/* 08020326 */ STRH R0, [R7, 0xC] \n\
/* 08020328 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0802032a */ STRH R0, [R7, 0xE] \n\
/* 0802032c */ STR R4, [R7, 0x18] \n\
/* 0802032e */ CMP R6, 0x17 @ Compare R6 and 0x17 \n\
/* 08020330 */ BLS branch_0802033e \n\
/* 08020332 */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 08020334 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08020336 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08020338 */ BL __udivsi3 \n\
/* 0802033c */ B branch_08020340 \n\
 \n\
branch_0802033e: \n\
/* 0802033e */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
 \n\
branch_08020340: \n\
/* 08020340 */ STR R0, [R7, 0x1C] \n\
/* 08020342 */ LDR R1, =D_089de9a0 \n\
/* 08020344 */ LDR R0, =D_030055d0 \n\
/* 08020346 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08020348 */ LDR R0, [R0] \n\
/* 0802034a */ LDR R2, =0x00000159 \n\
/* 0802034c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802034e */ LDRB R0, [R0] \n\
/* 08020350 */ LSLS R0, R0, 0x2 \n\
/* 08020352 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020354 */ LDR R0, [R0] \n\
/* 08020356 */ LDR R1, =0x0000479c \n\
/* 08020358 */ STR R1, [SP] \n\
/* 0802035a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802035c */ LSLS R1, R1, 0x1 \n\
/* 0802035e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08020360 */ STR R1, [SP, 0x4] \n\
/* 08020362 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08020364 */ LDRSH R1, [R7, R2] \n\
/* 08020366 */ STR R1, [SP, 0x8] \n\
/* 08020368 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802036a */ STR R1, [SP, 0xC] \n\
/* 0802036c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802036e */ STR R5, [SP, 0x10] \n\
/* 08020370 */ STR R5, [SP, 0x14] \n\
/* 08020372 */ STR R1, [SP, 0x18] \n\
/* 08020374 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08020376 */ MOVS R2, 0x46 @ Set R2 to 0x46 \n\
/* 08020378 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802037a */ BL func_0800fa6c \n\
/* 0802037e */ STR R0, [R7, 0x4] \n\
/* 08020380 */ LDR R1, [R7, 0x1C] \n\
/* 08020382 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08020384 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 08020386 */ LDR R4, =D_03004ae4 \n\
/* 08020388 */ LSLS R0, R0, 0x10 \n\
/* 0802038a */ BL __udivsi3 \n\
/* 0802038e */ LDR R1, [R4] \n\
/* 08020390 */ BL func_0804eaf0 \n\
/* 08020394 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020396 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08020398 */ BL func_0800c3a4 \n\
/* 0802039c */ LSLS R0, R0, 0x9 \n\
/* 0802039e */ ADD R4, R8 @ Add R8 to R4 \n\
/* 080203a0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080203a2 */ BL __udivsi3 \n\
/* 080203a6 */ STR R0, [R7, 0x8] \n\
/* 080203a8 */ LDR R0, [R7, 0x4] \n\
/* 080203aa */ MOVS R1, 0x32 @ Set R1 to 0x32 \n\
/* 080203ac */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080203ae */ LDR R3, [R7, 0x18] \n\
/* 080203b0 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 080203b2 */ BL func_0801fd70 \n\
/* 080203b6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080203b8 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 080203ba */ STRB R5, [R0] \n\
/* 080203bc */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080203be */ LDR R0, [R1] \n\
/* 080203c0 */ LDR R0, [R0, 0x24] \n\
/* 080203c2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080203c4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080203c6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080203c8 */ BL func_08010008 \n\
/* 080203cc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080203ce */ LDR R0, [R2] \n\
/* 080203d0 */ LDR R0, [R0, 0x24] \n\
/* 080203d2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080203d4 */ BL func_0800ffc0 \n\
/* 080203d8 */ ADD SP, 0x1C \n\
/* 080203da */ POP {R3, R4} \n\
/* 080203dc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080203de */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080203e0 */ POP {R4-R7} \n\
/* 080203e2 */ POP {R0} \n\
/* 080203e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
