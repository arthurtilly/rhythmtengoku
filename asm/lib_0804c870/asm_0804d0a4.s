asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d0a4 \n\
/* 0804d0a4 */ PUSH {R4, LR} \n\
/* 0804d0a6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804d0a8 */ LDRH R4, [R3, 0x10] \n\
/* 0804d0aa */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804d0ac */ LDRSH R2, [R3, R0] \n\
/* 0804d0ae */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804d0b0 */ BLT branch_0804d0ca \n\
/* 0804d0b2 */ LDR R0, [R3, 0x8] \n\
/* 0804d0b4 */ LSLS R1, R2, 0x4 \n\
/* 0804d0b6 */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 0804d0b8 */ LSLS R1, R1, 0x2 \n\
/* 0804d0ba */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d0bc */ LDRH R0, [R1, 0x1A] \n\
/* 0804d0be */ STRH R0, [R3, 0x10] \n\
/* 0804d0c0 */ LSLS R0, R0, 0x10 \n\
/* 0804d0c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d0c4 */ BGE branch_0804d0ca \n\
/* 0804d0c6 */ LDR R0, =0x0000ffff \n\
/* 0804d0c8 */ STRH R0, [R3, 0x12] \n\
 \n\
branch_0804d0ca: \n\
/* 0804d0ca */ LSLS R0, R4, 0x10 \n\
/* 0804d0cc */ ASRS R0, R0, 0x10 \n\
/* 0804d0ce */ POP {R4} \n\
/* 0804d0d0 */ POP {R1} \n\
/* 0804d0d2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
