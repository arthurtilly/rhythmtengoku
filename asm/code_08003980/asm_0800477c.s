asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800477c \n\
/* 0800477c */ PUSH {R4-R7, LR} \n\
/* 0800477e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08004780 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08004782 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08004784 */ PUSH {R5-R7} \n\
/* 08004786 */ SUB SP, 0x1C \n\
/* 08004788 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800478a */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0800478c */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800478e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08004790 */ BL func_080049a0 \n\
/* 08004794 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08004796 */ MOVS R0, 0x63 @ Set R0 to 0x63 \n\
/* 08004798 */ STR R0, [SP, 0x10] \n\
/* 0800479a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800479c */ LDR R4, [R1, 0xC] \n\
/* 0800479e */ MOV R2, R12 @ Set R2 to R12 \n\
/* 080047a0 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 080047a2 */ BEQ branch_080047c0 \n\
/* 080047a4 */ LDR R0, =D_030008b0 \n\
/* 080047a6 */ LDRB R1, [R0] \n\
/* 080047a8 */ LSLS R1, R1, 0x4 \n\
/* 080047aa */ LDRB R2, [R7] \n\
/* 080047ac */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 080047ae */ LSLS R1, R1, 0x18 \n\
/* 080047b0 */ LSRS R1, R1, 0x18 \n\
/* 080047b2 */ STR R1, [SP, 0x8] \n\
/* 080047b4 */ LDRB R3, [R7, 0x1] \n\
/* 080047b6 */ STR R3, [SP, 0xC] \n\
/* 080047b8 */ B branch_080047e6 \n\
\n\
.ltorg \n\
 \n\
branch_080047c0: \n\
/* 080047c0 */ LDRB R2, [R7] \n\
/* 080047c2 */ SUBS R2, 0x61 @ Subtract 0x61 from R2 \n\
/* 080047c4 */ ASRS R1, R2, 0x3 \n\
/* 080047c6 */ LDR R3, =D_030008b0 \n\
/* 080047c8 */ LDRB R0, [R3] \n\
/* 080047ca */ LSLS R0, R0, 0x4 \n\
/* 080047cc */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080047ce */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 080047d0 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080047d2 */ LSLS R1, R1, 0x18 \n\
/* 080047d4 */ LSRS R1, R1, 0x18 \n\
/* 080047d6 */ STR R1, [SP, 0x8] \n\
/* 080047d8 */ LSLS R2, R2, 0x5 \n\
/* 080047da */ LDRB R0, [R7, 0x1] \n\
/* 080047dc */ SUBS R0, 0x61 @ Subtract 0x61 from R0 \n\
/* 080047de */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 080047e0 */ LSLS R2, R2, 0x18 \n\
/* 080047e2 */ LSRS R2, R2, 0x18 \n\
/* 080047e4 */ STR R2, [SP, 0xC] \n\
 \n\
branch_080047e6: \n\
/* 080047e6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080047e8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080047ea */ LDRB R1, [R0, 0xA] \n\
/* 080047ec */ CMP R6, R1 @ Check R6 - R1 \n\
/* 080047ee */ BCS branch_08004824 \n\
 \n\
branch_080047f0: \n\
/* 080047f0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_080047f2: \n\
/* 080047f2 */ LDRB R0, [R4] \n\
/* 080047f4 */ LDR R2, [SP, 0x8] \n\
/* 080047f6 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080047f8 */ BNE branch_08004802 \n\
/* 080047fa */ LDR R3, [SP, 0xC] \n\
/* 080047fc */ LDRB R2, [R4, 0x1] \n\
/* 080047fe */ CMP R3, R2 @ Check R3 - R2 \n\
/* 08004800 */ BEQ branch_080048be \n\
 \n\
branch_08004802: \n\
/* 08004802 */ LDR R3, [SP, 0x10] \n\
/* 08004804 */ CMP R3, 0x63 @ Compare R3 and 0x63 \n\
/* 08004806 */ BNE branch_08004816 \n\
/* 08004808 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800480a */ BNE branch_08004816 \n\
/* 0800480c */ LDRB R0, [R4, 0x1] \n\
/* 0800480e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004810 */ BNE branch_08004816 \n\
/* 08004812 */ STR R5, [SP, 0x10] \n\
/* 08004814 */ MOV R10, R6 @ Set R10 to R6 \n\
 \n\
branch_08004816: \n\
/* 08004816 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08004818 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800481a */ CMP R5, 0xF @ Compare R5 and 0xF \n\
/* 0800481c */ BLS branch_080047f2 \n\
/* 0800481e */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08004820 */ CMP R6, R1 @ Check R6 - R1 \n\
/* 08004822 */ BCC branch_080047f0 \n\
 \n\
branch_08004824: \n\
/* 08004824 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08004826 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08004828 */ STR R0, [R1] \n\
/* 0800482a */ LDR R2, [SP, 0x10] \n\
/* 0800482c */ CMP R2, 0x63 @ Compare R2 and 0x63 \n\
/* 0800482e */ BNE branch_0800483c \n\
/* 08004830 */ LDR R0, =0xffff \n\
/* 08004832 */ B branch_08004956 \n\
\n\
.ltorg \n\
 \n\
branch_0800483c: \n\
/* 0800483c */ LDR R3, [SP, 0x10] \n\
/* 0800483e */ LSLS R0, R3, 0x1 \n\
/* 08004840 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08004842 */ LDRH R1, [R1, 0x8] \n\
/* 08004844 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08004846 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08004848 */ LSLS R1, R2, 0x6 \n\
/* 0800484a */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0800484c */ LSLS R0, R4, 0x5 \n\
/* 0800484e */ LDR R3, =D_06010000 \n\
/* 08004850 */ ADDS R5, R0, R3 @ Set R5 to R0 + R3 \n\
/* 08004852 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004854 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08004856 */ BNE branch_08004900 \n\
/* 08004858 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800485a */ MOV R1, SP @ Set R1 to SP \n\
/* 0800485c */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0800485e */ STR R1, [SP, 0x14] \n\
/* 08004860 */ LSLS R2, R2, 0x4 \n\
/* 08004862 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08004864 */ LSLS R4, R4, 0x10 \n\
/* 08004866 */ STR R4, [SP, 0x18] \n\
/* 08004868 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
 \n\
branch_0800486a: \n\
/* 0800486a */ ADDS R0, R7, R6 @ Set R0 to R7 + R6 \n\
/* 0800486c */ BL func_080049dc \n\
/* 08004870 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08004872 */ LDR R0, =D_030008b0 \n\
/* 08004874 */ LDRB R0, [R0] \n\
/* 08004876 */ LSLS R2, R0, 0x3 \n\
/* 08004878 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0800487a */ LSLS R2, R2, 0x3 \n\
/* 0800487c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800487e */ LDR R0, [R3, 0x4] \n\
/* 08004880 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08004882 */ MOV R2, SP @ Set R2 to SP \n\
/* 08004884 */ LDR R3, [SP, 0x14] \n\
/* 08004886 */ BL func_080043c8 \n\
/* 0800488a */ LDR R0, [SP] \n\
/* 0800488c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800488e */ BL func_08004714 \n\
/* 08004892 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08004894 */ LDR R1, [R0] \n\
/* 08004896 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08004898 */ BEQ branch_080048ac \n\
/* 0800489a */ LDR R0, [SP, 0x4] \n\
/* 0800489c */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800489e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080048a0 */ STR R0, [R1] \n\
/* 080048a2 */ B branch_080048b4 \n\
\n\
.ltorg \n\
 \n\
branch_080048ac: \n\
/* 080048ac */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080048ae */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 080048b0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080048b2 */ STR R0, [R2] \n\
 \n\
branch_080048b4: \n\
/* 080048b4 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 080048b6 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 080048b8 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 080048ba */ BLS branch_0800486a \n\
/* 080048bc */ B branch_08004932 \n\
 \n\
branch_080048be: \n\
/* 080048be */ LDR R3, =D_030008b0 \n\
/* 080048c0 */ LDRB R0, [R3] \n\
/* 080048c2 */ LSLS R1, R0, 0x3 \n\
/* 080048c4 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080048c6 */ LSLS R1, R1, 0x3 \n\
/* 080048c8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080048ca */ LDR R0, [R2, 0x4] \n\
/* 080048cc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080048ce */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080048d0 */ BL func_08004628 \n\
/* 080048d4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080048d6 */ STR R0, [R3] \n\
/* 080048d8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080048da */ LDR R1, [R0, 0x10] \n\
/* 080048dc */ LSLS R0, R6, 0x4 \n\
/* 080048de */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080048e0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080048e2 */ LDRB R0, [R1] \n\
/* 080048e4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080048e6 */ STRB R0, [R1] \n\
/* 080048e8 */ LSLS R0, R5, 0x1 \n\
/* 080048ea */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080048ec */ LDRH R1, [R1, 0x8] \n\
/* 080048ee */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080048f0 */ LSLS R1, R6, 0x6 \n\
/* 080048f2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080048f4 */ LSLS R0, R0, 0x10 \n\
/* 080048f6 */ LSRS R0, R0, 0x10 \n\
/* 080048f8 */ B branch_08004956 \n\
\n\
.ltorg \n\
 \n\
branch_08004900: \n\
/* 08004900 */ LDR R2, =D_030008b0 \n\
/* 08004902 */ LDRB R0, [R2] \n\
/* 08004904 */ LSLS R1, R0, 0x3 \n\
/* 08004906 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08004908 */ LSLS R1, R1, 0x3 \n\
/* 0800490a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800490c */ LDR R0, [R3, 0x4] \n\
/* 0800490e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08004910 */ ADD R3, SP, 0x4 \n\
/* 08004912 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08004914 */ MOV R2, SP @ Set R2 to SP \n\
/* 08004916 */ BL func_080043c8 \n\
/* 0800491a */ LDR R0, [SP] \n\
/* 0800491c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800491e */ BL func_08004748 \n\
/* 08004922 */ LDR R0, [SP, 0x4] \n\
/* 08004924 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08004926 */ STR R0, [R1] \n\
/* 08004928 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800492a */ LSLS R2, R2, 0x4 \n\
/* 0800492c */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0800492e */ LSLS R4, R4, 0x10 \n\
/* 08004930 */ STR R4, [SP, 0x18] \n\
 \n\
branch_08004932: \n\
/* 08004932 */ LDR R6, [SP, 0x10] \n\
/* 08004934 */ ADD R6, R10 @ Add R10 to R6 \n\
/* 08004936 */ LSLS R1, R6, 0x1 \n\
/* 08004938 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800493a */ LDR R0, [R3, 0xC] \n\
/* 0800493c */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0800493e */ MOV R0, SP @ Set R0 to SP \n\
/* 08004940 */ LDRB R0, [R0, 0x8] \n\
/* 08004942 */ STRB R0, [R4] \n\
/* 08004944 */ MOV R1, SP @ Set R1 to SP \n\
/* 08004946 */ LDRB R1, [R1, 0xC] \n\
/* 08004948 */ STRB R1, [R4, 0x1] \n\
/* 0800494a */ LDR R0, [R3, 0x10] \n\
/* 0800494c */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0800494e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08004950 */ STRB R1, [R0] \n\
/* 08004952 */ LDR R2, [SP, 0x18] \n\
/* 08004954 */ LSRS R0, R2, 0x10 \n\
 \n\
branch_08004956: \n\
/* 08004956 */ ADD SP, 0x1C \n\
/* 08004958 */ POP {R3-R5} \n\
/* 0800495a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800495c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800495e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08004960 */ POP {R4-R7} \n\
/* 08004962 */ POP {R1} \n\
/* 08004964 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
