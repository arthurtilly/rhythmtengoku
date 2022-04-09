asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a0f0 \n\
/* 0801a0f0 */ PUSH {LR} \n\
/* 0801a0f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a0f4 */ BL func_0800c604 \n\
/* 0801a0f8 */ LDR R0, =D_03004b10 \n\
/* 0801a0fa */ LDR R1, =0x2d6 \n\
/* 0801a0fc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a0fe */ LDR R1, =0x7fff \n\
/* 0801a100 */ STRH R1, [R0] \n\
/* 0801a102 */ LDR R0, =D_030046a4 \n\
/* 0801a104 */ LDR R0, [R0] \n\
/* 0801a106 */ LDR R0, [R0, 0x10] \n\
/* 0801a108 */ BL func_08002634 \n\
/* 0801a10c */ BL func_0800c3b8 \n\
/* 0801a110 */ LSLS R0, R0, 0x10 \n\
/* 0801a112 */ LSRS R0, R0, 0x10 \n\
/* 0801a114 */ LDR R1, =D_089d7b54 \n\
/* 0801a116 */ BL func_080087b4 \n\
/* 0801a11a */ LDR R1, =func_0800bd04 \n\
/* 0801a11c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a11e */ BL func_08005d38 \n\
/* 0801a122 */ POP {R0} \n\
/* 0801a124 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
