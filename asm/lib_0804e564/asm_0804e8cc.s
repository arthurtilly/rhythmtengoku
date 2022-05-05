asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e8cc \n\
/* 0804e8cc */ PUSH {LR} \n\
/* 0804e8ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e8d0 */ BEQ branch_0804e8e4 \n\
/* 0804e8d2 */ LDR R0, =D_0300443c \n\
/* 0804e8d4 */ LDR R2, [R0] \n\
/* 0804e8d6 */ LDR R0, [R2] \n\
/* 0804e8d8 */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0804e8da */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804e8dc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e8de */ B branch_0804e8ee \n\
\n\
.ltorg \n\
 \n\
branch_0804e8e4: \n\
/* 0804e8e4 */ LDR R0, =D_0300443c \n\
/* 0804e8e6 */ LDR R2, [R0] \n\
/* 0804e8e8 */ LDR R0, [R2] \n\
/* 0804e8ea */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0804e8ec */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
 \n\
branch_0804e8ee: \n\
/* 0804e8ee */ STR R0, [R2] \n\
/* 0804e8f0 */ POP {R0} \n\
/* 0804e8f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
