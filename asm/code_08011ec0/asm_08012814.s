asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012814 \n\
/* 08012814 */ PUSH {R4, LR} \n\
/* 08012816 */ LDR R4, =D_0300131c \n\
/* 08012818 */ LDRB R0, [R4] \n\
/* 0801281a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801281c */ BEQ branch_08012838 \n\
/* 0801281e */ MOVS R0, 0x69 @ Set R0 to 0x69 \n\
/* 08012820 */ BL func_0800bdf8 \n\
/* 08012824 */ LDR R0, =s_shibafu2_bgm_seqData \n\
/* 08012826 */ BL func_0800bf7c \n\
/* 0801282a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801282c */ STRB R0, [R4] \n\
/* 0801282e */ B branch_08012844 \n\
\n\
.ltorg \n\
 \n\
branch_08012838: \n\
/* 08012838 */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 0801283a */ BL func_0800bdf8 \n\
/* 0801283e */ LDR R0, =s_menu_bgm_seqData \n\
/* 08012840 */ BL func_0800bf7c \n\
 \n\
branch_08012844: \n\
/* 08012844 */ POP {R4} \n\
/* 08012846 */ POP {R0} \n\
/* 08012848 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
