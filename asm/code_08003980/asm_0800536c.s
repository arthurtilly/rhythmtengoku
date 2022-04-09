asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800536c \n\
/* 0800536c */ PUSH {R4-R7, LR} \n\
/* 0800536e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08005370 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08005372 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08005374 */ PUSH {R5-R7} \n\
/* 08005376 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08005378 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800537a */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0800537c */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 0800537e */ LDR R6, [SP, 0x20] \n\
/* 08005380 */ LDR R1, =D_030008f8 \n\
/* 08005382 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08005384 */ STR R0, [R1] \n\
/* 08005386 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08005388 */ LDRB R0, [R4] \n\
/* 0800538a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800538c */ BEQ branch_08005410 \n\
/* 0800538e */ MOV R10, R1 @ Set R10 to R1 \n\
 \n\
branch_08005390: \n\
/* 08005390 */ LDRB R0, [R4] \n\
/* 08005392 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005394 */ BEQ branch_080053b6 \n\
/* 08005396 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08005398 */ BGT branch_080053a4 \n\
/* 0800539a */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 0800539c */ BEQ branch_080053aa \n\
/* 0800539e */ B branch_080053d6 \n\
\n\
.ltorg \n\
 \n\
branch_080053a4: \n\
/* 080053a4 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 080053a6 */ BEQ branch_080053c4 \n\
/* 080053a8 */ B branch_080053d6 \n\
 \n\
branch_080053aa: \n\
/* 080053aa */ LSLS R0, R7, 0x2 \n\
/* 080053ac */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080053ae */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080053b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080053b2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080053b4 */ B branch_0800540a \n\
 \n\
branch_080053b6: \n\
/* 080053b6 */ LDRB R0, [R4, 0x1] \n\
/* 080053b8 */ BL func_08005328 \n\
/* 080053bc */ LSLS R0, R0, 0x18 \n\
/* 080053be */ LSRS R6, R0, 0x18 \n\
/* 080053c0 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080053c2 */ B branch_0800540a \n\
 \n\
branch_080053c4: \n\
/* 080053c4 */ LDRB R0, [R4, 0x1] \n\
/* 080053c6 */ BL func_08005328 \n\
/* 080053ca */ LSLS R0, R0, 0x18 \n\
/* 080053cc */ LSRS R0, R0, 0x18 \n\
/* 080053ce */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080053d0 */ STR R0, [R1] \n\
/* 080053d2 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080053d4 */ B branch_0800540a \n\
 \n\
branch_080053d6: \n\
/* 080053d6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080053d8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080053da */ BL func_08005208 \n\
/* 080053de */ LSLS R0, R0, 0x10 \n\
/* 080053e0 */ LSRS R0, R0, 0x10 \n\
/* 080053e2 */ LDR R2, =0x3ff \n\
/* 080053e4 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080053e6 */ BHI branch_08005404 \n\
/* 080053e8 */ LSLS R1, R6, 0xC \n\
/* 080053ea */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080053ec */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080053ee */ LSLS R1, R1, 0x10 \n\
/* 080053f0 */ LSRS R1, R1, 0x10 \n\
/* 080053f2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080053f4 */ LSLS R0, R2, 0x1 \n\
/* 080053f6 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080053f8 */ STRH R1, [R0] \n\
/* 080053fa */ ADDS R0, R7, R2 @ Set R0 to R7 + R2 \n\
/* 080053fc */ LSLS R0, R0, 0x1 \n\
/* 080053fe */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08005400 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08005402 */ STRH R1, [R0] \n\
 \n\
branch_08005404: \n\
/* 08005404 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08005406 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005408 */ ADD R8, R0 @ Add R0 to R8 \n\
 \n\
branch_0800540a: \n\
/* 0800540a */ LDRB R0, [R4] \n\
/* 0800540c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800540e */ BNE branch_08005390 \n\
 \n\
branch_08005410: \n\
/* 08005410 */ POP {R3-R5} \n\
/* 08005412 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005414 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08005416 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08005418 */ POP {R4-R7} \n\
/* 0800541a */ POP {R0} \n\
/* 0800541c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
