asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ba60 \n\
/* 0801ba60 */ PUSH {LR} \n\
/* 0801ba62 */ LDR R1, =s_menu_cursor1_seqData \n\
/* 0801ba64 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ba66 */ BL func_0800267c \n\
/* 0801ba6a */ POP {R0} \n\
/* 0801ba6c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
