asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044320 \n\
/* 08044320 */ PUSH {R4-R7, LR} \n\
/* 08044322 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08044324 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08044326 */ PUSH {R6, R7} \n\
/* 08044328 */ SUB SP, 0x4 \n\
/* 0804432a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804432c */ LDR R7, =D_030055d0 \n\
/* 0804432e */ LDR R1, [R7] \n\
/* 08044330 */ LDR R2, =0x35f \n\
/* 08044332 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08044334 */ LDRB R6, [R0] \n\
/* 08044336 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08044338 */ BNE branch_0804439c \n\
/* 0804433a */ LDR R4, =0x362 \n\
/* 0804433c */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0804433e */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 08044340 */ LDRB R0, [R0] \n\
/* 08044342 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044344 */ BEQ branch_0804434a \n\
/* 08044346 */ BL func_080443c0 \n\
 \n\
branch_0804434a: \n\
/* 0804434a */ LDR R5, =D_03005380 \n\
/* 0804434c */ LDR R0, [R5] \n\
/* 0804434e */ LDR R1, [R7] \n\
/* 08044350 */ MOVS R4, 0xD8 @ Set R4 to 0xD8 \n\
/* 08044352 */ LSLS R4, R4, 0x2 \n\
/* 08044354 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044356 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044358 */ LDRSH R1, [R1, R2] \n\
/* 0804435a */ STR R6, [SP] \n\
/* 0804435c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804435e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044360 */ BL func_0804dae0 \n\
/* 08044364 */ LDR R0, [R5] \n\
/* 08044366 */ LDR R1, [R7] \n\
/* 08044368 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0804436a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804436c */ LDRSH R1, [R1, R4] \n\
/* 0804436e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08044370 */ BL func_0804cebc \n\
/* 08044374 */ LDR R0, [R7] \n\
/* 08044376 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08044378 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804437a */ STRB R1, [R0] \n\
/* 0804437c */ LDR R3, [R7] \n\
/* 0804437e */ MOVS R0, 0xD9 @ Set R0 to 0xD9 \n\
/* 08044380 */ LSLS R0, R0, 0x2 \n\
/* 08044382 */ ADDS R2, R3, R0 @ Set R2 to R3 + R0 \n\
/* 08044384 */ LDR R1, =rhythm_toys_demo_table \n\
/* 08044386 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08044388 */ LSLS R0, R4, 0x2 \n\
/* 0804438a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804438c */ LDR R0, [R0] \n\
/* 0804438e */ STR R0, [R2] \n\
/* 08044390 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 08044392 */ LSLS R1, R1, 0x2 \n\
/* 08044394 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08044396 */ STR R6, [R0] \n\
/* 08044398 */ BL func_08044810 \n\
 \n\
branch_0804439c: \n\
/* 0804439c */ ADD SP, 0x4 \n\
/* 0804439e */ POP {R3, R4} \n\
/* 080443a0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080443a2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080443a4 */ POP {R4-R7} \n\
/* 080443a6 */ POP {R0} \n\
/* 080443a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
