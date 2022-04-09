asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080043c8 \n\
/* 080043c8 */ PUSH {R4-R7, LR} \n\
/* 080043ca */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080043cc */ PUSH {R7} \n\
/* 080043ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080043d0 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080043d2 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 080043d4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080043d6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080043d8 */ LDRB R0, [R1] \n\
/* 080043da */ CMP R0, 0x82 @ Compare R0 and 0x82 \n\
/* 080043dc */ BEQ branch_08004414 \n\
/* 080043de */ CMP R0, 0x82 @ Compare R0 and 0x82 \n\
/* 080043e0 */ BGT branch_080043e8 \n\
/* 080043e2 */ CMP R0, 0x81 @ Compare R0 and 0x81 \n\
/* 080043e4 */ BEQ branch_080043ee \n\
/* 080043e6 */ B branch_080044a8 \n\
 \n\
branch_080043e8: \n\
/* 080043e8 */ CMP R0, 0x83 @ Compare R0 and 0x83 \n\
/* 080043ea */ BEQ branch_08004478 \n\
/* 080043ec */ B branch_080044a8 \n\
 \n\
branch_080043ee: \n\
/* 080043ee */ LDRB R2, [R1, 0x1] \n\
/* 080043f0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080043f2 */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 080043f4 */ LSLS R0, R0, 0x18 \n\
/* 080043f6 */ LSRS R0, R0, 0x18 \n\
/* 080043f8 */ CMP R0, 0x3E @ Compare R0 and 0x3E \n\
/* 080043fa */ BHI branch_08004402 \n\
/* 080043fc */ LDR R3, [R4, 0x8] \n\
/* 080043fe */ LDR R6, [R4, 0xC] \n\
/* 08004400 */ B branch_0800448a \n\
 \n\
branch_08004402: \n\
/* 08004402 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08004404 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08004406 */ LSLS R0, R0, 0x18 \n\
/* 08004408 */ LSRS R0, R0, 0x18 \n\
/* 0800440a */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 0800440c */ BHI branch_080044a8 \n\
/* 0800440e */ LDR R3, [R4, 0x8] \n\
/* 08004410 */ LDR R6, [R4, 0xC] \n\
/* 08004412 */ B branch_080044a2 \n\
 \n\
branch_08004414: \n\
/* 08004414 */ LDRB R0, [R1, 0x1] \n\
/* 08004416 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08004418 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0800441a */ SUBS R0, 0x4F @ Subtract 0x4F from R0 \n\
/* 0800441c */ LSLS R0, R0, 0x18 \n\
/* 0800441e */ LSRS R0, R0, 0x18 \n\
/* 08004420 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 08004422 */ BHI branch_08004430 \n\
/* 08004424 */ LDR R3, [R4, 0x10] \n\
/* 08004426 */ LDR R6, [R4, 0x14] \n\
/* 08004428 */ LDRB R0, [R1, 0x1] \n\
/* 0800442a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800442c */ SUBS R5, 0x4F @ Subtract 0x4F from R5 \n\
/* 0800442e */ B branch_080044a8 \n\
 \n\
branch_08004430: \n\
/* 08004430 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004432 */ SUBS R0, 0x60 @ Subtract 0x60 from R0 \n\
/* 08004434 */ LSLS R0, R0, 0x18 \n\
/* 08004436 */ LSRS R0, R0, 0x18 \n\
/* 08004438 */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 0800443a */ BHI branch_08004448 \n\
/* 0800443c */ LDR R3, [R4, 0x18] \n\
/* 0800443e */ LDR R6, [R4, 0x1C] \n\
/* 08004440 */ LDRB R0, [R1, 0x1] \n\
/* 08004442 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08004444 */ SUBS R5, 0x60 @ Subtract 0x60 from R5 \n\
/* 08004446 */ B branch_080044a8 \n\
 \n\
branch_08004448: \n\
/* 08004448 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0800444a */ ADDS R0, 0x7F @ Add 0x7F to R0 \n\
/* 0800444c */ LSLS R0, R0, 0x18 \n\
/* 0800444e */ LSRS R0, R0, 0x18 \n\
/* 08004450 */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 08004452 */ BHI branch_08004460 \n\
/* 08004454 */ LDR R3, [R4, 0x20] \n\
/* 08004456 */ LDR R6, [R4, 0x24] \n\
/* 08004458 */ LDRB R0, [R1, 0x1] \n\
/* 0800445a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800445c */ SUBS R5, 0x81 @ Subtract 0x81 from R5 \n\
/* 0800445e */ B branch_080044a8 \n\
 \n\
branch_08004460: \n\
/* 08004460 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004462 */ ADDS R0, 0x61 @ Add 0x61 to R0 \n\
/* 08004464 */ LSLS R0, R0, 0x18 \n\
/* 08004466 */ LSRS R0, R0, 0x18 \n\
/* 08004468 */ CMP R0, 0x5D @ Compare R0 and 0x5D \n\
/* 0800446a */ BHI branch_080044a8 \n\
/* 0800446c */ LDR R3, [R4, 0x28] \n\
/* 0800446e */ LDR R6, [R4, 0x2C] \n\
/* 08004470 */ LDRB R0, [R1, 0x1] \n\
/* 08004472 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08004474 */ SUBS R5, 0x9F @ Subtract 0x9F from R5 \n\
/* 08004476 */ B branch_080044a8 \n\
 \n\
branch_08004478: \n\
/* 08004478 */ LDRB R2, [R1, 0x1] \n\
/* 0800447a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800447c */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 0800447e */ LSLS R0, R0, 0x18 \n\
/* 08004480 */ LSRS R0, R0, 0x18 \n\
/* 08004482 */ CMP R0, 0x3E @ Compare R0 and 0x3E \n\
/* 08004484 */ BHI branch_08004492 \n\
/* 08004486 */ LDR R3, [R4, 0x30] \n\
/* 08004488 */ LDR R6, [R4, 0x34] \n\
 \n\
branch_0800448a: \n\
/* 0800448a */ LDRB R0, [R1, 0x1] \n\
/* 0800448c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800448e */ SUBS R5, 0x40 @ Subtract 0x40 from R5 \n\
/* 08004490 */ B branch_080044a8 \n\
 \n\
branch_08004492: \n\
/* 08004492 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08004494 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08004496 */ LSLS R0, R0, 0x18 \n\
/* 08004498 */ LSRS R0, R0, 0x18 \n\
/* 0800449a */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 0800449c */ BHI branch_080044a8 \n\
/* 0800449e */ LDR R3, [R4, 0x30] \n\
/* 080044a0 */ LDR R6, [R4, 0x34] \n\
 \n\
branch_080044a2: \n\
/* 080044a2 */ LDRB R0, [R1, 0x1] \n\
/* 080044a4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080044a6 */ SUBS R5, 0x41 @ Subtract 0x41 from R5 \n\
 \n\
branch_080044a8: \n\
/* 080044a8 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080044aa */ BNE branch_080044bc \n\
/* 080044ac */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080044ae */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080044b0 */ BEQ branch_080044b4 \n\
/* 080044b2 */ STR R3, [R1] \n\
 \n\
branch_080044b4: \n\
/* 080044b4 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080044b6 */ BEQ branch_080044e4 \n\
/* 080044b8 */ STR R3, [R7] \n\
/* 080044ba */ B branch_080044e4 \n\
 \n\
branch_080044bc: \n\
/* 080044bc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080044be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080044c0 */ BEQ branch_080044d2 \n\
/* 080044c2 */ LDRB R1, [R4, 0x1] \n\
/* 080044c4 */ LDRB R0, [R4, 0x2] \n\
/* 080044c6 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080044c8 */ ASRS R0, R0, 0x1 \n\
/* 080044ca */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 080044cc */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 080044ce */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080044d0 */ STR R0, [R1] \n\
 \n\
branch_080044d2: \n\
/* 080044d2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080044d4 */ BEQ branch_080044e4 \n\
/* 080044d6 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080044d8 */ BEQ branch_080044e0 \n\
/* 080044da */ ADDS R0, R6, R5 @ Set R0 to R6 + R5 \n\
/* 080044dc */ LDRB R0, [R0] \n\
/* 080044de */ B branch_080044e2 \n\
 \n\
branch_080044e0: \n\
/* 080044e0 */ LDRB R0, [R4, 0x1] \n\
 \n\
branch_080044e2: \n\
/* 080044e2 */ STR R0, [R7] \n\
 \n\
branch_080044e4: \n\
/* 080044e4 */ POP {R3} \n\
/* 080044e6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080044e8 */ POP {R4-R7} \n\
/* 080044ea */ POP {R0} \n\
/* 080044ec */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
