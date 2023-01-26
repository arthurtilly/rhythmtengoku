asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044014 \n\
/* 08044014 */ PUSH {R4, LR} \n\
/* 08044016 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08044018 */ LDR R0, =D_030055d0 \n\
/* 0804401a */ LDR R0, [R0] \n\
/* 0804401c */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 0804401e */ LSLS R2, R2, 0x2 \n\
/* 08044020 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044022 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044024 */ LDRB R0, [R0] \n\
/* 08044026 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044028 */ BEQ branch_08044038 \n\
/* 0804402a */ LDR R0, =cat_machine_2_drum_seq_table \n\
/* 0804402c */ B branch_0804403a \n\
\n\
.ltorg \n\
 \n\
branch_08044038: \n\
/* 08044038 */ LDR R0, =cat_machine_1_drum_seq_table \n\
 \n\
branch_0804403a: \n\
/* 0804403a */ LSLS R1, R1, 0x2 \n\
/* 0804403c */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804403e */ LDR R0, [R0] \n\
/* 08044040 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08044042 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044044 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044046 */ BL play_drumtech_seq \n\
/* 0804404a */ LDR R0, =cat_machine_meow_sfx_table \n\
/* 0804404c */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804404e */ LDR R1, [R0] \n\
/* 08044050 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044052 */ BL play_sound_in_player \n\
/* 08044056 */ LDR R1, =D_030055d0 \n\
/* 08044058 */ LDR R1, [R1] \n\
/* 0804405a */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 0804405c */ LSLS R2, R2, 0x2 \n\
/* 0804405e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044060 */ STR R0, [R1] \n\
/* 08044062 */ POP {R4} \n\
/* 08044064 */ POP {R0} \n\
/* 08044066 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
