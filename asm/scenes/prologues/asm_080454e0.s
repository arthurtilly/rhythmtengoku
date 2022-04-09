asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080454e0 \n\
/* 080454e0 */ PUSH {LR} \n\
/* 080454e2 */ SUB SP, 0x4 \n\
/* 080454e4 */ LDR R0, =D_03005380 \n\
/* 080454e6 */ LDR R0, [R0] \n\
/* 080454e8 */ LDR R1, =D_030055d0 \n\
/* 080454ea */ LDR R1, [R1] \n\
/* 080454ec */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080454ee */ LDRSH R1, [R1, R2] \n\
/* 080454f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080454f2 */ STR R2, [SP] \n\
/* 080454f4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080454f6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080454f8 */ BL func_0804dae0 \n\
/* 080454fc */ ADD SP, 0x4 \n\
/* 080454fe */ POP {R0} \n\
/* 08045500 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
