asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d0b8 \n\
/* 0802d0b8 */ PUSH {LR} \n\
/* 0802d0ba */ LDR R0, =D_030055d0 \n\
/* 0802d0bc */ LDR R0, [R0] \n\
/* 0802d0be */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0802d0c0 */ LSLS R2, R2, 0x1 \n\
/* 0802d0c2 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802d0c4 */ LDR R0, [R1] \n\
/* 0802d0c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802d0c8 */ BEQ branch_0802d0d2 \n\
/* 0802d0ca */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802d0cc */ BNE branch_0802d0d2 \n\
/* 0802d0ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802d0d0 */ STR R0, [R1] \n\
 \n\
branch_0802d0d2: \n\
/* 0802d0d2 */ POP {R0} \n\
/* 0802d0d4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
