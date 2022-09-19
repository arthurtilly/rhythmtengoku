asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d410 \n\
/* 0801d410 */ PUSH {R4, LR} \n\
/* 0801d412 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801d414 */ LDR R4, =D_03001550 \n\
/* 0801d416 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d418 */ LDR R3, =D_03001554 \n\
 \n\
branch_0801d41a: \n\
/* 0801d41a */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0801d41c */ STRB R2, [R0] \n\
/* 0801d41e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0801d420 */ STRB R2, [R0] \n\
/* 0801d422 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0801d424 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 0801d426 */ BLS branch_0801d41a \n\
/* 0801d428 */ POP {R4} \n\
/* 0801d42a */ POP {R0} \n\
/* 0801d42c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
