asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080044f0 \n\
/* 080044f0 */ PUSH {LR} \n\
/* 080044f2 */ LSLS R0, R0, 0x10 \n\
/* 080044f4 */ LSRS R0, R0, 0x10 \n\
/* 080044f6 */ LSLS R2, R2, 0x10 \n\
/* 080044f8 */ LSRS R2, R2, 0x10 \n\
/* 080044fa */ LSLS R3, R3, 0x18 \n\
/* 080044fc */ LSRS R3, R3, 0x18 \n\
/* 080044fe */ BL func_08004508 \n\
/* 08004502 */ POP {R1} \n\
/* 08004504 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
