asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020fe8 \n\
/* 08020fe8 */ PUSH {LR} \n\
/* 08020fea */ LDRB R0, [R1] \n\
/* 08020fec */ BL func_080207ec \n\
/* 08020ff0 */ LDR R0, =s_tebyoushi_pati_seqData \n\
/* 08020ff2 */ BL func_08002634 \n\
/* 08020ff6 */ LDR R0, =D_030055d0 \n\
/* 08020ff8 */ LDR R0, [R0] \n\
/* 08020ffa */ ADDS R0, 0x42 @ Add 0x42 to R0 \n\
/* 08020ffc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08020ffe */ STRB R1, [R0] \n\
/* 08021000 */ POP {R0} \n\
/* 08021002 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
