asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039dfc \n\
/* 08039dfc */ PUSH {LR} \n\
/* 08039dfe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039e00 */ BL func_0800c604 \n\
/* 08039e04 */ BL func_08017578 \n\
/* 08039e08 */ POP {R0} \n\
/* 08039e0a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
