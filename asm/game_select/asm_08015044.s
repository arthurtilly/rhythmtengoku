asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015044 \n\
/* 08015044 */ PUSH {R4-R7, LR} \n\
/* 08015046 */ SUB SP, 0x1C \n\
/* 08015048 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801504a */ LDR R0, =D_030046a8 \n\
/* 0801504c */ LDR R1, [R0] \n\
/* 0801504e */ LDR R7, =D_030046a4 \n\
/* 08015050 */ LDR R0, [R7] \n\
/* 08015052 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08015054 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015056 */ LDRSH R0, [R0, R2] \n\
/* 08015058 */ LSLS R0, R0, 0x1 \n\
/* 0801505a */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 0801505c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801505e */ LDRH R1, [R1] \n\
/* 08015060 */ LDR R0, =0xffff \n\
/* 08015062 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08015064 */ BNE branch_08015068 \n\
/* 08015066 */ MOVS R6, 0x3 @ Set R6 to 0x3 \n\
 \n\
branch_08015068: \n\
/* 08015068 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801506a */ STR R4, [SP] \n\
/* 0801506c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0801506e */ MOVS R1, 0x1A @ Set R1 to 0x1A \n\
/* 08015070 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08015072 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08015074 */ BL text_printer_fill_vram_tiles \n\
/* 08015078 */ LDR R1, =D_089cf9e8 \n\
/* 0801507a */ LSLS R0, R6, 0x2 \n\
/* 0801507c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801507e */ LDR R0, [R0] \n\
/* 08015080 */ STR R0, [SP, 0x18] \n\
/* 08015082 */ BL get_current_mem_id \n\
/* 08015086 */ ADD R1, SP, 0x18 \n\
/* 08015088 */ STR R1, [SP] \n\
/* 0801508a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801508c */ STR R1, [SP, 0x4] \n\
/* 0801508e */ STR R4, [SP, 0x8] \n\
/* 08015090 */ MOVS R1, 0x68 @ Set R1 to 0x68 \n\
/* 08015092 */ STR R1, [SP, 0xC] \n\
/* 08015094 */ STR R4, [SP, 0x10] \n\
/* 08015096 */ SUBS R1, 0x69 @ Subtract 0x69 from R1 \n\
/* 08015098 */ STR R1, [SP, 0x14] \n\
/* 0801509a */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801509c */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0801509e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080150a0 */ BL text_printer_get_formatted_line_anim \n\
/* 080150a4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080150a6 */ LDR R5, =D_03005380 \n\
/* 080150a8 */ LDR R0, [R5] \n\
/* 080150aa */ MOVS R2, 0x74 @ Set R2 to 0x74 \n\
/* 080150ac */ STR R2, [SP] \n\
/* 080150ae */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080150b0 */ LSLS R2, R2, 0x4 \n\
/* 080150b2 */ STR R2, [SP, 0x4] \n\
/* 080150b4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080150b6 */ STR R2, [SP, 0x8] \n\
/* 080150b8 */ STR R4, [SP, 0xC] \n\
/* 080150ba */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080150bc */ LSLS R2, R2, 0x8 \n\
/* 080150be */ STR R2, [SP, 0x10] \n\
/* 080150c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080150c2 */ MOVS R3, 0xE4 @ Set R3 to 0xE4 \n\
/* 080150c4 */ BL func_0804d160 \n\
/* 080150c8 */ LDR R1, [R7] \n\
/* 080150ca */ STRH R0, [R1, 0x3C] \n\
/* 080150cc */ LDR R0, [R5] \n\
/* 080150ce */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 080150d0 */ LDRSH R1, [R1, R2] \n\
/* 080150d2 */ LDR R2, =D_089cfa00 \n\
/* 080150d4 */ ADDS R2, R6, R2 @ Set R2 to R6 + R2 \n\
/* 080150d6 */ LDRB R2, [R2] \n\
/* 080150d8 */ LSLS R2, R2, 0x18 \n\
/* 080150da */ ASRS R2, R2, 0x18 \n\
/* 080150dc */ BL func_0804d8c4 \n\
/* 080150e0 */ LDR R0, [R7] \n\
/* 080150e2 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 080150e4 */ STRB R4, [R0] \n\
/* 080150e6 */ ADD SP, 0x1C \n\
/* 080150e8 */ POP {R4-R7} \n\
/* 080150ea */ POP {R0} \n\
/* 080150ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
