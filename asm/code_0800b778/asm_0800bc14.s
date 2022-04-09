asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bc14 \n\
/* 0800bc14 */ PUSH {LR} \n\
/* 0800bc16 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800bc18 */ LDR R0, =D_030053c0 \n\
/* 0800bc1a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800bc1c */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
 \n\
branch_0800bc1e: \n\
/* 0800bc1e */ LDRB R0, [R1] \n\
/* 0800bc20 */ LSLS R0, R0, 0x1F \n\
/* 0800bc22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bc24 */ BEQ branch_0800bc30 \n\
/* 0800bc26 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800bc28 */ B branch_0800bc3a \n\
\n\
.ltorg \n\
 \n\
branch_0800bc30: \n\
/* 0800bc30 */ ADDS R1, 0x9C @ Add 0x9C to R1 \n\
/* 0800bc32 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800bc34 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0800bc36 */ BLS branch_0800bc1e \n\
/* 0800bc38 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800bc3a: \n\
/* 0800bc3a */ POP {R1} \n\
/* 0800bc3c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
