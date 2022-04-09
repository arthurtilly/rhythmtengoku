asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080042bc \n\
/* 080042bc */ PUSH {R4-R7, LR} \n\
/* 080042be */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080042c0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080042c2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080042c4 */ PUSH {R5-R7} \n\
/* 080042c6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080042c8 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080042ca */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080042cc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080042ce */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080042d0 */ SUBS R3, R0, R2 @ Set R3 to R0 - R2 \n\
/* 080042d2 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 080042d4 */ BGE branch_080042ec \n\
/* 080042d6 */ LDR R5, =0xffff \n\
/* 080042d8 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
 \n\
branch_080042da: \n\
/* 080042da */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080042dc */ LDR R5, [SP, 0x20] \n\
/* 080042de */ LSLS R0, R5 @ Set R0 to R0 << R5 (logical) \n\
/* 080042e0 */ LSLS R0, R0, 0x1 \n\
/* 080042e2 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080042e4 */ STRH R4, [R0] \n\
/* 080042e6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080042e8 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 080042ea */ BLT branch_080042da \n\
 \n\
branch_080042ec: \n\
/* 080042ec */ MOVS R1, 0x9F @ Set R1 to 0x9F \n\
/* 080042ee */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080042f0 */ ADDS R3, R0, R2 @ Set R3 to R0 + R2 \n\
/* 080042f2 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 080042f4 */ BLE branch_0800430c \n\
/* 080042f6 */ LDR R5, =0xffff \n\
/* 080042f8 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
 \n\
branch_080042fa: \n\
/* 080042fa */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080042fc */ LDR R5, [SP, 0x20] \n\
/* 080042fe */ LSLS R0, R5 @ Set R0 to R0 << R5 (logical) \n\
/* 08004300 */ LSLS R0, R0, 0x1 \n\
/* 08004302 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08004304 */ STRH R4, [R0] \n\
/* 08004306 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 08004308 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 0800430a */ BGT branch_080042fa \n\
 \n\
branch_0800430c: \n\
/* 0800430c */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800430e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08004310 */ LSLS R0, R5, 0x1 \n\
/* 08004312 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08004314 */ ADDS R6, R0, 0x3 @ Set R6 to R0 + 0x3 \n\
/* 08004316 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08004318 */ BLT branch_080043b4 \n\
 \n\
branch_0800431a: \n\
/* 0800431a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800431c */ SUBS R0, R1, R5 @ Set R0 to R1 - R5 \n\
/* 0800431e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004320 */ MOVS R2, 0xEF @ Set R2 to 0xEF \n\
/* 08004322 */ BL func_080087d4 \n\
/* 08004326 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004328 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800432a */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0800432c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800432e */ MOVS R2, 0xEF @ Set R2 to 0xEF \n\
/* 08004330 */ BL func_080087d4 \n\
/* 08004334 */ LSLS R4, R4, 0x8 \n\
/* 08004336 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 08004338 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800433a */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 0800433c */ CMP R0, 0x9F @ Compare R0 and 0x9F \n\
/* 0800433e */ BHI branch_0800434a \n\
/* 08004340 */ LDR R1, [SP, 0x20] \n\
/* 08004342 */ LSLS R0, R1 @ Set R0 to R0 << R1 (logical) \n\
/* 08004344 */ LSLS R0, R0, 0x1 \n\
/* 08004346 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08004348 */ STRH R4, [R0] \n\
 \n\
branch_0800434a: \n\
/* 0800434a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800434c */ SUBS R0, R1, R7 @ Set R0 to R1 - R7 \n\
/* 0800434e */ CMP R0, 0x9F @ Compare R0 and 0x9F \n\
/* 08004350 */ BHI branch_0800435c \n\
/* 08004352 */ LDR R1, [SP, 0x20] \n\
/* 08004354 */ LSLS R0, R1 @ Set R0 to R0 << R1 (logical) \n\
/* 08004356 */ LSLS R0, R0, 0x1 \n\
/* 08004358 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800435a */ STRH R4, [R0] \n\
 \n\
branch_0800435c: \n\
/* 0800435c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800435e */ SUBS R0, R1, R7 @ Set R0 to R1 - R7 \n\
/* 08004360 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004362 */ MOVS R2, 0xEF @ Set R2 to 0xEF \n\
/* 08004364 */ BL func_080087d4 \n\
/* 08004368 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800436a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800436c */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 0800436e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004370 */ MOVS R2, 0xEF @ Set R2 to 0xEF \n\
/* 08004372 */ BL func_080087d4 \n\
/* 08004376 */ LSLS R4, R4, 0x8 \n\
/* 08004378 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800437a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800437c */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0800437e */ CMP R0, 0x9F @ Compare R0 and 0x9F \n\
/* 08004380 */ BHI branch_0800438c \n\
/* 08004382 */ LDR R1, [SP, 0x20] \n\
/* 08004384 */ LSLS R0, R1 @ Set R0 to R0 << R1 (logical) \n\
/* 08004386 */ LSLS R0, R0, 0x1 \n\
/* 08004388 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800438a */ STRH R4, [R0] \n\
 \n\
branch_0800438c: \n\
/* 0800438c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800438e */ SUBS R0, R1, R5 @ Set R0 to R1 - R5 \n\
/* 08004390 */ CMP R0, 0x9F @ Compare R0 and 0x9F \n\
/* 08004392 */ BHI branch_0800439e \n\
/* 08004394 */ LDR R1, [SP, 0x20] \n\
/* 08004396 */ LSLS R0, R1 @ Set R0 to R0 << R1 (logical) \n\
/* 08004398 */ LSLS R0, R0, 0x1 \n\
/* 0800439a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800439c */ STRH R4, [R0] \n\
 \n\
branch_0800439e: \n\
/* 0800439e */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080043a0 */ BLT branch_080043a8 \n\
/* 080043a2 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
/* 080043a4 */ LSLS R0, R5, 0x2 \n\
/* 080043a6 */ SUBS R6, R6, R0 @ Set R6 to R6 - R0 \n\
 \n\
branch_080043a8: \n\
/* 080043a8 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080043aa */ ADDS R1, R6, 0x2 @ Set R1 to R6 + 0x2 \n\
/* 080043ac */ LSLS R0, R7, 0x2 \n\
/* 080043ae */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 080043b0 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 080043b2 */ BGE branch_0800431a \n\
 \n\
branch_080043b4: \n\
/* 080043b4 */ POP {R3-R5} \n\
/* 080043b6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080043b8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080043ba */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080043bc */ POP {R4-R7} \n\
/* 080043be */ POP {R0} \n\
/* 080043c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
