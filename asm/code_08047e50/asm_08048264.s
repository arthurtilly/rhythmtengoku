asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048264 \n\
/* 08048264 */ PUSH {R4, R5, LR} \n\
/* 08048266 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08048268 */ LDR R4, =drum_studio_engine \n\
/* 0804826a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804826c */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0804826e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08048270 */ BL gameplay_run_engine_event_w_param \n\
/* 08048274 */ LDR R2, [R5] \n\
/* 08048276 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08048278 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0804827a */ BL gameplay_run_engine_event_w_param \n\
/* 0804827e */ LDR R2, [R5, 0x4] \n\
/* 08048280 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08048282 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 08048284 */ BL gameplay_run_engine_event_w_param \n\
/* 08048288 */ LDR R2, [R5, 0x8] \n\
/* 0804828a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804828c */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0804828e */ BL gameplay_run_engine_event_w_param \n\
/* 08048292 */ LDR R2, [R5, 0xC] \n\
/* 08048294 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08048296 */ MOVS R1, 0xD @ Set R1 to 0xD \n\
/* 08048298 */ BL gameplay_run_engine_event_w_param \n\
/* 0804829c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804829e */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 080482a0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080482a2 */ BL gameplay_run_engine_event_w_param \n\
/* 080482a6 */ POP {R4, R5} \n\
/* 080482a8 */ POP {R0} \n\
/* 080482aa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
