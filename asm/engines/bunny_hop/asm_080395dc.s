asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080395dc \n\
/* 080395dc */ PUSH {LR} \n\
/* 080395de */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080395e0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080395e2 */ BEQ branch_080395fc \n\
/* 080395e4 */ LDR R0, =gCurrentEngineData \n\
/* 080395e6 */ LDR R1, [R0] \n\
/* 080395e8 */ ADDS R1, 0xEC @ Add 0xEC to R1 \n\
/* 080395ea */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 080395ec */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 080395ee */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 080395f0 */ ADDS R0, 0x60 @ Add 0x60 to R0 \n\
/* 080395f2 */ LSLS R0, R0, 0x8 \n\
/* 080395f4 */ STR R0, [R1] \n\
/* 080395f6 */ B branch_08039604 \n\
\n\
.ltorg \n\
 \n\
branch_080395fc: \n\
/* 080395fc */ LDR R0, =gCurrentEngineData \n\
/* 080395fe */ LDR R0, [R0] \n\
/* 08039600 */ ADDS R0, 0xEC @ Add 0xEC to R0 \n\
/* 08039602 */ STR R2, [R0] \n\
 \n\
branch_08039604: \n\
/* 08039604 */ POP {R0} \n\
/* 08039606 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
