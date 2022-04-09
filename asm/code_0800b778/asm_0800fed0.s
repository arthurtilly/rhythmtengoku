asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fed0 \n\
/* 0800fed0 */ PUSH {LR} \n\
/* 0800fed2 */ LSLS R1, R1, 0x10 \n\
/* 0800fed4 */ LSRS R1, R1, 0x10 \n\
/* 0800fed6 */ LSLS R2, R2, 0x10 \n\
/* 0800fed8 */ LSRS R2, R2, 0x10 \n\
/* 0800feda */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fedc */ BEQ branch_0800fee6 \n\
/* 0800fede */ STRH R1, [R0, 0x10] \n\
/* 0800fee0 */ STRH R2, [R0, 0xE] \n\
/* 0800fee2 */ BL func_0800f904 \n\
 \n\
branch_0800fee6: \n\
/* 0800fee6 */ POP {R0} \n\
/* 0800fee8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
