asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009458 \n\
/* 08009458 */ PUSH {R4, R5, LR} \n\
/* 0800945a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800945c */ BL func_0804e8f8 \n\
/* 08009460 */ BL func_0804e598 \n\
/* 08009464 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08009466 */ LDR R3, =D_030011a0 \n\
/* 08009468 */ LDR R0, [R3] \n\
/* 0800946a */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 0800946c */ BHI branch_08009484 \n\
/* 0800946e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009470 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08009472 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08009474 */ BEQ branch_08009484 \n\
/* 08009476 */ LDR R2, =D_030011b0 \n\
/* 08009478 */ LDR R1, [R3] \n\
/* 0800947a */ LSLS R0, R1, 0x2 \n\
/* 0800947c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800947e */ STR R4, [R0] \n\
/* 08009480 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08009482 */ STR R1, [R3] \n\
 \n\
branch_08009484: \n\
/* 08009484 */ LDR R5, =D_030011a4 \n\
/* 08009486 */ LDRB R0, [R5] \n\
/* 08009488 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0800948a */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0800948c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800948e */ BEQ branch_080094d4 \n\
/* 08009490 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009492 */ BL func_0804e8f8 \n\
/* 08009496 */ LDR R3, =D_030011a8 \n\
/* 08009498 */ LDR R0, [R3] \n\
/* 0800949a */ LDR R1, =0xaaa \n\
/* 0800949c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800949e */ STR R0, [R3] \n\
/* 080094a0 */ LDR R1, =D_030011ac \n\
/* 080094a2 */ LDR R2, [R1] \n\
/* 080094a4 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080094a6 */ BCC branch_080094ea \n\
/* 080094a8 */ LDRB R1, [R5] \n\
/* 080094aa */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 080094ac */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080094ae */ STRB R0, [R5] \n\
/* 080094b0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080094b2 */ LSLS R0, R0, 0x9 \n\
/* 080094b4 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080094b6 */ BLS branch_080094ea \n\
/* 080094b8 */ STR R0, [R3] \n\
/* 080094ba */ B branch_080094ea \n\
\n\
.ltorg \n\
 \n\
branch_080094d4: \n\
/* 080094d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080094d6 */ BL func_0804e8f8 \n\
/* 080094da */ LDR R1, =D_030011a8 \n\
/* 080094dc */ LDR R0, [R1] \n\
/* 080094de */ LDR R2, =0xfffffc8b \n\
/* 080094e0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080094e2 */ STR R0, [R1] \n\
/* 080094e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080094e6 */ BGE branch_080094ea \n\
/* 080094e8 */ STR R4, [R1] \n\
 \n\
branch_080094ea: \n\
/* 080094ea */ LDR R1, =0x0400010c @ !Hardware REG_TM3D \n\
/* 080094ec */ LDR R0, =0xc3fff0 \n\
/* 080094ee */ STR R0, [R1] \n\
/* 080094f0 */ POP {R4, R5} \n\
/* 080094f2 */ POP {R0} \n\
/* 080094f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
