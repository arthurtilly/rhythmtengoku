asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080251d8 \n\
/* 080251d8 */ PUSH {LR} \n\
/* 080251da */ LDRH R1, [R0] \n\
/* 080251dc */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080251de */ STRH R1, [R0] \n\
/* 080251e0 */ BL beatscript_enable_loops \n\
/* 080251e4 */ POP {R0} \n\
/* 080251e6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
