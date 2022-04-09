asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011f68 \n\
/* 08011f68 */ PUSH {LR} \n\
/* 08011f6a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08011f6c */ CMP R2, 0x13 @ Compare R2 and 0x13 \n\
/* 08011f6e */ BLS branch_08011f74 \n\
/* 08011f70 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011f72 */ B branch_08011f9e \n\
 \n\
branch_08011f74: \n\
/* 08011f74 */ LDR R0, =D_030046a8 \n\
/* 08011f76 */ LDR R0, [R0] \n\
/* 08011f78 */ LDR R1, =0x27b \n\
/* 08011f7a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08011f7c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08011f7e */ LDRB R0, [R0] \n\
/* 08011f80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011f82 */ BEQ branch_08011f9c \n\
/* 08011f84 */ LDR R1, =D_089d7e74 \n\
/* 08011f86 */ LSLS R0, R2, 0x4 \n\
/* 08011f88 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08011f8a */ LDR R0, [R0] \n\
/* 08011f8c */ B branch_08011f9e \n\
\n\
.ltorg \n\
 \n\
branch_08011f9c: \n\
/* 08011f9c */ LDR R0, =D_08050bc8 \n\
 \n\
branch_08011f9e: \n\
/* 08011f9e */ POP {R1} \n\
/* 08011fa0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
