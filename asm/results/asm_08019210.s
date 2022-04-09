asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019210 \n\
/* 08019210 */ PUSH {R4-R7, LR} \n\
/* 08019212 */ SUB SP, 0x10 \n\
/* 08019214 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08019216 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08019218 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0801921a */ LDR R4, =D_030046a4 \n\
/* 0801921c */ LDR R0, [R4] \n\
/* 0801921e */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 08019220 */ LDRB R0, [R0] \n\
/* 08019222 */ LSLS R0, R0, 0x1 \n\
/* 08019224 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08019226 */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 08019228 */ BHI branch_0801925c \n\
/* 0801922a */ BL func_0800c3b8 \n\
/* 0801922e */ LDR R1, [R4] \n\
/* 08019230 */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 08019232 */ LDRB R2, [R1] \n\
/* 08019234 */ LSLS R2, R2, 0x1 \n\
/* 08019236 */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 08019238 */ STR R5, [SP] \n\
/* 0801923a */ STR R6, [SP, 0x4] \n\
/* 0801923c */ STR R7, [SP, 0x8] \n\
/* 0801923e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08019240 */ LSLS R1, R1, 0x1 \n\
/* 08019242 */ STR R1, [SP, 0xC] \n\
/* 08019244 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08019246 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019248 */ BL func_0800a004 \n\
/* 0801924c */ LDR R2, [R4] \n\
/* 0801924e */ ADDS R2, 0x24 @ Add 0x24 to R2 \n\
/* 08019250 */ LDRB R1, [R2] \n\
/* 08019252 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08019254 */ STRB R1, [R2] \n\
/* 08019256 */ B branch_0801925e \n\
\n\
.ltorg \n\
 \n\
branch_0801925c: \n\
/* 0801925c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801925e: \n\
/* 0801925e */ ADD SP, 0x10 \n\
/* 08019260 */ POP {R4-R7} \n\
/* 08019262 */ POP {R1} \n\
/* 08019264 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
