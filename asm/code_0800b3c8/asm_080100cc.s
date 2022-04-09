asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080100cc \n\
/* 080100cc */ PUSH {R4, LR} \n\
/* 080100ce */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080100d0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080100d2 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080100d4 */ BEQ branch_080100e6 \n\
/* 080100d6 */ LDR R0, =D_03005380 \n\
/* 080100d8 */ LDR R0, [R0] \n\
/* 080100da */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080100dc */ LDRSH R1, [R3, R4] \n\
/* 080100de */ LSLS R2, R2, 0x10 \n\
/* 080100e0 */ ASRS R2, R2, 0x10 \n\
/* 080100e2 */ BL func_0804d890 \n\
 \n\
branch_080100e6: \n\
/* 080100e6 */ POP {R4} \n\
/* 080100e8 */ POP {R0} \n\
/* 080100ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
