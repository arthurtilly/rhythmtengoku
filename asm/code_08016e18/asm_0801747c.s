asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801747c \n\
/* 0801747c */ PUSH {R4, LR} \n\
/* 0801747e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017480 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017482 */ BEQ branch_080174b4 \n\
/* 08017484 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017486 */ BL func_08017448 \n\
/* 0801748a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801748c */ BL func_08017458 \n\
/* 08017490 */ LDR R0, =D_03005380 \n\
/* 08017492 */ LDR R0, [R0] \n\
/* 08017494 */ LDR R1, =D_030046a4 \n\
/* 08017496 */ LDR R1, [R1] \n\
/* 08017498 */ LDR R2, =0x494 \n\
/* 0801749a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801749c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801749e */ LDRSH R1, [R1, R2] \n\
/* 080174a0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080174a2 */ BL func_0804d770 \n\
/* 080174a6 */ B branch_080174d6 \n\
\n\
.ltorg \n\
 \n\
branch_080174b4: \n\
/* 080174b4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080174b6 */ BL func_08017448 \n\
/* 080174ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080174bc */ BL func_08017458 \n\
/* 080174c0 */ LDR R0, =D_03005380 \n\
/* 080174c2 */ LDR R0, [R0] \n\
/* 080174c4 */ LDR R1, =D_030046a4 \n\
/* 080174c6 */ LDR R1, [R1] \n\
/* 080174c8 */ LDR R2, =0x494 \n\
/* 080174ca */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080174cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080174ce */ LDRSH R1, [R1, R2] \n\
/* 080174d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080174d2 */ BL func_0804d770 \n\
 \n\
branch_080174d6: \n\
/* 080174d6 */ POP {R4} \n\
/* 080174d8 */ POP {R0} \n\
/* 080174da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
