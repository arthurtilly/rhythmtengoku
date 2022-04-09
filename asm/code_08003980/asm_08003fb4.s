asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003fb4 \n\
/* 08003fb4 */ PUSH {LR} \n\
/* 08003fb6 */ LDR R2, =D_03000748 \n\
/* 08003fb8 */ LDRB R3, [R2] \n\
/* 08003fba */ LSLS R0, R3, 0x1F \n\
/* 08003fbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003fbe */ BEQ branch_08003fe0 \n\
/* 08003fc0 */ LDR R1, =0x040000d4 @ !Hardware REG_DMA3SAD \n\
/* 08003fc2 */ LDR R0, [R2, 0x8] \n\
/* 08003fc4 */ STR R0, [R1] \n\
/* 08003fc6 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08003fc8 */ LDR R0, [R2, 0xC] \n\
/* 08003fca */ STR R0, [R1] \n\
/* 08003fcc */ LDRH R1, [R2, 0x2] \n\
/* 08003fce */ LSLS R0, R3, 0x1E \n\
/* 08003fd0 */ LSRS R0, R0, 0x1F \n\
/* 08003fd2 */ LSLS R0, R0, 0xA \n\
/* 08003fd4 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003fd6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08003fd8 */ LSLS R0, R0, 0x18 \n\
/* 08003fda */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003fdc */ LDR R0, =0x040000dc @ !Hardware REG_DMA3CNT_L \n\
/* 08003fde */ STR R1, [R0] \n\
 \n\
branch_08003fe0: \n\
/* 08003fe0 */ POP {R0} \n\
/* 08003fe2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
