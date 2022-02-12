asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080213d4 \n\
/* 080213d4 */ PUSH {LR} \n\
/* 080213d6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080213d8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080213da */ BL func_0802139c \n\
/* 080213de */ POP {R0} \n\
/* 080213e0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
