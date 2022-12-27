asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_cue_miss \n\
/* 08034094 */ PUSH {LR} \n\
/* 08034096 */ BL beatscript_enable_loops \n\
/* 0803409a */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0803409c */ BL func_080339bc \n\
/* 080340a0 */ POP {R0} \n\
/* 080340a2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
