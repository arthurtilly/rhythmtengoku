asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002280 \n\
/* 08002280 */ PUSH {LR} \n\
/* 08002282 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08002284 */ LDR R1, =D_03000340 \n\
/* 08002286 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08002288 */ LDRB R1, [R0] \n\
/* 0800228a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800228c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800228e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002290 */ BEQ branch_0800229e \n\
/* 08002292 */ LDRH R0, [R2] \n\
/* 08002294 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002296 */ STRH R0, [R2] \n\
/* 08002298 */ LDRH R0, [R2, 0x4] \n\
/* 0800229a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800229c */ STRH R0, [R2, 0x4] \n\
 \n\
branch_0800229e: \n\
/* 0800229e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080022a0 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080022a2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080022a4 */ BEQ branch_080022b2 \n\
/* 080022a6 */ LDRH R0, [R2, 0x2] \n\
/* 080022a8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080022aa */ STRH R0, [R2, 0x2] \n\
/* 080022ac */ LDRH R0, [R2, 0x6] \n\
/* 080022ae */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080022b0 */ STRH R0, [R2, 0x6] \n\
 \n\
branch_080022b2: \n\
/* 080022b2 */ POP {R0} \n\
/* 080022b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
