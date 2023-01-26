asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080441cc \n\
/* 080441cc */ PUSH {R4-R6, LR} \n\
/* 080441ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080441d0 */ LDR R6, =D_030055d0 \n\
/* 080441d2 */ LDR R0, [R6] \n\
/* 080441d4 */ MOVS R5, 0xDF @ Set R5 to 0xDF \n\
/* 080441d6 */ LSLS R5, R5, 0x2 \n\
/* 080441d8 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080441da */ LDR R0, [R0] \n\
/* 080441dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080441de */ BEQ branch_080441e6 \n\
/* 080441e0 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 080441e2 */ BL fade_out_soundplayer \n\
 \n\
branch_080441e6: \n\
/* 080441e6 */ LDR R1, =confession_machine_sfx_table \n\
/* 080441e8 */ LSLS R0, R4, 0x2 \n\
/* 080441ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080441ec */ LDR R0, [R0] \n\
/* 080441ee */ BL func_0800c2d0 \n\
/* 080441f2 */ LDR R1, [R6] \n\
/* 080441f4 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080441f6 */ STR R0, [R1] \n\
/* 080441f8 */ POP {R4-R6} \n\
/* 080441fa */ POP {R0} \n\
/* 080441fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
