asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080472fc \n\
/* 080472fc */ PUSH {LR} \n\
/* 080472fe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047300 */ BL func_0800c604 \n\
/* 08047304 */ BL func_08006d80 \n\
/* 08047308 */ BL func_0800c3b8 \n\
/* 0804730c */ LSLS R0, R0, 0x10 \n\
/* 0804730e */ LSRS R0, R0, 0x10 \n\
/* 08047310 */ LDR R1, =D_089ed188 \n\
/* 08047312 */ BL func_080087b4 \n\
/* 08047316 */ LDR R1, =func_080472cc \n\
/* 08047318 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804731a */ BL func_08005d38 \n\
/* 0804731e */ POP {R0} \n\
/* 08047320 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
