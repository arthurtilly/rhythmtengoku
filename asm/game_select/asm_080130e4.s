asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080130e4 \n\
/* 080130e4 */ PUSH {LR} \n\
/* 080130e6 */ SUB SP, 0x8 \n\
/* 080130e8 */ ADD R2, SP, 0x4 \n\
/* 080130ea */ MOV R1, SP @ Set R1 to SP \n\
/* 080130ec */ BL func_0801318c \n\
/* 080130f0 */ LDR R0, [SP] \n\
/* 080130f2 */ LDR R1, [SP, 0x4] \n\
/* 080130f4 */ BL func_080130b0 \n\
/* 080130f8 */ ADD SP, 0x8 \n\
/* 080130fa */ POP {R1} \n\
/* 080130fc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
