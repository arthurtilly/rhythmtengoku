asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802c3d0 \n\
/* 0802c3d0 */ PUSH {LR} \n\
/* 0802c3d2 */ LDR R1, =D_030055d0 \n\
/* 0802c3d4 */ LDR R2, [R1] \n\
/* 0802c3d6 */ LSLS R1, R0, 0x1 \n\
/* 0802c3d8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c3da */ LSLS R1, R1, 0x2 \n\
/* 0802c3dc */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 0802c3de */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802c3e0 */ LDR R2, [R2] \n\
/* 0802c3e2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0802c3e4 */ BGE branch_0802c3e8 \n\
/* 0802c3e6 */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
 \n\
branch_0802c3e8: \n\
/* 0802c3e8 */ ASRS R2, R2, 0x2 \n\
/* 0802c3ea */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0802c3ec */ BEQ branch_0802c3fc \n\
/* 0802c3ee */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0802c3f0 */ BLE branch_0802c404 \n\
/* 0802c3f2 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0802c3f4 */ BEQ branch_0802c400 \n\
/* 0802c3f6 */ B branch_0802c404 \n\
\n\
.ltorg \n\
 \n\
branch_0802c3fc: \n\
/* 0802c3fc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802c3fe */ B branch_0802c406 \n\
 \n\
branch_0802c400: \n\
/* 0802c400 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802c402 */ B branch_0802c406 \n\
 \n\
branch_0802c404: \n\
/* 0802c404 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0802c406: \n\
/* 0802c406 */ POP {R1} \n\
/* 0802c408 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
