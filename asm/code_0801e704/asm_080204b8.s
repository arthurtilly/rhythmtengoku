asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080204b8 \n\
/* 080204b8 */ PUSH {R4, LR} \n\
/* 080204ba */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080204bc */ LDR R0, =D_030055d0 \n\
/* 080204be */ LDR R0, [R0] \n\
/* 080204c0 */ LDR R0, [R0, 0x4] \n\
/* 080204c2 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 080204c4 */ LDR R3, [R4, 0x18] \n\
/* 080204c6 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 080204c8 */ BLT branch_080204f8 \n\
/* 080204ca */ LDR R0, [R4, 0x4] \n\
/* 080204cc */ LDR R1, [R4, 0x10] \n\
/* 080204ce */ SUBS R1, 0x78 @ Subtract 0x78 from R1 \n\
/* 080204d0 */ LDR R2, [R4, 0x14] \n\
/* 080204d2 */ SUBS R2, 0x50 @ Subtract 0x50 from R2 \n\
/* 080204d4 */ BL func_0801fd70 \n\
/* 080204d8 */ LDR R0, [R4, 0x4] \n\
/* 080204da */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080204dc */ LDRSH R1, [R4, R2] \n\
/* 080204de */ BL func_0800fe94 \n\
/* 080204e2 */ LDRH R0, [R4, 0xE] \n\
/* 080204e4 */ LDRH R1, [R4, 0xC] \n\
/* 080204e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080204e8 */ STRH R0, [R4, 0xC] \n\
/* 080204ea */ LDR R0, [R4, 0x18] \n\
/* 080204ec */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 080204ee */ STR R0, [R4, 0x18] \n\
/* 080204f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080204f2 */ B branch_080204fa \n\
\n\
.ltorg \n\
 \n\
branch_080204f8: \n\
/* 080204f8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080204fa: \n\
/* 080204fa */ POP {R4} \n\
/* 080204fc */ POP {R1} \n\
/* 080204fe */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
