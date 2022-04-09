asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013348 \n\
/* 08013348 */ PUSH {R4-R6, LR} \n\
/* 0801334a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801334c */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0801334e */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08013350 */ LDR R0, =D_030046a8 \n\
/* 08013352 */ LDR R5, [R0] \n\
/* 08013354 */ CMP R4, 0xE @ Compare R4 and 0xE \n\
/* 08013356 */ BHI branch_0801337c \n\
/* 08013358 */ CMP R3, 0xB @ Compare R3 and 0xB \n\
/* 0801335a */ BHI branch_0801337c \n\
/* 0801335c */ LDR R2, =D_089ceafc \n\
/* 0801335e */ LSLS R1, R3, 0x4 \n\
/* 08013360 */ SUBS R1, R1, R3 @ Set R1 to R1 - R3 \n\
/* 08013362 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 08013364 */ LSLS R0, R1, 0x2 \n\
/* 08013366 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013368 */ LSLS R0, R0, 0x2 \n\
/* 0801336a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801336c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801336e */ LDRSH R1, [R0, R2] \n\
/* 08013370 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08013372 */ BLT branch_0801337c \n\
/* 08013374 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08013376 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 08013378 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801337a */ STRB R6, [R0] \n\
 \n\
branch_0801337c: \n\
/* 0801337c */ POP {R4-R6} \n\
/* 0801337e */ POP {R0} \n\
/* 08013380 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
