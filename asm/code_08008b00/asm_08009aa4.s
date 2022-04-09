asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009aa4 \n\
/* 08009aa4 */ PUSH {LR} \n\
/* 08009aa6 */ LDRB R2, [R0] \n\
/* 08009aa8 */ LDRB R3, [R0, 0x1] \n\
/* 08009aaa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08009aac */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 08009aae */ LSLS R0, R0, 0x18 \n\
/* 08009ab0 */ LSRS R0, R0, 0x18 \n\
/* 08009ab2 */ CMP R0, 0x5E @ Compare R0 and 0x5E \n\
/* 08009ab4 */ BHI branch_08009ad4 \n\
/* 08009ab6 */ LDR R1, =D_08938138 \n\
/* 08009ab8 */ LDRB R0, [R1] \n\
/* 08009aba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009abc */ BEQ branch_08009aee \n\
 \n\
branch_08009abe: \n\
/* 08009abe */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08009ac0 */ BEQ branch_08009ad0 \n\
/* 08009ac2 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08009ac4 */ LDRB R0, [R1] \n\
/* 08009ac6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009ac8 */ BNE branch_08009abe \n\
/* 08009aca */ B branch_08009aee \n\
\n\
.ltorg \n\
 \n\
branch_08009ad0: \n\
/* 08009ad0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009ad2 */ B branch_08009af0 \n\
 \n\
branch_08009ad4: \n\
/* 08009ad4 */ LDR R1, =D_089380e8 \n\
/* 08009ad6 */ B branch_08009ae8 \n\
\n\
.ltorg \n\
 \n\
branch_08009adc: \n\
/* 08009adc */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08009ade */ BNE branch_08009ae6 \n\
/* 08009ae0 */ LDRB R0, [R1, 0x1] \n\
/* 08009ae2 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08009ae4 */ BEQ branch_08009ad0 \n\
 \n\
branch_08009ae6: \n\
/* 08009ae6 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
 \n\
branch_08009ae8: \n\
/* 08009ae8 */ LDRB R0, [R1] \n\
/* 08009aea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009aec */ BNE branch_08009adc \n\
 \n\
branch_08009aee: \n\
/* 08009aee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08009af0: \n\
/* 08009af0 */ POP {R1} \n\
/* 08009af2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
