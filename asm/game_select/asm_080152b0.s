asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080152b0 \n\
/* 080152b0 */ PUSH {R4-R7, LR} \n\
/* 080152b2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080152b4 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080152b6 */ PUSH {R6, R7} \n\
/* 080152b8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080152ba */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080152bc */ LDR R0, =D_030046a8 \n\
/* 080152be */ LDR R0, [R0] \n\
/* 080152c0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080152c2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080152c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080152c6 */ LDR R3, =0xffff \n\
/* 080152c8 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
 \n\
branch_080152ca: \n\
/* 080152ca */ LDRH R1, [R0] \n\
/* 080152cc */ CMP R1, R3 @ Check R1 - R3 \n\
/* 080152ce */ BEQ branch_080152d4 \n\
/* 080152d0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080152d2 */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
 \n\
branch_080152d4: \n\
/* 080152d4 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 080152d6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080152d8 */ CMP R2, 0x36 @ Compare R2 and 0x36 \n\
/* 080152da */ BLS branch_080152ca \n\
/* 080152dc */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080152de */ BNE branch_080152ec \n\
/* 080152e0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080152e2 */ B branch_0801532a \n\
\n\
.ltorg \n\
 \n\
branch_080152ec: \n\
/* 080152ec */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080152ee */ ADDS R1, 0x30 @ Add 0x30 to R1 \n\
/* 080152f0 */ LSLS R0, R1, 0x3 \n\
/* 080152f2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080152f4 */ LSLS R0, R0, 0x8 \n\
/* 080152f6 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 080152f8 */ LSLS R1, R1, 0x1 \n\
/* 080152fa */ BL __udivsi3 \n\
/* 080152fe */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08015300 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08015302 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08015304 */ LSRS R0, R0, 0x8 \n\
/* 08015306 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08015308 */ BL __udivsi3 \n\
/* 0801530c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801530e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015310 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015312 */ BEQ branch_08015316 \n\
/* 08015314 */ STR R5, [R0] \n\
 \n\
branch_08015316: \n\
/* 08015316 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015318 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801531a */ BEQ branch_08015328 \n\
/* 0801531c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801531e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08015320 */ BL __udivsi3 \n\
/* 08015324 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015326 */ STR R0, [R1] \n\
 \n\
branch_08015328: \n\
/* 08015328 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
 \n\
branch_0801532a: \n\
/* 0801532a */ POP {R3, R4} \n\
/* 0801532c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801532e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08015330 */ POP {R4-R7} \n\
/* 08015332 */ POP {R1} \n\
/* 08015334 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
