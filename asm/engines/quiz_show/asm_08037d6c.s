asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037d6c \n\
/* 08037d6c */ PUSH {LR} \n\
/* 08037d6e */ LDR R1, =gCurrentEngineData \n\
/* 08037d70 */ LDR R1, [R1] \n\
/* 08037d72 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08037d74 */ ADDS R2, 0x44 @ Add 0x44 to R2 \n\
/* 08037d76 */ STRH R0, [R2] \n\
/* 08037d78 */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 08037d7a */ LDRB R0, [R1] \n\
/* 08037d7c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037d7e */ BEQ branch_08037d86 \n\
/* 08037d80 */ LDRH R0, [R2] \n\
/* 08037d82 */ BL set_beatscript_tempo \n\
 \n\
branch_08037d86: \n\
/* 08037d86 */ POP {R0} \n\
/* 08037d88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
