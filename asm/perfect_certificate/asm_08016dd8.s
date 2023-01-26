asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016dd8 \n\
/* 08016dd8 */ PUSH {LR} \n\
/* 08016dda */ LDR R0, =D_030046a4 \n\
/* 08016ddc */ LDR R0, [R0] \n\
/* 08016dde */ LDR R0, [R0, 0x4] \n\
/* 08016de0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016de2 */ BNE branch_08016dec \n\
/* 08016de4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016de6 */ B branch_08016dee \n\
\n\
.ltorg \n\
 \n\
branch_08016dec: \n\
/* 08016dec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08016dee: \n\
/* 08016dee */ POP {R1} \n\
/* 08016df0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
