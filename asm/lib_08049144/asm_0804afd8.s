asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804afd8 \n\
/* 0804afd8 */ PUSH {LR} \n\
/* 0804afda */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804afdc */ LSRS R1, R1, 0x3 \n\
/* 0804afde */ LSRS R0, R1, 0x1 \n\
/* 0804afe0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804afe2 */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 0804afe4 */ BLS branch_0804afe8 \n\
/* 0804afe6 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
 \n\
branch_0804afe8: \n\
/* 0804afe8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804afea */ POP {R1} \n\
/* 0804afec */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
