asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_cue_barely \n\
/* 08040b04 */ PUSH {LR} \n\
/* 08040b06 */ LDRB R0, [R1] \n\
/* 08040b08 */ BL func_08040314 \n\
/* 08040b0c */ BL beatscript_enable_loops \n\
/* 08040b10 */ POP {R0} \n\
/* 08040b12 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
