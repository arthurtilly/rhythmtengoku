asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_cue_miss \n\
/* 080309f4 */ PUSH {LR} \n\
/* 080309f6 */ LDR R0, =D_030055d0 \n\
/* 080309f8 */ LDR R0, [R0] \n\
/* 080309fa */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080309fc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080309fe */ STRB R1, [R0, 0x8] \n\
/* 08030a00 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08030a02 */ STRB R1, [R0, 0x9] \n\
/* 08030a04 */ BL beatscript_enable_loops \n\
/* 08030a08 */ POP {R0} \n\
/* 08030a0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
