asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027fc8 \n\
/* 08027fc8 */ PUSH {LR} \n\
/* 08027fca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08027fcc */ LDR R0, =0x000003b5 \n\
/* 08027fce */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08027fd0 */ BLS branch_08027fdc \n\
/* 08027fd2 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08027fd4 */ B branch_08027ffe \n\
\n\
.ltorg \n\
 \n\
branch_08027fdc: \n\
/* 08027fdc */ LDR R0, =0x00000383 \n\
/* 08027fde */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08027fe0 */ BLS branch_08027fec \n\
/* 08027fe2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08027fe4 */ B branch_08027ffe \n\
\n\
.ltorg \n\
 \n\
branch_08027fec: \n\
/* 08027fec */ LDR R0, =0x0000031f \n\
/* 08027fee */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08027ff0 */ BHI branch_08027ffc \n\
/* 08027ff2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08027ff4 */ B branch_08027ffe \n\
\n\
.ltorg \n\
 \n\
branch_08027ffc: \n\
/* 08027ffc */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08027ffe: \n\
/* 08027ffe */ POP {R1} \n\
/* 08028000 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
