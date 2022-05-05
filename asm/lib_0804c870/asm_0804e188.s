asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e188 \n\
/* 0804e188 */ PUSH {LR} \n\
/* 0804e18a */ SUB SP, 0x8 \n\
/* 0804e18c */ LSLS R1, R1, 0x10 \n\
/* 0804e18e */ LSRS R1, R1, 0x10 \n\
/* 0804e190 */ STR R2, [SP] \n\
/* 0804e192 */ STR R3, [SP, 0x4] \n\
/* 0804e194 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 0804e196 */ MOV R3, SP @ Set R3 to SP \n\
/* 0804e198 */ BL func_0804df80 \n\
/* 0804e19c */ ADD SP, 0x8 \n\
/* 0804e19e */ POP {R0} \n\
/* 0804e1a0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
