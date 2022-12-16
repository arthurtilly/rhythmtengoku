asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080115d0 \n\
/* 080115d0 */ PUSH {R4, R5, LR} \n\
/* 080115d2 */ SUB SP, 0x4 \n\
/* 080115d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080115d6 */ BL func_08007324 \n\
/* 080115da */ BL func_080073f0 \n\
/* 080115de */ BL get_current_mem_id \n\
/* 080115e2 */ LSLS R0, R0, 0x10 \n\
/* 080115e4 */ LSRS R0, R0, 0x10 \n\
/* 080115e6 */ LDR R1, =D_089de670 \n\
/* 080115e8 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 080115ea */ LSLS R3, R3, 0x2 \n\
/* 080115ec */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080115ee */ STR R2, [SP] \n\
/* 080115f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080115f2 */ BL func_08005124 \n\
/* 080115f6 */ LDR R4, =D_030046a4 \n\
/* 080115f8 */ LDR R1, [R4] \n\
/* 080115fa */ STR R0, [R1] \n\
/* 080115fc */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 080115fe */ LSLS R0, R0, 0x2 \n\
/* 08011600 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08011602 */ BL func_0800c660 \n\
/* 08011606 */ LDR R1, [R4] \n\
/* 08011608 */ STR R0, [R1, 0x4] \n\
/* 0801160a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801160c */ LDR R0, =0xffff \n\
/* 0801160e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_08011610: \n\
/* 08011610 */ LDR R0, [R4] \n\
/* 08011612 */ LSLS R1, R2, 0x1 \n\
/* 08011614 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08011616 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08011618 */ LDRH R1, [R0] \n\
/* 0801161a */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 0801161c */ STRH R1, [R0] \n\
/* 0801161e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08011620 */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 08011622 */ BLS branch_08011610 \n\
/* 08011624 */ LDR R2, =D_08050b38 \n\
/* 08011626 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011628 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801162a */ BL func_08011744 \n\
/* 0801162e */ LDR R4, =D_030046a4 \n\
/* 08011630 */ LDR R0, [R4] \n\
/* 08011632 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08011634 */ STRH R5, [R0, 0x22] \n\
/* 08011636 */ BL func_080141d4 \n\
/* 0801163a */ LDR R1, [R4] \n\
/* 0801163c */ STRH R0, [R1, 0x20] \n\
/* 0801163e */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 08011640 */ LDRSH R0, [R1, R2] \n\
/* 08011642 */ BL func_08011820 \n\
/* 08011646 */ LDR R0, =D_03005380 \n\
/* 08011648 */ LDR R0, [R0] \n\
/* 0801164a */ LDR R1, [R4] \n\
/* 0801164c */ LDR R1, [R1, 0x4] \n\
/* 0801164e */ LDR R2, =D_089cda28 \n\
/* 08011650 */ LDR R3, =D_0300558c \n\
/* 08011652 */ LDR R3, [R3] \n\
/* 08011654 */ BL func_08005814 \n\
/* 08011658 */ BL func_080115b0 \n\
/* 0801165c */ LDR R0, [R4] \n\
/* 0801165e */ STR R5, [R0, 0x8] \n\
/* 08011660 */ LDR R0, =D_089ddbcc \n\
/* 08011662 */ BL func_08000584 \n\
/* 08011666 */ ADD SP, 0x4 \n\
/* 08011668 */ POP {R4, R5} \n\
/* 0801166a */ POP {R0} \n\
/* 0801166c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
