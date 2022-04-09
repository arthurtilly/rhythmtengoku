asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080029d8 \n\
/* 080029d8 */ PUSH {R4, LR} \n\
/* 080029da */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080029dc */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080029de */ BEQ branch_080029f4 \n\
/* 080029e0 */ LDR R0, =0x04000082 @ !Hardware REG_SOUNDCNT_H \n\
/* 080029e2 */ LDRH R1, [R0] \n\
/* 080029e4 */ MOVS R4, 0x90 @ Set R4 to 0x90 \n\
/* 080029e6 */ LSLS R4, R4, 0x5 \n\
/* 080029e8 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080029ea */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 080029ec */ STRH R1, [R0] \n\
/* 080029ee */ B branch_080029fe \n\
\n\
.ltorg \n\
 \n\
branch_080029f4: \n\
/* 080029f4 */ LDR R2, =0x04000082 @ !Hardware REG_SOUNDCNT_H \n\
/* 080029f6 */ LDRH R1, [R2] \n\
/* 080029f8 */ LDR R0, =0xedff \n\
/* 080029fa */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080029fc */ STRH R0, [R2] \n\
 \n\
branch_080029fe: \n\
/* 080029fe */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08002a00 */ MOVS R1, 0xA6 @ Set R1 to 0xA6 \n\
/* 08002a02 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08002a04 */ BL func_08049bfc \n\
/* 08002a08 */ POP {R4} \n\
/* 08002a0a */ POP {R0} \n\
/* 08002a0c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
