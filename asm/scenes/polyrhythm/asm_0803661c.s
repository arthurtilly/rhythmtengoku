asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803661c \n\
/* 0803661c */ PUSH {LR} \n\
/* 0803661e */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 08036620 */ ASRS R1, R1, 0x4 \n\
/* 08036622 */ LDRB R0, [R0] \n\
/* 08036624 */ LSRS R0, R0, 0x7 \n\
/* 08036626 */ BL func_080364d4 \n\
/* 0803662a */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0803662c */ POP {R1} \n\
/* 0803662e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
