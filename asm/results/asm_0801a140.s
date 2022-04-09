asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a140 \n\
/* 0801a140 */ PUSH {LR} \n\
/* 0801a142 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a144 */ BL func_0800c604 \n\
/* 0801a148 */ BL func_0800c3b8 \n\
/* 0801a14c */ LSLS R0, R0, 0x10 \n\
/* 0801a14e */ LSRS R0, R0, 0x10 \n\
/* 0801a150 */ LDR R1, =D_030046a4 \n\
/* 0801a152 */ LDR R1, [R1] \n\
/* 0801a154 */ LDR R1, [R1, 0xC] \n\
/* 0801a156 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801a158 */ LSLS R2, R2, 0x6 \n\
/* 0801a15a */ BL func_08002ee0 \n\
/* 0801a15e */ LDR R1, =func_0801a0f0 \n\
/* 0801a160 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a162 */ BL func_08005d38 \n\
/* 0801a166 */ POP {R0} \n\
/* 0801a168 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
