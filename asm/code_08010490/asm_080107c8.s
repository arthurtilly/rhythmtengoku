asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080107c8 \n\
/* 080107c8 */ PUSH {LR} \n\
/* 080107ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080107cc */ STRB R1, [R0] \n\
/* 080107ce */ STRB R2, [R0, 0x1] \n\
/* 080107d0 */ STRB R2, [R0, 0x2] \n\
/* 080107d2 */ BL func_080107a8 \n\
/* 080107d6 */ POP {R0} \n\
/* 080107d8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
