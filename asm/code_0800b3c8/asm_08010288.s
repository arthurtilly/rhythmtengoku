asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010288 \n\
/* 08010288 */ PUSH {LR} \n\
/* 0801028a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801028c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801028e */ BEQ branch_0801029e \n\
/* 08010290 */ LDR R0, =D_03005380 \n\
/* 08010292 */ LDR R0, [R0] \n\
/* 08010294 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010296 */ LDRSH R1, [R1, R2] \n\
/* 08010298 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801029a */ BL func_0804ddb0 \n\
 \n\
branch_0801029e: \n\
/* 0801029e */ POP {R1} \n\
/* 080102a0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
