asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080022d8 \n\
/* 080022d8 */ PUSH {LR} \n\
/* 080022da */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080022dc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080022de */ BLT branch_080022ec \n\
/* 080022e0 */ LDR R0, =D_03000340 \n\
/* 080022e2 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 080022e4 */ LDRB R2, [R0] \n\
/* 080022e6 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 080022e8 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 080022ea */ STRB R1, [R0] \n\
 \n\
branch_080022ec: \n\
/* 080022ec */ POP {R0} \n\
/* 080022ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
