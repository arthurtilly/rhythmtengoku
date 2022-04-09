asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fddc \n\
/* 0800fddc */ PUSH {LR} \n\
/* 0800fdde */ LSLS R1, R1, 0x10 \n\
/* 0800fde0 */ LSRS R1, R1, 0x10 \n\
/* 0800fde2 */ LSLS R2, R2, 0x10 \n\
/* 0800fde4 */ LSRS R2, R2, 0x10 \n\
/* 0800fde6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fde8 */ BEQ branch_0800fdf2 \n\
/* 0800fdea */ STRH R1, [R0, 0xA] \n\
/* 0800fdec */ STRH R2, [R0, 0xC] \n\
/* 0800fdee */ BL func_0800f904 \n\
 \n\
branch_0800fdf2: \n\
/* 0800fdf2 */ POP {R0} \n\
/* 0800fdf4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
