asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080159f4 \n\
/* 080159f4 */ PUSH {R4, LR} \n\
/* 080159f6 */ SUB SP, 0x14 \n\
/* 080159f8 */ LDR R4, [SP, 0x1C] \n\
/* 080159fa */ LSLS R0, R0, 0x10 \n\
/* 080159fc */ LSRS R0, R0, 0x10 \n\
/* 080159fe */ STR R1, [SP, 0x4] \n\
/* 08015a00 */ STR R2, [SP, 0x8] \n\
/* 08015a02 */ ADD R1, SP, 0x4 \n\
/* 08015a04 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015a06 */ STRH R3, [R1, 0xC] \n\
/* 08015a08 */ STR R4, [SP, 0xC] \n\
/* 08015a0a */ LDR R1, =D_089cfab8 \n\
/* 08015a0c */ STR R2, [SP] \n\
/* 08015a0e */ ADD R2, SP, 0x4 \n\
/* 08015a10 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08015a12 */ BL start_new_task \n\
/* 08015a16 */ ADD SP, 0x14 \n\
/* 08015a18 */ POP {R4} \n\
/* 08015a1a */ POP {R1} \n\
/* 08015a1c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
