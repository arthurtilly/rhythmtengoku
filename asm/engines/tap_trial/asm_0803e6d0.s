asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_input_event \n\
/* 0803e6d0 */ PUSH {LR} \n\
/* 0803e6d2 */ LDR R0, =gCurrentEngineData \n\
/* 0803e6d4 */ LDR R0, [R0] \n\
/* 0803e6d6 */ LDRB R0, [R0, 0x10] \n\
/* 0803e6d8 */ CMP R0, 0xE @ Compare R0 and 0xE \n\
/* 0803e6da */ BGT branch_0803e6e0 \n\
/* 0803e6dc */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 0803e6de */ BGE branch_0803e6f0 \n\
 \n\
branch_0803e6e0: \n\
/* 0803e6e0 */ BL func_0803e644 \n\
/* 0803e6e4 */ LDR R0, =s_f_tap_tap_seqData \n\
/* 0803e6e6 */ BL stop_sound \n\
/* 0803e6ea */ LDR R0, =s_tebyoushi_pati_seqData \n\
/* 0803e6ec */ BL play_sound \n\
 \n\
branch_0803e6f0: \n\
/* 0803e6f0 */ LDR R0, =gCurrentEngineData \n\
/* 0803e6f2 */ LDR R1, [R0] \n\
/* 0803e6f4 */ LDRB R0, [R1, 0x1E] \n\
/* 0803e6f6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803e6f8 */ STRB R0, [R1, 0x1E] \n\
/* 0803e6fa */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0803e6fc */ BL func_0803e420 \n\
/* 0803e700 */ POP {R0} \n\
/* 0803e702 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
