asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080162bc \n\
/* 080162bc */ PUSH {LR} \n\
/* 080162be */ BL func_08015ea4 \n\
/* 080162c2 */ POP {R0} \n\
/* 080162c4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
