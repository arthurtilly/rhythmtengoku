asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a690 \n\
/* 0804a690 */ PUSH {LR} \n\
/* 0804a692 */ LSLS R1, R1, 0x18 \n\
/* 0804a694 */ LSRS R2, R1, 0x18 \n\
/* 0804a696 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804a698 */ BGE branch_0804a6a4 \n\
/* 0804a69a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804a69c */ CMP R2, 0xBE @ Compare R2 and 0xBE \n\
/* 0804a69e */ BHI branch_0804a6a2 \n\
/* 0804a6a0 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
 \n\
branch_0804a6a2: \n\
/* 0804a6a2 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
 \n\
branch_0804a6a4: \n\
/* 0804a6a4 */ LDR R0, [R0, 0xC] \n\
/* 0804a6a6 */ LSLS R1, R2, 0x1 \n\
/* 0804a6a8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804a6aa */ LDRH R0, [R1] \n\
/* 0804a6ac */ POP {R1} \n\
/* 0804a6ae */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
