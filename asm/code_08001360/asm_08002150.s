asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002150 \n\
/* 08002150 */ PUSH {R4-R6, LR} \n\
/* 08002152 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002154 */ LDR R1, =D_03000360 \n\
/* 08002156 */ LDRB R2, [R1] \n\
/* 08002158 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0800215a */ BCS branch_0800218a \n\
/* 0800215c */ LDR R5, =D_03000340 \n\
/* 0800215e */ MOVS R6, 0x11 @ Set R6 to 0x11 \n\
/* 08002160 */ LDR R3, =D_03000368 \n\
/* 08002162 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
 \n\
branch_08002164: \n\
/* 08002164 */ ADDS R2, R0, R5 @ Set R2 to R0 + R5 \n\
/* 08002166 */ LDRB R1, [R2] \n\
/* 08002168 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800216a */ BNE branch_08002180 \n\
/* 0800216c */ STRB R6, [R2] \n\
/* 0800216e */ STR R1, [R3] \n\
/* 08002170 */ B branch_0800218e \n\
\n\
.ltorg \n\
 \n\
branch_08002180: \n\
/* 08002180 */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 08002182 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08002184 */ LDRB R1, [R4] \n\
/* 08002186 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08002188 */ BCC branch_08002164 \n\
 \n\
branch_0800218a: \n\
/* 0800218a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800218c */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800218e: \n\
/* 0800218e */ POP {R4-R6} \n\
/* 08002190 */ POP {R1} \n\
/* 08002192 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
