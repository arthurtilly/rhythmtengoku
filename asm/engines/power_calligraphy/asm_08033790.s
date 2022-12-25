asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start calligraphy_cue_spawn \n\
/* 08033790 */ LDR R2, =D_030055d0 \n\
/* 08033792 */ LDR R0, [R2] \n\
/* 08033794 */ LDRB R0, [R0, 0xA] \n\
/* 08033796 */ STRB R0, [R1] \n\
/* 08033798 */ LDR R1, [R2] \n\
/* 0803379a */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0803379c */ STRB R0, [R1, 0xA] \n\
/* 0803379e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
