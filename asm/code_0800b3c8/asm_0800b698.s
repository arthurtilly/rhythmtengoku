asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b698 \n\
/* 0800b698 */ PUSH {LR} \n\
/* 0800b69a */ LDR R1, =D_030053c0 \n\
/* 0800b69c */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 0800b69e */ LSLS R2, R2, 0x1 \n\
/* 0800b6a0 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0800b6a2 */ LDR R2, [R0] \n\
/* 0800b6a4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800b6a6 */ BEQ branch_0800b6b4 \n\
/* 0800b6a8 */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 0800b6aa */ LSLS R3, R3, 0x1 \n\
/* 0800b6ac */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0800b6ae */ LDR R0, [R0] \n\
/* 0800b6b0 */ BL _call_via_r2 \n\
 \n\
branch_0800b6b4: \n\
/* 0800b6b4 */ POP {R0} \n\
/* 0800b6b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
