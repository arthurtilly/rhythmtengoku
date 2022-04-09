asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006ac0 \n\
/* 08006ac0 */ LDRH R0, [R0, 0x1C] \n\
/* 08006ac2 */ LSLS R0, R0, 0x14 \n\
/* 08006ac4 */ LSRS R0, R0, 0x14 \n\
/* 08006ac6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
