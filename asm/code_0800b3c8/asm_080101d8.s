asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080101d8 \n\
/* 080101d8 */ PUSH {R4, LR} \n\
/* 080101da */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080101dc */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080101de */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080101e0 */ BEQ branch_080101ee \n\
/* 080101e2 */ LDR R0, =D_03005380 \n\
/* 080101e4 */ LDR R0, [R0] \n\
/* 080101e6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080101e8 */ LDRSH R1, [R3, R4] \n\
/* 080101ea */ BL func_0804d7b4 \n\
 \n\
branch_080101ee: \n\
/* 080101ee */ POP {R4} \n\
/* 080101f0 */ POP {R0} \n\
/* 080101f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
