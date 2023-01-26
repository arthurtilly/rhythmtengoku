asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023694 \n\
/* 08023694 */ PUSH {R4-R6, LR} \n\
/* 08023696 */ LDR R2, =D_030055d0 \n\
/* 08023698 */ LDR R1, [R2] \n\
/* 0802369a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802369c */ STRB R0, [R1, 0x1] \n\
/* 0802369e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080236a0 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080236a2 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 080236a4 */ LDR R0, =0x0000ffff \n\
/* 080236a6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080236a8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
 \n\
branch_080236aa: \n\
/* 080236aa */ LDR R1, [R6] \n\
/* 080236ac */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080236ae */ LDRH R0, [R1] \n\
/* 080236b0 */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 080236b2 */ STRH R0, [R1] \n\
/* 080236b4 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 080236b6 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080236b8 */ CMP R3, 0xD @ Compare R3 and 0xD \n\
/* 080236ba */ BLS branch_080236aa \n\
/* 080236bc */ LDR R0, [R4] \n\
/* 080236be */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 080236c0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080236c2 */ STRB R2, [R0] \n\
/* 080236c4 */ LDR R0, [R4] \n\
/* 080236c6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080236c8 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 080236ca */ LDRB R1, [R1] \n\
/* 080236cc */ ADDS R0, 0x75 @ Add 0x75 to R0 \n\
/* 080236ce */ STRB R1, [R0] \n\
/* 080236d0 */ LDR R0, [R4] \n\
/* 080236d2 */ STRB R2, [R0, 0x2] \n\
/* 080236d4 */ POP {R4-R6} \n\
/* 080236d6 */ POP {R0} \n\
/* 080236d8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
