asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006e00 \n\
/* 08006e00 */ PUSH {LR} \n\
/* 08006e02 */ LDR R2, =D_03004b10 \n\
/* 08006e04 */ LDR R1, =0x854 \n\
/* 08006e06 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08006e08 */ LDRB R1, [R0] \n\
/* 08006e0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006e0c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006e0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006e10 */ BEQ branch_08006e1e \n\
/* 08006e12 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08006e14 */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 08006e16 */ LDR R1, =0x04000020 @ !Hardware REG_BG2PA \n\
/* 08006e18 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08006e1a */ BL CpuFastSet \n\
 \n\
branch_08006e1e: \n\
/* 08006e1e */ POP {R0} \n\
/* 08006e20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
