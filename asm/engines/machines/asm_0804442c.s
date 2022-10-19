asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804442c \n\
/* 0804442c */ PUSH {R4-R6, LR} \n\
/* 0804442e */ LDR R4, =D_030055d0 \n\
/* 08044430 */ LDR R1, [R4] \n\
/* 08044432 */ LDR R2, =0x35f \n\
/* 08044434 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08044436 */ LDRB R0, [R0] \n\
/* 08044438 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804443a */ BNE branch_080444ac \n\
/* 0804443c */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 0804443e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08044440 */ LDRB R0, [R0] \n\
/* 08044442 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044444 */ BEQ branch_080444ac \n\
/* 08044446 */ BL func_0800c398 \n\
/* 0804444a */ LDR R2, [R4] \n\
/* 0804444c */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0804444e */ LSLS R1, R1, 0x2 \n\
/* 08044450 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08044452 */ LDR R1, [R2] \n\
/* 08044454 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08044456 */ STR R1, [R2] \n\
/* 08044458 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804445a */ BGE branch_080444ac \n\
/* 0804445c */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0804445e */ MOVS R4, 0xD9 @ Set R4 to 0xD9 \n\
/* 08044460 */ LSLS R4, R4, 0x2 \n\
/* 08044462 */ LDR R6, =0xffff \n\
 \n\
branch_08044464: \n\
/* 08044464 */ LDR R0, [R5] \n\
/* 08044466 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08044468 */ LDR R0, [R0] \n\
/* 0804446a */ LDRH R0, [R0] \n\
/* 0804446c */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0804446e */ BNE branch_08044484 \n\
/* 08044470 */ BL func_080443c0 \n\
/* 08044474 */ B branch_080444ac \n\
\n\
.ltorg \n\
 \n\
branch_08044484: \n\
/* 08044484 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08044486 */ BHI branch_0804448c \n\
/* 08044488 */ BL func_0804475c \n\
 \n\
branch_0804448c: \n\
/* 0804448c */ LDR R2, [R5] \n\
/* 0804448e */ MOVS R0, 0xDA @ Set R0 to 0xDA \n\
/* 08044490 */ LSLS R0, R0, 0x2 \n\
/* 08044492 */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 08044494 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08044496 */ LDR R0, [R2] \n\
/* 08044498 */ LDRH R0, [R0, 0x2] \n\
/* 0804449a */ LSLS R0, R0, 0x8 \n\
/* 0804449c */ LDR R1, [R3] \n\
/* 0804449e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080444a0 */ STR R1, [R3] \n\
/* 080444a2 */ LDR R0, [R2] \n\
/* 080444a4 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080444a6 */ STR R0, [R2] \n\
/* 080444a8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080444aa */ BLT branch_08044464 \n\
 \n\
branch_080444ac: \n\
/* 080444ac */ POP {R4-R6} \n\
/* 080444ae */ POP {R0} \n\
/* 080444b0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
