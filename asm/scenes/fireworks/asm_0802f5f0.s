asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f5f0 \n\
/* 0802f5f0 */ PUSH {LR} \n\
/* 0802f5f2 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802f5f4 */ BHI branch_0802f646 \n\
/* 0802f5f6 */ LSLS R0, R0, 0x2 \n\
/* 0802f5f8 */ LDR R1, =jtbl_0802f604 \n\
/* 0802f5fa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802f5fc */ LDR R0, [R0] \n\
/* 0802f5fe */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0802f604: \n\
.word jump_0802f618 \n\
.word jump_0802f620 \n\
.word jump_0802f628 \n\
.word jump_0802f630 \n\
.word jump_0802f640 \n\
\n\
jump_0802f618: \n\
/* 0802f618 */ LDR R1, =s_intro_comeon_seqData \n\
/* 0802f61a */ B branch_0802f632 \n\
\n\
.ltorg \n\
jump_0802f620: \n\
/* 0802f620 */ LDR R1, =s_intro_one_seqData \n\
/* 0802f622 */ B branch_0802f632 \n\
\n\
.ltorg \n\
jump_0802f628: \n\
/* 0802f628 */ LDR R1, =s_intro_two_seqData \n\
/* 0802f62a */ B branch_0802f632 \n\
\n\
.ltorg \n\
jump_0802f630: \n\
/* 0802f630 */ LDR R1, =s_intro_three_seqData \n\
 \n\
branch_0802f632: \n\
/* 0802f632 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802f634 */ BL func_0800267c \n\
/* 0802f638 */ B branch_0802f646 \n\
\n\
.ltorg \n\
jump_0802f640: \n\
/* 0802f640 */ LDR R0, =s_f_hanabi_v_nuei_seqData \n\
/* 0802f642 */ BL func_08002634 \n\
 \n\
branch_0802f646: \n\
/* 0802f646 */ POP {R0} \n\
/* 0802f648 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
