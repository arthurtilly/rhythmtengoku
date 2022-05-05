asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b95c \n\
/* 0804b95c */ PUSH {R4-R6, LR} \n\
/* 0804b95e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804b960 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804b962 */ LSLS R2, R2, 0x18 \n\
/* 0804b964 */ LSRS R0, R2, 0x18 \n\
/* 0804b966 */ LSLS R3, R3, 0x18 \n\
/* 0804b968 */ LSRS R5, R3, 0x18 \n\
/* 0804b96a */ LDR R3, [R6, 0x4] \n\
/* 0804b96c */ CMP R0, 0x54 @ Compare R0 and 0x54 \n\
/* 0804b96e */ BLS branch_0804b972 \n\
/* 0804b970 */ B branch_0804bc56 \n\
 \n\
branch_0804b972: \n\
/* 0804b972 */ LSLS R0, R0, 0x2 \n\
/* 0804b974 */ LDR R1, =jtbl_0804b980 \n\
/* 0804b976 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804b978 */ LDR R0, [R0] \n\
/* 0804b97a */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804b980: \n\
.word jump_0804bad4 \n\
.word jump_0804bae8 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804baf4 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804bb00 \n\
.word jump_0804bb0c \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804bb60 \n\
.word branch_0804bc56 \n\
.word jump_0804bb6c \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804bb18 \n\
.word jump_0804bb24 \n\
.word jump_0804bb30 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804bb3c \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804bb48 \n\
.word jump_0804bb54 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word branch_0804bc56 \n\
.word jump_0804bb90 \n\
.word jump_0804bb9c \n\
.word jump_0804bbd0 \n\
.word jump_0804bc08 \n\
.word jump_0804bbf4 \n\
.word jump_0804bc00 \n\
.word jump_0804bc14 \n\
.word jump_0804bc1c \n\
.word jump_0804bc24 \n\
.word jump_0804bc2c \n\
.word jump_0804bc34 \n\
.word jump_0804bc40 \n\
.word jump_0804bc4c \n\
jump_0804bad4: \n\
/* 0804bad4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804bad6 */ LSLS R1, R1, 0x8 \n\
/* 0804bad8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804bada */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804badc */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804bade */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bae0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bae2 */ BL func_0804abc8 \n\
/* 0804bae6 */ B branch_0804bc56 \n\
jump_0804bae8: \n\
/* 0804bae8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804baea */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804baec */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804baee */ BL func_0804ac40 \n\
/* 0804baf2 */ B branch_0804bc56 \n\
jump_0804baf4: \n\
/* 0804baf4 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804baf6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804baf8 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bafa */ BL func_0804aa5c \n\
/* 0804bafe */ B branch_0804bc56 \n\
jump_0804bb00: \n\
/* 0804bb00 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb02 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb04 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb06 */ BL func_0804aa7c \n\
/* 0804bb0a */ B branch_0804bc56 \n\
jump_0804bb0c: \n\
/* 0804bb0c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb0e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb10 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb12 */ BL func_0804aba8 \n\
/* 0804bb16 */ B branch_0804bc56 \n\
jump_0804bb18: \n\
/* 0804bb18 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb1a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb1c */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb1e */ BL func_0804ace4 \n\
/* 0804bb22 */ B branch_0804bc56 \n\
jump_0804bb24: \n\
/* 0804bb24 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb26 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb28 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb2a */ BL func_0804accc \n\
/* 0804bb2e */ B branch_0804bc56 \n\
jump_0804bb30: \n\
/* 0804bb30 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb32 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb34 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb36 */ BL func_0804aca0 \n\
/* 0804bb3a */ B branch_0804bc56 \n\
jump_0804bb3c: \n\
/* 0804bb3c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb3e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb40 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb42 */ BL func_0804acd8 \n\
/* 0804bb46 */ B branch_0804bc56 \n\
jump_0804bb48: \n\
/* 0804bb48 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb4a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb4c */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb4e */ BL func_0804abc8 \n\
/* 0804bb52 */ B branch_0804bc56 \n\
jump_0804bb54: \n\
/* 0804bb54 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb56 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb58 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb5a */ BL func_0804ad18 \n\
/* 0804bb5e */ B branch_0804bc56 \n\
jump_0804bb60: \n\
/* 0804bb60 */ LDR R0, =D_03005648 \n\
/* 0804bb62 */ STRH R5, [R0] \n\
/* 0804bb64 */ B branch_0804bc56 \n\
\n\
.ltorg \n\
jump_0804bb6c: \n\
/* 0804bb6c */ LDR R2, =D_03005648 \n\
/* 0804bb6e */ LDR R1, =D_03005b20 \n\
/* 0804bb70 */ LDRH R0, [R2] \n\
/* 0804bb72 */ LDRH R1, [R1] \n\
/* 0804bb74 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804bb76 */ BCS branch_0804bc56 \n\
/* 0804bb78 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804bb7a */ LDR R0, =D_03005b7c \n\
/* 0804bb7c */ LDR R0, [R0] \n\
/* 0804bb7e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804bb80 */ STRB R5, [R0] \n\
/* 0804bb82 */ B branch_0804bc56 \n\
\n\
.ltorg \n\
jump_0804bb90: \n\
/* 0804bb90 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bb92 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bb94 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bb96 */ BL func_0804ac80 \n\
/* 0804bb9a */ B branch_0804bc56 \n\
jump_0804bb9c: \n\
/* 0804bb9c */ LDR R0, =D_03005b3c \n\
/* 0804bb9e */ STRB R5, [R0] \n\
/* 0804bba0 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804bba2 */ BLT branch_0804bc56 \n\
/* 0804bba4 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0804bba6 */ BLE branch_0804bbb4 \n\
/* 0804bba8 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0804bbaa */ BEQ branch_0804bbc0 \n\
/* 0804bbac */ B branch_0804bc56 \n\
\n\
.ltorg \n\
 \n\
branch_0804bbb4: \n\
/* 0804bbb4 */ LDR R0, =D_03005b30 \n\
/* 0804bbb6 */ BL func_0804ae60 \n\
/* 0804bbba */ B branch_0804bc56 \n\
\n\
.ltorg \n\
 \n\
branch_0804bbc0: \n\
/* 0804bbc0 */ BL func_08049be4 \n\
/* 0804bbc4 */ LDR R0, =D_03005b30 \n\
/* 0804bbc6 */ BL func_0804ae54 \n\
/* 0804bbca */ B branch_0804bc56 \n\
\n\
.ltorg \n\
jump_0804bbd0: \n\
/* 0804bbd0 */ LDR R1, =D_03005b3c \n\
/* 0804bbd2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804bbd4 */ STRB R0, [R1] \n\
/* 0804bbd6 */ LDR R0, =D_03005b30 \n\
/* 0804bbd8 */ BL func_0804ae60 \n\
/* 0804bbdc */ BL func_08049be4 \n\
/* 0804bbe0 */ LSLS R0, R5, 0x1 \n\
/* 0804bbe2 */ SUBS R0, 0x80 @ Subtract 0x80 from R0 \n\
/* 0804bbe4 */ BL func_08049b70 \n\
/* 0804bbe8 */ B branch_0804bc56 \n\
\n\
.ltorg \n\
jump_0804bbf4: \n\
/* 0804bbf4 */ LDR R1, =D_03005640 \n\
/* 0804bbf6 */ LSLS R0, R5, 0x1 \n\
/* 0804bbf8 */ STRB R0, [R1] \n\
/* 0804bbfa */ B branch_0804bc56 \n\
\n\
.ltorg \n\
jump_0804bc00: \n\
/* 0804bc00 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804bc02 */ BL func_08049b8c \n\
/* 0804bc06 */ B branch_0804bc56 \n\
jump_0804bc08: \n\
/* 0804bc08 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bc0a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bc0c */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bc0e */ BL func_0804acf0 \n\
/* 0804bc12 */ B branch_0804bc56 \n\
jump_0804bc14: \n\
/* 0804bc14 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804bc16 */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 0804bc18 */ STRB R5, [R0] \n\
/* 0804bc1a */ B branch_0804bc56 \n\
jump_0804bc1c: \n\
/* 0804bc1c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804bc1e */ ADDS R0, 0x2E @ Add 0x2E to R0 \n\
/* 0804bc20 */ STRB R5, [R0] \n\
/* 0804bc22 */ B branch_0804bc56 \n\
jump_0804bc24: \n\
/* 0804bc24 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804bc26 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 0804bc28 */ STRB R5, [R0] \n\
/* 0804bc2a */ B branch_0804bc56 \n\
jump_0804bc2c: \n\
/* 0804bc2c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804bc2e */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0804bc30 */ STRB R5, [R0] \n\
/* 0804bc32 */ B branch_0804bc56 \n\
jump_0804bc34: \n\
/* 0804bc34 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bc36 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bc38 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bc3a */ BL func_0804ad38 \n\
/* 0804bc3e */ B branch_0804bc56 \n\
jump_0804bc40: \n\
/* 0804bc40 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bc42 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bc44 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bc46 */ BL func_0804ad90 \n\
/* 0804bc4a */ B branch_0804bc56 \n\
jump_0804bc4c: \n\
/* 0804bc4c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804bc4e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bc50 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804bc52 */ BL func_0804ad9c \n\
 \n\
branch_0804bc56: \n\
/* 0804bc56 */ POP {R4-R6} \n\
/* 0804bc58 */ POP {R0} \n\
/* 0804bc5a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
