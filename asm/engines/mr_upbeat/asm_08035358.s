asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035358 \n\
/* 08035358 */ PUSH {LR} \n\
/* 0803535a */ LDR R0, =gCurrentEngineData \n\
/* 0803535c */ LDR R1, [R0] \n\
/* 0803535e */ LDRB R0, [R1, 0x9] \n\
/* 08035360 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035362 */ BNE branch_08035378 \n\
/* 08035364 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035366 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08035368 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0803536a */ LDRB R0, [R0] \n\
/* 0803536c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803536e */ BNE branch_08035386 \n\
/* 08035370 */ B branch_08035384 \n\
\n\
.ltorg \n\
 \n\
branch_08035378: \n\
/* 08035378 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803537a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803537c */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0803537e */ LDRB R0, [R0] \n\
/* 08035380 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08035382 */ BNE branch_08035386 \n\
 \n\
branch_08035384: \n\
/* 08035384 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_08035386: \n\
/* 08035386 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08035388 */ POP {R1} \n\
/* 0803538a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
