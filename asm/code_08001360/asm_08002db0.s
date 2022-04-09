asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002db0 \n\
/* 08002db0 */ LDRB R0, [R0] \n\
/* 08002db2 */ LSLS R0, R0, 0x1F \n\
/* 08002db4 */ LSRS R0, R0, 0x1F \n\
/* 08002db6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
