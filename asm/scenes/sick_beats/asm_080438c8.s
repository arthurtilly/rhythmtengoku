asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080438c8 \n\
/* 080438c8 */ PUSH {R4-R7, LR} \n\
/* 080438ca */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080438cc */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 080438ce */ LDR R0, =D_030055d0 \n\
/* 080438d0 */ LDR R0, [R0] \n\
/* 080438d2 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080438d4 */ ADDS R7, 0x28 @ Add 0x28 to R7 \n\
/* 080438d6 */ LDRB R0, [R5, 0x4] \n\
/* 080438d8 */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 080438da */ LDRB R0, [R0] \n\
/* 080438dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080438de */ BNE branch_080438e2 \n\
/* 080438e0 */ B branch_08043a06 \n\
 \n\
branch_080438e2: \n\
/* 080438e2 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 080438e4 */ BL func_0800c3a4 \n\
/* 080438e8 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080438ea */ BLS branch_080438ee \n\
/* 080438ec */ B branch_08043a06 \n\
 \n\
branch_080438ee: \n\
/* 080438ee */ LDRH R0, [R5] \n\
/* 080438f0 */ LSLS R0, R0, 0x15 \n\
/* 080438f2 */ LSRS R0, R0, 0x1B \n\
/* 080438f4 */ CMP R0, 0xD @ Compare R0 and 0xD \n\
/* 080438f6 */ BLS branch_080438fa \n\
/* 080438f8 */ B branch_08043a18 \n\
 \n\
branch_080438fa: \n\
/* 080438fa */ LSLS R0, R0, 0x2 \n\
/* 080438fc */ LDR R1, =jtbl_0804390c \n\
/* 080438fe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08043900 */ LDR R0, [R0] \n\
/* 08043902 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804390c: \n\
.word jump_08043944 \n\
.word jump_0804396c \n\
.word jump_08043970 \n\
.word branch_08043a18 \n\
.word jump_0804396c \n\
.word jump_08043970 \n\
.word branch_08043a18 \n\
.word jump_0804396c \n\
.word jump_08043970 \n\
.word branch_08043a18 \n\
.word jump_0804396c \n\
.word jump_08043970 \n\
.word branch_08043a18 \n\
.word jump_080439a0 \n\
jump_08043944: \n\
/* 08043944 */ LDR R5, [R5, 0x8] \n\
/* 08043946 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08043948 */ LSLS R4, R4, 0x1 \n\
/* 0804394a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804394c */ BL func_0800c3a4 \n\
/* 08043950 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08043952 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08043954 */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 08043956 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08043958 */ BL func_08008f04 \n\
/* 0804395c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804395e */ LSLS R1, R1, 0x10 \n\
/* 08043960 */ ASRS R1, R1, 0x10 \n\
/* 08043962 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08043964 */ BL func_0800fdf8 \n\
/* 08043968 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804396a */ B branch_08043992 \n\
jump_0804396c: \n\
/* 0804396c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804396e */ B branch_08043992 \n\
jump_08043970: \n\
/* 08043970 */ LDRB R0, [R5] \n\
/* 08043972 */ LSLS R0, R0, 0x1B \n\
/* 08043974 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043976 */ BLT branch_08043990 \n\
/* 08043978 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804397a */ BL func_0800c3a4 \n\
/* 0804397e */ CMP R6, R0 @ Check R6 - R0 \n\
/* 08043980 */ BLS branch_08043990 \n\
/* 08043982 */ LDRB R0, [R5] \n\
/* 08043984 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08043986 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08043988 */ STRB R0, [R5] \n\
/* 0804398a */ LDR R0, =s_virus_dash_seqData \n\
/* 0804398c */ BL func_08002634 \n\
 \n\
branch_08043990: \n\
/* 08043990 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
 \n\
branch_08043992: \n\
/* 08043992 */ BL func_0800c3a4 \n\
/* 08043996 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 08043998 */ BLS branch_08043a18 \n\
/* 0804399a */ B branch_08043a06 \n\
\n\
.ltorg \n\
jump_080439a0: \n\
/* 080439a0 */ LDR R4, [R5, 0x8] \n\
/* 080439a2 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 080439a4 */ BL func_0800c3a4 \n\
/* 080439a8 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080439aa */ MOVS R0, 0x68 @ Set R0 to 0x68 \n\
/* 080439ac */ MOVS R1, 0x8A @ Set R1 to 0x8A \n\
/* 080439ae */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080439b0 */ BL func_08008f04 \n\
/* 080439b4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080439b6 */ LSLS R1, R1, 0x10 \n\
/* 080439b8 */ ASRS R1, R1, 0x10 \n\
/* 080439ba */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080439bc */ BL func_0800fe0c \n\
/* 080439c0 */ LDRB R0, [R5] \n\
/* 080439c2 */ LSLS R0, R0, 0x1B \n\
/* 080439c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080439c6 */ BLT branch_080439ee \n\
/* 080439c8 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 080439ca */ BL func_0800c3a4 \n\
/* 080439ce */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080439d0 */ BLS branch_080439ee \n\
/* 080439d2 */ LDRB R0, [R5] \n\
/* 080439d4 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 080439d6 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080439d8 */ STRB R0, [R5] \n\
/* 080439da */ LDR R0, =D_030055d0 \n\
/* 080439dc */ LDR R0, [R0] \n\
/* 080439de */ LDR R1, =0x202 \n\
/* 080439e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080439e2 */ LDRB R0, [R0] \n\
/* 080439e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080439e6 */ BNE branch_080439ee \n\
/* 080439e8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080439ea */ BL func_080432d8 \n\
 \n\
branch_080439ee: \n\
/* 080439ee */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 080439f0 */ BL func_0800c3a4 \n\
/* 080439f4 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080439f6 */ BLS branch_08043a18 \n\
/* 080439f8 */ LDRB R0, [R5, 0x4] \n\
/* 080439fa */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 080439fc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080439fe */ STRB R1, [R0] \n\
/* 08043a00 */ LDR R0, =s_virus_miss_seqData \n\
/* 08043a02 */ BL func_08002634 \n\
 \n\
branch_08043a06: \n\
/* 08043a06 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08043a08 */ B branch_08043a1a \n\
\n\
.ltorg \n\
 \n\
branch_08043a18: \n\
/* 08043a18 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08043a1a: \n\
/* 08043a1a */ POP {R4-R7} \n\
/* 08043a1c */ POP {R1} \n\
/* 08043a1e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
