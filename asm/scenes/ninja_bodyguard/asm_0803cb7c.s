asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803cb7c \n\
/* 0803cb7c */ PUSH {LR} \n\
/* 0803cb7e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cb80 */ BL func_0800c604 \n\
/* 0803cb84 */ BL func_0800c3b8 \n\
/* 0803cb88 */ LSLS R0, R0, 0x10 \n\
/* 0803cb8a */ LSRS R0, R0, 0x10 \n\
/* 0803cb8c */ LDR R2, =D_089e6ab0 \n\
/* 0803cb8e */ LDR R1, =D_030055d0 \n\
/* 0803cb90 */ LDR R1, [R1] \n\
/* 0803cb92 */ LDRB R1, [R1] \n\
/* 0803cb94 */ LSLS R1, R1, 0x2 \n\
/* 0803cb96 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cb98 */ LDR R1, [R1] \n\
/* 0803cb9a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803cb9c */ LSLS R2, R2, 0x6 \n\
/* 0803cb9e */ BL func_08002ee0 \n\
/* 0803cba2 */ LDR R1, =func_0803cb60 \n\
/* 0803cba4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cba6 */ BL func_08005d38 \n\
/* 0803cbaa */ POP {R0} \n\
/* 0803cbac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
