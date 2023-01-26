asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_cue_miss \n\
/* 0803493c */ PUSH {LR} \n\
/* 0803493e */ BL beatscript_enable_loops \n\
/* 08034942 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034944 */ BL func_080346e0 \n\
/* 08034948 */ POP {R0} \n\
/* 0803494a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
