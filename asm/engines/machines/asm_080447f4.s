asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080447f4 \n\
/* 080447f4 */ PUSH {LR} \n\
/* 080447f6 */ BL scene_set_music \n\
/* 080447fa */ LDR R0, =D_030055d0 \n\
/* 080447fc */ LDR R0, [R0] \n\
/* 080447fe */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 08044800 */ LSLS R1, R1, 0x2 \n\
/* 08044802 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044804 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044806 */ STRB R1, [R0] \n\
/* 08044808 */ POP {R0} \n\
/* 0804480a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
