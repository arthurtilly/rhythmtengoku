asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080308d4 \n\
/* 080308d4 */ PUSH {R4, LR} \n\
/* 080308d6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080308d8 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 080308da */ BL func_0800c3a4 \n\
/* 080308de */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080308e0 */ BHI branch_080308e6 \n\
/* 080308e2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080308e4 */ B branch_080308e8 \n\
 \n\
branch_080308e6: \n\
/* 080308e6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080308e8: \n\
/* 080308e8 */ POP {R4} \n\
/* 080308ea */ POP {R1} \n\
/* 080308ec */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
