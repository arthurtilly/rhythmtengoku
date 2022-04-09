asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080100f0 \n\
/* 080100f0 */ PUSH {LR} \n\
/* 080100f2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080100f4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080100f6 */ BEQ branch_08010106 \n\
/* 080100f8 */ LDR R0, =D_03005380 \n\
/* 080100fa */ LDR R0, [R0] \n\
/* 080100fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080100fe */ LDRSH R1, [R1, R2] \n\
/* 08010100 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08010102 */ BL func_0804ddb0 \n\
 \n\
branch_08010106: \n\
/* 08010106 */ POP {R1} \n\
/* 08010108 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
