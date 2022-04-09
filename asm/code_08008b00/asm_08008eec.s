asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008eec \n\
/* 08008eec */ PUSH {LR} \n\
/* 08008eee */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08008ef0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08008ef2 */ BEQ branch_08008efc \n\
/* 08008ef4 */ LSLS R0, R1, 0x2 \n\
/* 08008ef6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08008ef8 */ LDR R0, [R0] \n\
/* 08008efa */ B branch_08008efe \n\
 \n\
branch_08008efc: \n\
/* 08008efc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08008efe: \n\
/* 08008efe */ POP {R1} \n\
/* 08008f00 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
