asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045cc4 \n\
/* 08045cc4 */ PUSH {LR} \n\
/* 08045cc6 */ SUB SP, 0x4 \n\
/* 08045cc8 */ LDR R0, =D_03005380 \n\
/* 08045cca */ LDR R0, [R0] \n\
/* 08045ccc */ LDR R1, =D_030055d0 \n\
/* 08045cce */ LDR R1, [R1] \n\
/* 08045cd0 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08045cd2 */ LDRSH R1, [R1, R2] \n\
/* 08045cd4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045cd6 */ STR R2, [SP] \n\
/* 08045cd8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08045cda */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08045cdc */ BL func_0804dae0 \n\
/* 08045ce0 */ ADD SP, 0x4 \n\
/* 08045ce2 */ POP {R0} \n\
/* 08045ce4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
