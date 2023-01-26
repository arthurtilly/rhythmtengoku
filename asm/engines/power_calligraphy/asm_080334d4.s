asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080334d4 \n\
/* 080334d4 */ PUSH {LR} \n\
/* 080334d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080334d8 */ LSLS R0, R2, 0x18 \n\
/* 080334da */ ASRS R0, R0, 0x18 \n\
/* 080334dc */ LSLS R1, R2, 0x10 \n\
/* 080334de */ ASRS R1, R1, 0x18 \n\
/* 080334e0 */ LSLS R2, R2, 0x8 \n\
/* 080334e2 */ ASRS R2, R2, 0x18 \n\
/* 080334e4 */ BL func_08033468 \n\
/* 080334e8 */ POP {R0} \n\
/* 080334ea */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
