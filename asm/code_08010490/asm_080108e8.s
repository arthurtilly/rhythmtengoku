asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080108e8 \n\
/* 080108e8 */ PUSH {LR} \n\
/* 080108ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080108ec */ BLT branch_080108fe \n\
/* 080108ee */ BL func_080107dc \n\
/* 080108f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080108f4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080108f6 */ STRB R1, [R0, 0x2] \n\
/* 080108f8 */ STRB R2, [R0, 0x1] \n\
/* 080108fa */ BL func_080107a8 \n\
 \n\
branch_080108fe: \n\
/* 080108fe */ POP {R0} \n\
/* 08010900 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
