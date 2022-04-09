asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029eac \n\
/* 08029eac */ PUSH {LR} \n\
/* 08029eae */ LDR R0, =D_030055d0 \n\
/* 08029eb0 */ LDR R0, [R0] \n\
/* 08029eb2 */ LDR R2, =0x00000425 \n\
/* 08029eb4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029eb6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029eb8 */ STRB R2, [R0] \n\
/* 08029eba */ LDR R0, [R1] \n\
/* 08029ebc */ LSLS R0, R0, 0x19 \n\
/* 08029ebe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029ec0 */ BGE branch_08029ec6 \n\
/* 08029ec2 */ BL func_08018068 \n\
 \n\
branch_08029ec6: \n\
/* 08029ec6 */ BL func_08027f90 \n\
/* 08029eca */ POP {R0} \n\
/* 08029ecc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
