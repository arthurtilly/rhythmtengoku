asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080141d8 \n\
/* 080141d8 */ PUSH {LR} \n\
/* 080141da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080141dc */ BLT branch_080141f0 \n\
/* 080141de */ CMP R0, 0x36 @ Compare R0 and 0x36 \n\
/* 080141e0 */ BGT branch_080141f0 \n\
/* 080141e2 */ LSLS R0, R0, 0x5 \n\
/* 080141e4 */ LDR R1, =D_089ce344 \n\
/* 080141e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080141e8 */ LDR R0, [R0, 0x4] \n\
/* 080141ea */ B branch_080141f2 \n\
\n\
.ltorg \n\
 \n\
branch_080141f0: \n\
/* 080141f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080141f2: \n\
/* 080141f2 */ POP {R1} \n\
/* 080141f4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
