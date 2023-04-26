asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_cue_hit \n\
/* 080385f4 */ PUSH {LR} \n\
/* 080385f6 */ LDRB R0, [R1] \n\
/* 080385f8 */ CMP R0, 0x8 @ Compare R0 and 0x8 \n\
/* 080385fa */ BHI branch_080386d8 \n\
/* 080385fc */ LSLS R0, R0, 0x2 \n\
/* 080385fe */ LDR R1, =jtbl_0803860c \n\
/* 08038600 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08038602 */ LDR R0, [R0] \n\
/* 08038604 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803860c: \n\
.word branch_08038630 \n\
.word branch_08038646 \n\
.word branch_08038654 \n\
.word branch_08038634 \n\
.word branch_08038668 \n\
.word branch_08038680 \n\
.word branch_08038698 \n\
.word branch_080386b0 \n\
.word branch_080386c8 \n\
branch_08038630: \n\
/* 08038630 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08038632 */ B branch_08038636 \n\
\n\
branch_08038634: \n\
/* 08038634 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
 \n\
branch_08038636: \n\
/* 08038636 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038638 */ BL func_08038fbc \n\
/* 0803863c */ BL func_08038a84 \n\
/* 08038640 */ BL func_08038598 \n\
/* 08038644 */ B branch_080386d8 \n\
\n\
branch_08038646: \n\
/* 08038646 */ LDR R0, =gCurrentEngineData \n\
/* 08038648 */ LDR R0, [R0] \n\
/* 0803864a */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 0803864c */ B branch_0803865a \n\
\n\
.ltorg \n\
branch_08038654: \n\
/* 08038654 */ LDR R0, =gCurrentEngineData \n\
/* 08038656 */ LDR R0, [R0] \n\
/* 08038658 */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
 \n\
branch_0803865a: \n\
/* 0803865a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803865c */ STRB R1, [R0] \n\
/* 0803865e */ BL func_0803843c \n\
/* 08038662 */ B branch_080386d8 \n\
\n\
.ltorg \n\
branch_08038668: \n\
/* 08038668 */ LDR R0, =gCurrentEngineData \n\
/* 0803866a */ LDR R0, [R0] \n\
/* 0803866c */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 0803866e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038670 */ STRB R1, [R0] \n\
/* 08038672 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038674 */ BL func_080384b8 \n\
/* 08038678 */ B branch_080386d8 \n\
\n\
.ltorg \n\
branch_08038680: \n\
/* 08038680 */ LDR R0, =gCurrentEngineData \n\
/* 08038682 */ LDR R0, [R0] \n\
/* 08038684 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038686 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08038688 */ STRB R1, [R0] \n\
/* 0803868a */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803868c */ BL func_080384b8 \n\
/* 08038690 */ B branch_080386d8 \n\
\n\
.ltorg \n\
branch_08038698: \n\
/* 08038698 */ LDR R0, =gCurrentEngineData \n\
/* 0803869a */ LDR R0, [R0] \n\
/* 0803869c */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 0803869e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080386a0 */ STRB R1, [R0] \n\
/* 080386a2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080386a4 */ BL func_080384b8 \n\
/* 080386a8 */ B branch_080386d8 \n\
\n\
.ltorg \n\
branch_080386b0: \n\
/* 080386b0 */ LDR R0, =gCurrentEngineData \n\
/* 080386b2 */ LDR R0, [R0] \n\
/* 080386b4 */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
/* 080386b6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080386b8 */ STRB R1, [R0] \n\
/* 080386ba */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 080386bc */ BL func_080384b8 \n\
/* 080386c0 */ B branch_080386d8 \n\
\n\
.ltorg \n\
branch_080386c8: \n\
/* 080386c8 */ LDR R0, =gCurrentEngineData \n\
/* 080386ca */ LDR R0, [R0] \n\
/* 080386cc */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 080386ce */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080386d0 */ STRB R1, [R0] \n\
/* 080386d2 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080386d4 */ BL func_080384b8 \n\
 \n\
branch_080386d8: \n\
/* 080386d8 */ POP {R0} \n\
/* 080386da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
