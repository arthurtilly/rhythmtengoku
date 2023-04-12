asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dbe8 \n\
/* 0801dbe8 */ PUSH {R4-R7, LR} \n\
/* 0801dbea */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0801dbec */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801dbee */ PUSH {R6, R7} \n\
/* 0801dbf0 */ SUB SP, 0x4 \n\
/* 0801dbf2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801dbf4 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801dbf6 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0801dbf8 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0801dbfa */ LDR R4, [SP, 0x24] \n\
/* 0801dbfc */ LSLS R5, R5, 0x10 \n\
/* 0801dbfe */ LSRS R5, R5, 0x10 \n\
/* 0801dc00 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801dc02 */ MOVS R1, 0x34 @ Set R1 to 0x34 \n\
/* 0801dc04 */ BL mem_heap_alloc_id \n\
/* 0801dc08 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801dc0a */ LDR R1, =bitmap_font_warioware_body \n\
/* 0801dc0c */ LSLS R2, R6, 0x18 \n\
/* 0801dc0e */ LSRS R2, R2, 0x18 \n\
/* 0801dc10 */ LDR R0, [SP, 0x20] \n\
/* 0801dc12 */ LSLS R3, R0, 0x10 \n\
/* 0801dc14 */ LSRS R3, R3, 0x10 \n\
/* 0801dc16 */ LSLS R4, R4, 0x18 \n\
/* 0801dc18 */ LSRS R4, R4, 0x18 \n\
/* 0801dc1a */ STR R4, [SP] \n\
/* 0801dc1c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801dc1e */ BL create_new_bmp_font_bg \n\
/* 0801dc22 */ STR R0, [R7] \n\
/* 0801dc24 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801dc26 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801dc28 */ STRB R1, [R7, 0xC] \n\
/* 0801dc2a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801dc2c */ STR R2, [R7, 0x10] \n\
/* 0801dc2e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801dc30 */ LSLS R1, R1, 0x3 \n\
/* 0801dc32 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801dc34 */ BL mem_heap_alloc_id \n\
/* 0801dc38 */ STR R0, [R7, 0x8] \n\
/* 0801dc3a */ STRB R4, [R7, 0x4] \n\
/* 0801dc3c */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801dc3e */ LSLS R1, R1, 0x5 \n\
/* 0801dc40 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801dc42 */ BL mem_heap_alloc_id \n\
/* 0801dc46 */ STR R0, [R7, 0x14] \n\
/* 0801dc48 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801dc4a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801dc4c */ STR R0, [R7, 0x20] \n\
/* 0801dc4e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801dc50 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0801dc52 */ ADD R1, SP, 0x28 \n\
/* 0801dc54 */ LDRB R1, [R1] \n\
/* 0801dc56 */ STRB R1, [R0] \n\
/* 0801dc58 */ SUBS R0, 0xB @ Subtract 0xB from R0 \n\
/* 0801dc5a */ ADD R2, SP, 0x2C \n\
/* 0801dc5c */ LDRB R2, [R2] \n\
/* 0801dc5e */ STRB R2, [R0] \n\
/* 0801dc60 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0801dc62 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0801dc64 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0801dc66 */ STRB R0, [R1] \n\
/* 0801dc68 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801dc6a */ ADDS R0, 0x26 @ Add 0x26 to R0 \n\
/* 0801dc6c */ STRB R4, [R0] \n\
/* 0801dc6e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801dc70 */ STRB R4, [R0] \n\
/* 0801dc72 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801dc74 */ STRB R0, [R7, 0xD] \n\
/* 0801dc76 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801dc78 */ ADDS R0, 0x31 @ Add 0x31 to R0 \n\
/* 0801dc7a */ STRB R4, [R0] \n\
/* 0801dc7c */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 0801dc7e */ STRB R4, [R0] \n\
/* 0801dc80 */ MOV R0, SP @ Set R0 to SP \n\
/* 0801dc82 */ LDRH R0, [R0, 0x20] \n\
/* 0801dc84 */ STRH R0, [R7, 0x2A] \n\
/* 0801dc86 */ LSLS R6, R6, 0xE \n\
/* 0801dc88 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0801dc8a */ LSLS R1, R1, 0x13 \n\
/* 0801dc8c */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 0801dc8e */ LDR R2, [SP, 0x20] \n\
/* 0801dc90 */ LSLS R3, R2, 0x5 \n\
/* 0801dc92 */ ADDS R6, R6, R3 @ Set R6 to R6 + R3 \n\
/* 0801dc94 */ STR R6, [R7, 0x2C] \n\
/* 0801dc96 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801dc98 */ LSLS R0, R0, 0x2 \n\
/* 0801dc9a */ STRH R0, [R7, 0x32] \n\
/* 0801dc9c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801dc9e */ ADD SP, 0x4 \n\
/* 0801dca0 */ POP {R3, R4} \n\
/* 0801dca2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801dca4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801dca6 */ POP {R4-R7} \n\
/* 0801dca8 */ POP {R1} \n\
/* 0801dcaa */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
