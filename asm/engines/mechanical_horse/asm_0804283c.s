asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_input_event \n\
/* 0804283c */ PUSH {LR} \n\
/* 0804283e */ LDR R0, =gCurrentEngineData \n\
/* 08042840 */ LDR R0, [R0] \n\
/* 08042842 */ LDRB R0, [R0, 0x6] \n\
/* 08042844 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042846 */ BNE branch_08042854 \n\
/* 08042848 */ BL func_08041c98 \n\
/* 0804284c */ B branch_08042858 \n\
\n\
.ltorg \n\
 \n\
branch_08042854: \n\
/* 08042854 */ BL func_08041f80 \n\
 \n\
branch_08042858: \n\
/* 08042858 */ POP {R0} \n\
/* 0804285a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
