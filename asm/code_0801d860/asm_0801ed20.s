asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ed20 \n\
/* 0801ed20 */ PUSH {LR} \n\
/* 0801ed22 */ LDR R0, =D_030046a4 \n\
/* 0801ed24 */ LDR R0, [R0] \n\
/* 0801ed26 */ LDR R0, [R0, 0x8] \n\
/* 0801ed28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ed2a */ BNE branch_0801ed34 \n\
/* 0801ed2c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ed2e */ B branch_0801ed36 \n\
\n\
.ltorg \n\
 \n\
branch_0801ed34: \n\
/* 0801ed34 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801ed36: \n\
/* 0801ed36 */ POP {R1} \n\
/* 0801ed38 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
