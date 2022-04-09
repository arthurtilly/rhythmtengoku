asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ab5c \n\
/* 0802ab5c */ PUSH {LR} \n\
/* 0802ab5e */ SUB SP, 0xC \n\
/* 0802ab60 */ ADD R2, SP, 0x4 \n\
/* 0802ab62 */ ADD R3, SP, 0x8 \n\
/* 0802ab64 */ MOV R1, SP @ Set R1 to SP \n\
/* 0802ab66 */ BL func_0802ab44 \n\
/* 0802ab6a */ LDR R0, [SP] \n\
/* 0802ab6c */ LDR R1, [SP, 0x4] \n\
/* 0802ab6e */ LDR R2, [SP, 0x8] \n\
/* 0802ab70 */ BL func_0802ab7c \n\
/* 0802ab74 */ ADD SP, 0xC \n\
/* 0802ab76 */ POP {R0} \n\
/* 0802ab78 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
