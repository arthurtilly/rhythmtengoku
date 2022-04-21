asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019480 \n\
/* 08019480 */ PUSH {R4, LR} \n\
/* 08019482 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019484 */ LDRH R0, [R4, 0x4] \n\
/* 08019486 */ LDRH R1, [R4, 0x2] \n\
/* 08019488 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801948a */ LDRH R1, [R4] \n\
/* 0801948c */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0801948e */ STRH R0, [R4, 0xA] \n\
/* 08019490 */ LSLS R1, R1, 0x10 \n\
/* 08019492 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08019494 */ BEQ branch_080194e2 \n\
/* 08019496 */ LDRH R0, [R4, 0x2] \n\
/* 08019498 */ LSLS R0, R0, 0x8 \n\
/* 0801949a */ LDRH R1, [R4] \n\
/* 0801949c */ BL Div \n\
/* 080194a0 */ STRH R0, [R4, 0xC] \n\
/* 080194a2 */ LDRH R0, [R4, 0x4] \n\
/* 080194a4 */ LSLS R0, R0, 0x8 \n\
/* 080194a6 */ LDRH R1, [R4] \n\
/* 080194a8 */ BL Div \n\
/* 080194ac */ STRH R0, [R4, 0xE] \n\
/* 080194ae */ LDRH R0, [R4, 0xA] \n\
/* 080194b0 */ LSLS R0, R0, 0x8 \n\
/* 080194b2 */ LDRH R1, [R4] \n\
/* 080194b4 */ BL Div \n\
/* 080194b8 */ STRH R0, [R4, 0x10] \n\
/* 080194ba */ LDRH R0, [R4] \n\
/* 080194bc */ LDRH R1, [R4, 0xA] \n\
/* 080194be */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080194c0 */ BEQ branch_080194e2 \n\
/* 080194c2 */ LDRH R0, [R4, 0x6] \n\
/* 080194c4 */ LSLS R0, R0, 0x8 \n\
/* 080194c6 */ LDRH R1, [R4] \n\
/* 080194c8 */ LDRH R2, [R4, 0xA] \n\
/* 080194ca */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 080194cc */ BL Div \n\
/* 080194d0 */ STRH R0, [R4, 0x12] \n\
/* 080194d2 */ LDRH R0, [R4, 0x8] \n\
/* 080194d4 */ LSLS R0, R0, 0x8 \n\
/* 080194d6 */ LDRH R1, [R4] \n\
/* 080194d8 */ LDRH R2, [R4, 0xA] \n\
/* 080194da */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 080194dc */ BL Div \n\
/* 080194e0 */ STRH R0, [R4, 0x14] \n\
 \n\
branch_080194e2: \n\
/* 080194e2 */ POP {R4} \n\
/* 080194e4 */ POP {R0} \n\
/* 080194e6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
