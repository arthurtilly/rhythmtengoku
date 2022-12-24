asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_cue_spawn \n\
/* 080311c8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080311ca */ STRB R0, [R1] \n\
/* 080311cc */ STRB R0, [R1, 0x1] \n\
/* 080311ce */ STRB R2, [R1, 0x2] \n\
/* 080311d0 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
