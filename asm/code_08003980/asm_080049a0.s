asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080049a0 \n\
/* 080049a0 */ PUSH {LR} \n\
/* 080049a2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080049a4 */ LDRB R0, [R1] \n\
/* 080049a6 */ SUBS R0, 0x61 @ Subtract 0x61 from R0 \n\
/* 080049a8 */ LSLS R0, R0, 0x18 \n\
/* 080049aa */ LSRS R0, R0, 0x18 \n\
/* 080049ac */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 080049ae */ BHI branch_080049be \n\
/* 080049b0 */ LDRB R0, [R1, 0x1] \n\
/* 080049b2 */ CMP R0, 0x60 @ Compare R0 and 0x60 \n\
/* 080049b4 */ BLS branch_080049be \n\
/* 080049b6 */ CMP R0, 0x7A @ Compare R0 and 0x7A \n\
/* 080049b8 */ BHI branch_080049be \n\
/* 080049ba */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080049bc */ B branch_080049d6 \n\
 \n\
branch_080049be: \n\
/* 080049be */ LDRB R0, [R1] \n\
/* 080049c0 */ CMP R0, 0x82 @ Compare R0 and 0x82 \n\
/* 080049c2 */ BNE branch_080049d4 \n\
/* 080049c4 */ LDRB R0, [R1, 0x1] \n\
/* 080049c6 */ ADDS R0, 0x7F @ Add 0x7F to R0 \n\
/* 080049c8 */ LSLS R0, R0, 0x18 \n\
/* 080049ca */ LSRS R0, R0, 0x18 \n\
/* 080049cc */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 080049ce */ BHI branch_080049d4 \n\
/* 080049d0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080049d2 */ B branch_080049d6 \n\
 \n\
branch_080049d4: \n\
/* 080049d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080049d6: \n\
/* 080049d6 */ POP {R1} \n\
/* 080049d8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
