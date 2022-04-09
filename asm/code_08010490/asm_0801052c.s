asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801052c \n\
/* 0801052c */ PUSH {R4-R7, LR} \n\
/* 0801052e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08010530 */ PUSH {R7} \n\
/* 08010532 */ SUB SP, 0x14 \n\
/* 08010534 */ LDR R0, =D_089cd1f0 \n\
/* 08010536 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08010538 */ BL func_0800c3b8 \n\
/* 0801053c */ LSLS R0, R0, 0x10 \n\
/* 0801053e */ LSRS R0, R0, 0x10 \n\
/* 08010540 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08010542 */ LSLS R1, R1, 0x1 \n\
/* 08010544 */ BL mem_heap_alloc_id \n\
/* 08010548 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801054a */ BL func_0800061c \n\
/* 0801054e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010550 */ BEQ branch_08010564 \n\
/* 08010552 */ BL func_080005f4 \n\
/* 08010556 */ LSLS R0, R0, 0x4 \n\
/* 08010558 */ LDR R1, =D_089d7e74 \n\
/* 0801055a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801055c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801055e */ BEQ branch_08010564 \n\
/* 08010560 */ LDR R0, [R0] \n\
/* 08010562 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_08010564: \n\
/* 08010564 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010566 */ BL func_08007324 \n\
/* 0801056a */ BL func_080073f0 \n\
/* 0801056e */ BL func_080104f0 \n\
/* 08010572 */ LDR R0, =D_03005380 \n\
/* 08010574 */ LDR R0, [R0] \n\
/* 08010576 */ LDR R1, =D_089000cc \n\
/* 08010578 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0801057a */ STR R2, [SP] \n\
/* 0801057c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801057e */ LSLS R2, R2, 0x4 \n\
/* 08010580 */ STR R2, [SP, 0x4] \n\
/* 08010582 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08010584 */ STR R2, [SP, 0x8] \n\
/* 08010586 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08010588 */ STR R5, [SP, 0xC] \n\
/* 0801058a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801058c */ LSLS R2, R2, 0x8 \n\
/* 0801058e */ STR R2, [SP, 0x10] \n\
/* 08010590 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010592 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08010594 */ BL func_0804d160 \n\
/* 08010598 */ LDR R4, =D_030046a4 \n\
/* 0801059a */ LDR R1, [R4] \n\
/* 0801059c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801059e */ STRH R0, [R1, 0x4] \n\
/* 080105a0 */ STRB R2, [R1, 0x6] \n\
/* 080105a2 */ BL func_0800c3b8 \n\
/* 080105a6 */ LSLS R0, R0, 0x10 \n\
/* 080105a8 */ LSRS R0, R0, 0x10 \n\
/* 080105aa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080105ac */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 080105ae */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080105b0 */ BL func_0800a204 \n\
/* 080105b4 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080105b6 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080105b8 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 080105ba */ BL func_0800ac68 \n\
/* 080105be */ LDR R1, =D_0804f384 \n\
/* 080105c0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080105c2 */ BL func_0800aa4c \n\
/* 080105c6 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080105c8 */ BL func_0800a914 \n\
/* 080105cc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080105ce */ BL func_0800a914 \n\
/* 080105d2 */ BL func_0800c3b8 \n\
/* 080105d6 */ LSLS R0, R0, 0x10 \n\
/* 080105d8 */ LSRS R0, R0, 0x10 \n\
/* 080105da */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080105dc */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 080105de */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 080105e0 */ BL func_0800a204 \n\
/* 080105e4 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080105e6 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080105e8 */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 080105ea */ BL func_0800ac68 \n\
/* 080105ee */ LDR R1, =D_0804f3a0 \n\
/* 080105f0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080105f2 */ BL func_0800aa4c \n\
/* 080105f6 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080105f8 */ BL func_0800a914 \n\
/* 080105fc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080105fe */ BL func_0800a914 \n\
/* 08010602 */ LDR R1, =D_0804f3dc \n\
/* 08010604 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08010606 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08010608 */ BL memcpy \n\
/* 0801060c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801060e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08010610 */ BL func_080081a8 \n\
/* 08010614 */ LDR R1, =D_0804f3e4 \n\
/* 08010616 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08010618 */ BL func_080081a8 \n\
/* 0801061c */ BL func_0800c3b8 \n\
/* 08010620 */ LSLS R0, R0, 0x10 \n\
/* 08010622 */ LSRS R0, R0, 0x10 \n\
/* 08010624 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08010626 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08010628 */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 0801062a */ BL func_0800a204 \n\
/* 0801062e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08010630 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08010632 */ MOVS R2, 0x48 @ Set R2 to 0x48 \n\
/* 08010634 */ BL func_0800ac68 \n\
/* 08010638 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801063a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801063c */ BL func_0800acd8 \n\
/* 08010640 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08010642 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08010644 */ BL func_0800aa4c \n\
/* 08010648 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801064a */ BL func_0800a914 \n\
/* 0801064e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08010650 */ BL func_0800a914 \n\
/* 08010654 */ LDR R0, [R4] \n\
/* 08010656 */ STR R5, [R0] \n\
/* 08010658 */ ADD SP, 0x14 \n\
/* 0801065a */ POP {R3} \n\
/* 0801065c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801065e */ POP {R4-R7} \n\
/* 08010660 */ POP {R0} \n\
/* 08010662 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
