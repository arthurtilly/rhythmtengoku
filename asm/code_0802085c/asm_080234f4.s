asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080234f4 \n\
/* 080234f4 */ PUSH {LR} \n\
/* 080234f6 */ BL func_08023438 \n\
/* 080234fa */ POP {R0} \n\
/* 080234fc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
