asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dfe8 \n\
/* 0801dfe8 */ PUSH {LR} \n\
/* 0801dfea */ SUB SP, 0x8 \n\
/* 0801dfec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801dfee */ BL func_08007324 \n\
/* 0801dff2 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0801dff4 */ BL func_0800c3a4 \n\
/* 0801dff8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801dffa */ LSLS R1, R1, 0x18 \n\
/* 0801dffc */ LSRS R1, R1, 0x18 \n\
/* 0801dffe */ LDR R3, =0x7fff \n\
/* 0801e000 */ LDR R0, =D_0893253c \n\
/* 0801e002 */ STR R0, [SP] \n\
/* 0801e004 */ LDR R0, =D_03004b64 \n\
/* 0801e006 */ STR R0, [SP, 0x4] \n\
/* 0801e008 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e00a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e00c */ BL func_08002018 \n\
/* 0801e010 */ LDR R1, =func_0800bd04 \n\
/* 0801e012 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e014 */ BL func_08005d38 \n\
/* 0801e018 */ ADD SP, 0x8 \n\
/* 0801e01a */ POP {R0} \n\
/* 0801e01c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
