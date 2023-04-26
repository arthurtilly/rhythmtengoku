asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a96c \n\
/* 0801a96c */ PUSH {LR} \n\
/* 0801a96e */ BL func_0801a99c \n\
/* 0801a972 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a974 */ BEQ branch_0801a990 \n\
/* 0801a976 */ LDR R0, =D_03004afc \n\
/* 0801a978 */ LDRH R1, [R0] \n\
/* 0801a97a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801a97c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801a97e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a980 */ BEQ branch_0801a990 \n\
/* 0801a982 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a984 */ BL set_pause_beatscript_scene \n\
/* 0801a988 */ LDR R0, =gCurrentSceneData \n\
/* 0801a98a */ LDR R1, [R0] \n\
/* 0801a98c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a98e */ STR R0, [R1] \n\
 \n\
branch_0801a990: \n\
/* 0801a990 */ POP {R0} \n\
/* 0801a992 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
