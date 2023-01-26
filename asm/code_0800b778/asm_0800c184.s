asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_set_music_key \n\
/* 0800c184 */ PUSH {LR} \n\
/* 0800c186 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c188 */ LDR R0, =D_030053c0 \n\
/* 0800c18a */ MOVS R3, 0xCB @ Set R3 to 0xCB \n\
/* 0800c18c */ LSLS R3, R3, 0x1 \n\
/* 0800c18e */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0800c190 */ STRB R1, [R2] \n\
/* 0800c192 */ LDR R0, [R0, 0x4] \n\
/* 0800c194 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c196 */ BEQ branch_0800c19c \n\
/* 0800c198 */ BL set_soundplayer_key \n\
 \n\
branch_0800c19c: \n\
/* 0800c19c */ POP {R0} \n\
/* 0800c19e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
