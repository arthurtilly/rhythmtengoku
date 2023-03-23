asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start update_scheduled_function_task \n\
/* 08008548 */ PUSH {LR} \n\
/* 0800854a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800854c */ LDR R0, [R1, 0x8] \n\
/* 0800854e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08008550 */ BEQ branch_0800855a \n\
/* 08008552 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08008554 */ STR R0, [R1, 0x8] \n\
/* 08008556 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008558 */ B branch_08008568 \n\
 \n\
branch_0800855a: \n\
/* 0800855a */ LDR R2, [R1] \n\
/* 0800855c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800855e */ BEQ branch_08008566 \n\
/* 08008560 */ LDR R0, [R1, 0x4] \n\
/* 08008562 */ BL _call_via_r2 \n\
 \n\
branch_08008566: \n\
/* 08008566 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08008568: \n\
/* 08008568 */ POP {R1} \n\
/* 0800856a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
