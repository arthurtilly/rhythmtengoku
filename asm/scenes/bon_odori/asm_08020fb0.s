asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020fb0 \n\
/* 08020fb0 */ PUSH {R4, LR} \n\
/* 08020fb2 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08020fb4 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08020fb6 */ BL func_0800c3a4 \n\
/* 08020fba */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08020fbc */ BHI branch_08020fc2 \n\
/* 08020fbe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020fc0 */ B branch_08020fc4 \n\
 \n\
branch_08020fc2: \n\
/* 08020fc2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08020fc4: \n\
/* 08020fc4 */ POP {R4} \n\
/* 08020fc6 */ POP {R1} \n\
/* 08020fc8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
