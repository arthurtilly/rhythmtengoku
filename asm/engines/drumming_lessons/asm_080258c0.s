asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080258c0 \n\
/* 080258c0 */ PUSH {R4-R6, LR} \n\
/* 080258c2 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 080258c4 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 080258c6 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 080258c8 */ PUSH {R4-R6} \n\
/* 080258ca */ SUB SP, 0x8 \n\
/* 080258cc */ LDR R4, =gCurrentEngineData \n\
/* 080258ce */ LDR R1, [R4] \n\
/* 080258d0 */ LDR R2, =0x0000179c \n\
/* 080258d2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080258d4 */ LDR R3, =0x0000171c \n\
/* 080258d6 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080258d8 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 080258da */ LSLS R5, R5, 0x2 \n\
/* 080258dc */ STR R5, [SP] \n\
/* 080258de */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080258e0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080258e2 */ BL dma3_set \n\
/* 080258e6 */ LDR R1, [R4] \n\
/* 080258e8 */ LDR R2, =0x0000169c \n\
/* 080258ea */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080258ec */ LDR R3, =0x0000161c \n\
/* 080258ee */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080258f0 */ STR R5, [SP] \n\
/* 080258f2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080258f4 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080258f6 */ BL dma3_set \n\
/* 080258fa */ LDR R2, [R4] \n\
/* 080258fc */ LDR R1, =0x00001414 \n\
/* 080258fe */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08025900 */ LDRB R0, [R0] \n\
/* 08025902 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025904 */ BEQ branch_08025924 \n\
/* 08025906 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08025908 */ BEQ branch_08025968 \n\
/* 0802590a */ B branch_0802596c \n\
\n\
.ltorg \n\
 \n\
branch_08025924: \n\
/* 08025924 */ LDR R1, =drum_live_obj_palettes \n\
/* 08025926 */ LDRB R0, [R2] \n\
/* 08025928 */ LSLS R0, R0, 0x2 \n\
/* 0802592a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802592c */ LDR R0, [R0] \n\
/* 0802592e */ LDR R3, =0x0000179c \n\
/* 08025930 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08025932 */ STR R5, [SP] \n\
/* 08025934 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08025936 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08025938 */ BL dma3_set \n\
/* 0802593c */ LDR R2, =drum_live_bg_palettes \n\
/* 0802593e */ LDR R1, [R4] \n\
/* 08025940 */ LDRB R0, [R1] \n\
/* 08025942 */ LSLS R0, R0, 0x2 \n\
/* 08025944 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08025946 */ LDR R0, [R0] \n\
/* 08025948 */ LDR R2, =0x0000169c \n\
/* 0802594a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802594c */ STR R5, [SP] \n\
/* 0802594e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08025950 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08025952 */ BL dma3_set \n\
/* 08025956 */ B branch_0802596c \n\
\n\
.ltorg \n\
 \n\
branch_08025968: \n\
/* 08025968 */ BL func_08025848 \n\
 \n\
branch_0802596c: \n\
/* 0802596c */ LDR R3, =gCurrentEngineData \n\
/* 0802596e */ MOV R10, R3 @ Set R10 to R3 \n\
/* 08025970 */ LDR R3, [R3] \n\
/* 08025972 */ LDR R6, =0x0000171c \n\
/* 08025974 */ ADDS R2, R3, R6 @ Set R2 to R3 + R6 \n\
/* 08025976 */ LDR R5, =0x0000179c \n\
/* 08025978 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0802597a */ STR R2, [SP] \n\
/* 0802597c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802597e */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08025980 */ BL func_08001ddc \n\
/* 08025984 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08025986 */ LDR R3, [R0] \n\
/* 08025988 */ LDR R1, =0x0000161c \n\
/* 0802598a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802598c */ ADDS R2, R3, R1 @ Set R2 to R3 + R1 \n\
/* 0802598e */ LDR R0, =0x0000169c \n\
/* 08025990 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08025992 */ ADD R3, R8 @ Add R8 to R3 \n\
/* 08025994 */ STR R2, [SP] \n\
/* 08025996 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08025998 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802599a */ BL func_08001ddc \n\
/* 0802599e */ BL get_current_mem_id \n\
/* 080259a2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080259a4 */ LSLS R4, R4, 0x10 \n\
/* 080259a6 */ LSRS R4, R4, 0x10 \n\
/* 080259a8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080259aa */ BL ticks_to_frames \n\
/* 080259ae */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080259b0 */ LSLS R1, R1, 0x18 \n\
/* 080259b2 */ LSRS R1, R1, 0x18 \n\
/* 080259b4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080259b6 */ LDR R0, [R2] \n\
/* 080259b8 */ ADDS R6, R0, R6 @ Set R6 to R0 + R6 \n\
/* 080259ba */ ADDS R5, R0, R5 @ Set R5 to R0 + R5 \n\
/* 080259bc */ STR R5, [SP] \n\
/* 080259be */ LDR R3, =0x0000149c \n\
/* 080259c0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080259c2 */ STR R0, [SP, 0x4] \n\
/* 080259c4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080259c6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080259c8 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080259ca */ BL func_08001fe0 \n\
/* 080259ce */ BL get_current_mem_id \n\
/* 080259d2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080259d4 */ LSLS R4, R4, 0x10 \n\
/* 080259d6 */ LSRS R4, R4, 0x10 \n\
/* 080259d8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080259da */ BL ticks_to_frames \n\
/* 080259de */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080259e0 */ LSLS R1, R1, 0x18 \n\
/* 080259e2 */ LSRS R1, R1, 0x18 \n\
/* 080259e4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080259e6 */ LDR R0, [R2] \n\
/* 080259e8 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 080259ea */ ADD R8, R0 @ Add R0 to R8 \n\
/* 080259ec */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080259ee */ STR R3, [SP] \n\
/* 080259f0 */ LDR R2, =0x0000141c \n\
/* 080259f2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080259f4 */ STR R0, [SP, 0x4] \n\
/* 080259f6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080259f8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080259fa */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080259fc */ BL func_08001fe0 \n\
/* 08025a00 */ ADD SP, 0x8 \n\
/* 08025a02 */ POP {R3-R5} \n\
/* 08025a04 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08025a06 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08025a08 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08025a0a */ POP {R4-R6} \n\
/* 08025a0c */ POP {R0} \n\
/* 08025a0e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
