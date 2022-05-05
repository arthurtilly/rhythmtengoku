asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049ad8 \n\
/* 08049ad8 */ PUSH {LR} \n\
/* 08049ada */ SUB SP, 0x4 \n\
/* 08049adc */ LDR R1, =D_030064c4 \n\
/* 08049ade */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049ae0 */ STRH R0, [R1] \n\
/* 08049ae2 */ LDR R0, =D_030055f4 \n\
/* 08049ae4 */ LDR R0, [R0] \n\
/* 08049ae6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08049ae8 */ BEQ branch_08049b02 \n\
/* 08049aea */ LDR R1, =0x040000c4 @ !Hardware REG_DMA1CNT_L \n\
/* 08049aec */ LDR R0, =0x84400004 \n\
/* 08049aee */ STR R0, [R1] \n\
/* 08049af0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049af2 */ STR R0, [SP] \n\
/* 08049af4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049af6 */ STR R0, [SP] \n\
/* 08049af8 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08049afa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08049afc */ LSLS R2, R2, 0x3 \n\
/* 08049afe */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049b00 */ STRH R0, [R1] \n\
 \n\
branch_08049b02: \n\
/* 08049b02 */ LDR R1, =0x040000d0 @ !Hardware REG_DMA2CNT_L\n\
/* 08049b04 */ LDR R0, =0x84400004 \n\
/* 08049b06 */ STR R0, [R1] \n\
/* 08049b08 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049b0a */ STR R0, [SP] \n\
/* 08049b0c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049b0e */ STR R0, [SP] \n\
/* 08049b10 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08049b12 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08049b14 */ LSLS R2, R2, 0x3 \n\
/* 08049b16 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049b18 */ STRH R0, [R1] \n\
/* 08049b1a */ ADD SP, 0x4 \n\
/* 08049b1c */ POP {R0} \n\
/* 08049b1e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
