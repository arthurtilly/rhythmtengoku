asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a3fc \n\
/* 0804a3fc */ PUSH {LR} \n\
/* 0804a3fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804a400 */ LDR R0, =D_03005b8c \n\
/* 0804a402 */ LDRH R1, [R0] \n\
/* 0804a404 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 0804a406 */ BGE branch_0804a42c \n\
/* 0804a408 */ LDR R0, =D_030064bc \n\
/* 0804a40a */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0804a40c */ LDR R1, [R0] \n\
 \n\
branch_0804a40e: \n\
/* 0804a40e */ LDRB R0, [R1] \n\
/* 0804a410 */ LSLS R0, R0, 0x1F \n\
/* 0804a412 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a414 */ BNE branch_0804a424 \n\
/* 0804a416 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804a418 */ B branch_0804a430 \n\
\n\
.ltorg \n\
 \n\
branch_0804a424: \n\
/* 0804a424 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0804a426 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804a428 */ CMP R2, R3 @ Check R2 - R3 \n\
/* 0804a42a */ BLT branch_0804a40e \n\
 \n\
branch_0804a42c: \n\
/* 0804a42c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a42e */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804a430: \n\
/* 0804a430 */ POP {R1} \n\
/* 0804a432 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
