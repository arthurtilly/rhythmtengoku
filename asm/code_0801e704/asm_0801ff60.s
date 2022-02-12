asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ff60 \n\
/* 0801ff60 */ PUSH {LR} \n\
/* 0801ff62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ff64 */ BL func_0800c604 \n\
/* 0801ff68 */ BL func_08017578 \n\
/* 0801ff6c */ POP {R0} \n\
/* 0801ff6e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
