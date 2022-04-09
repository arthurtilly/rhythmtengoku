asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801777c \n\
/* 0801777c */ PUSH {LR} \n\
/* 0801777e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017780 */ CMP R1, 0x3F @ Compare R1 and 0x3F \n\
/* 08017782 */ BHI branch_0801779c \n\
/* 08017784 */ LDR R0, =D_030046a4 \n\
/* 08017786 */ LDR R0, [R0] \n\
/* 08017788 */ LSLS R1, R1, 0x2 \n\
/* 0801778a */ LDR R2, =0x4b4 \n\
/* 0801778c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801778e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08017790 */ LDR R0, [R0] \n\
/* 08017792 */ B branch_0801779e \n\
\n\
.ltorg \n\
 \n\
branch_0801779c: \n\
/* 0801779c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801779e: \n\
/* 0801779e */ POP {R1} \n\
/* 080177a0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
