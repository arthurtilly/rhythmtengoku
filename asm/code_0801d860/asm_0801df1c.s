asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801df1c \n\
/* 0801df1c */ PUSH {R4, R5, LR} \n\
/* 0801df1e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801df20 */ BL func_08006e88 \n\
/* 0801df24 */ BL func_08003fb4 \n\
/* 0801df28 */ LDR R4, =D_030046a4 \n\
/* 0801df2a */ LDR R0, [R4] \n\
/* 0801df2c */ LDRB R0, [R0] \n\
/* 0801df2e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801df30 */ BEQ branch_0801df56 \n\
/* 0801df32 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801df34 */ BGT branch_0801df40 \n\
/* 0801df36 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801df38 */ BEQ branch_0801df46 \n\
/* 0801df3a */ B branch_0801df94 \n\
\n\
.ltorg \n\
 \n\
branch_0801df40: \n\
/* 0801df40 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801df42 */ BEQ branch_0801df7c \n\
/* 0801df44 */ B branch_0801df94 \n\
 \n\
branch_0801df46: \n\
/* 0801df46 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0801df48 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801df4a */ BL func_080070c4 \n\
/* 0801df4e */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0801df50 */ BL func_080028ec \n\
/* 0801df54 */ B branch_0801df6a \n\
 \n\
branch_0801df56: \n\
/* 0801df56 */ LDR R0, =D_03004b10 \n\
/* 0801df58 */ LDR R1, =0x854 \n\
/* 0801df5a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801df5c */ LDRB R1, [R0] \n\
/* 0801df5e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0801df60 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801df62 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801df64 */ BEQ branch_0801df94 \n\
/* 0801df66 */ BL func_08004058 \n\
 \n\
branch_0801df6a: \n\
/* 0801df6a */ LDR R1, [R4] \n\
/* 0801df6c */ LDRB R0, [R1] \n\
/* 0801df6e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801df70 */ STRB R0, [R1] \n\
/* 0801df72 */ B branch_0801df94 \n\
\n\
.ltorg \n\
 \n\
branch_0801df7c: \n\
/* 0801df7c */ LDR R0, =D_03004ac0 \n\
/* 0801df7e */ LDRH R1, [R0] \n\
/* 0801df80 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0801df82 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801df84 */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 0801df86 */ BEQ branch_0801df94 \n\
/* 0801df88 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801df8a */ BL func_08002880 \n\
/* 0801df8e */ BL func_08002838 \n\
/* 0801df92 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_0801df94: \n\
/* 0801df94 */ BL func_08007410 \n\
/* 0801df98 */ BL func_08006f84 \n\
/* 0801df9c */ BL func_080042a4 \n\
/* 0801dfa0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801dfa2 */ POP {R4, R5} \n\
/* 0801dfa4 */ POP {R1} \n\
/* 0801dfa6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
