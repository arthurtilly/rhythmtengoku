asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047e64 \n\
/* 08047e64 */ PUSH {LR} \n\
/* 08047e66 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08047e68 */ LDR R0, =scene_results_ver_score \n\
/* 08047e6a */ BL func_080006b0 \n\
/* 08047e6e */ POP {R0} \n\
/* 08047e70 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
