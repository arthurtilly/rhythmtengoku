asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b3c8 \n\
/* 0800b3c8 */ PUSH {LR} \n\
/* 0800b3ca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800b3cc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b3ce */ BEQ branch_0800b3de \n\
/* 0800b3d0 */ LDR R0, =D_03005380 \n\
/* 0800b3d2 */ LDR R0, [R0] \n\
/* 0800b3d4 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 0800b3d6 */ LDRSH R1, [R1, R2] \n\
/* 0800b3d8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800b3da */ BL func_0804d770 \n\
 \n\
branch_0800b3de: \n\
/* 0800b3de */ POP {R0} \n\
/* 0800b3e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
