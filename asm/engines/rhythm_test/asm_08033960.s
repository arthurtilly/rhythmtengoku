asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033960 \n\
/* 08033960 */ PUSH {LR} \n\
/* 08033962 */ LDR R1, =rhythm_test_trick_drum_seq \n\
/* 08033964 */ LSLS R0, R0, 0x2 \n\
/* 08033966 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08033968 */ LDR R0, [R0] \n\
/* 0803396a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803396c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803396e */ BL play_drumtech_seq \n\
/* 08033972 */ POP {R0} \n\
/* 08033974 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
