asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800467c \n\
/* 0800467c */ PUSH {LR} \n\
/* 0800467e */ LSLS R0, R0, 0x18 \n\
/* 08004680 */ LSRS R1, R0, 0x18 \n\
/* 08004682 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08004684 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08004686 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 08004688 */ LSLS R0, R0, 0x18 \n\
/* 0800468a */ LSRS R0, R0, 0x18 \n\
/* 0800468c */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 0800468e */ BLS branch_080046ba \n\
/* 08004690 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08004692 */ SUBS R0, 0x61 @ Subtract 0x61 from R0 \n\
/* 08004694 */ LSLS R0, R0, 0x18 \n\
/* 08004696 */ LSRS R0, R0, 0x18 \n\
/* 08004698 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0800469a */ BHI branch_080046a2 \n\
/* 0800469c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800469e */ ADDS R0, 0xA9 @ Add 0xA9 to R0 \n\
/* 080046a0 */ B branch_080046b6 \n\
 \n\
branch_080046a2: \n\
/* 080046a2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080046a4 */ SUBS R0, 0x41 @ Subtract 0x41 from R0 \n\
/* 080046a6 */ LSLS R0, R0, 0x18 \n\
/* 080046a8 */ LSRS R0, R0, 0x18 \n\
/* 080046aa */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080046ac */ BLS branch_080046b2 \n\
/* 080046ae */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080046b0 */ B branch_080046ba \n\
 \n\
branch_080046b2: \n\
/* 080046b2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080046b4 */ ADDS R0, 0xC9 @ Add 0xC9 to R0 \n\
 \n\
branch_080046b6: \n\
/* 080046b6 */ LSLS R0, R0, 0x18 \n\
/* 080046b8 */ LSRS R0, R0, 0x18 \n\
 \n\
branch_080046ba: \n\
/* 080046ba */ POP {R1} \n\
/* 080046bc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
