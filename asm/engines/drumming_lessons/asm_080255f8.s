asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080255f8 \n\
/* 080255f8 */ PUSH {R4-R7, LR} \n\
/* 080255fa */ SUB SP, 0x8 \n\
/* 080255fc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080255fe */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08025600 */ BGE branch_08025604 \n\
/* 08025602 */ B branch_0802572e \n\
 \n\
branch_08025604: \n\
/* 08025604 */ LDR R7, =gCurrentEngineData \n\
/* 08025606 */ LDR R0, [R7] \n\
/* 08025608 */ LDR R2, =0x000013fb \n\
/* 0802560a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802560c */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0802560e */ LDRB R0, [R2] \n\
/* 08025610 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025612 */ BEQ branch_08025616 \n\
/* 08025614 */ B branch_0802572e \n\
 \n\
branch_08025616: \n\
/* 08025616 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08025618 */ STRB R0, [R2] \n\
/* 0802561a */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 0802561c */ BEQ branch_08025648 \n\
/* 0802561e */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 08025620 */ BGT branch_08025630 \n\
/* 08025622 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08025624 */ BEQ branch_0802563a \n\
/* 08025626 */ B branch_0802572e \n\
\n\
.ltorg \n\
 \n\
branch_08025630: \n\
/* 08025630 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 08025632 */ BEQ branch_080256ba \n\
/* 08025634 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08025636 */ BEQ branch_080256e0 \n\
/* 08025638 */ B branch_0802572e \n\
 \n\
branch_0802563a: \n\
/* 0802563a */ LDR R1, [R7] \n\
/* 0802563c */ LDR R0, =0x000013f9 \n\
/* 0802563e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025640 */ B branch_0802564e \n\
\n\
.ltorg \n\
 \n\
branch_08025648: \n\
/* 08025648 */ LDR R1, [R7] \n\
/* 0802564a */ LDR R2, =0x000013f9 \n\
/* 0802564c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
 \n\
branch_0802564e: \n\
/* 0802564e */ LDRB R0, [R1] \n\
/* 08025650 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08025652 */ STRB R0, [R1] \n\
/* 08025654 */ BL get_current_mem_id \n\
/* 08025658 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802565a */ LSLS R4, R4, 0x10 \n\
/* 0802565c */ LSRS R4, R4, 0x10 \n\
/* 0802565e */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 08025660 */ BL beats_to_ticks \n\
/* 08025664 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08025666 */ LSLS R1, R1, 0x18 \n\
/* 08025668 */ LSRS R1, R1, 0x18 \n\
/* 0802566a */ LDR R0, [R7] \n\
/* 0802566c */ LDR R2, =0x0000159c \n\
/* 0802566e */ ADDS R3, R0, R2 @ Set R3 to R0 + R2 \n\
/* 08025670 */ LDR R2, =0x0000149c \n\
/* 08025672 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08025674 */ STR R0, [SP] \n\
/* 08025676 */ LDR R5, =(D_03004b10 + 0x254) \n\
/* 08025678 */ STR R5, [SP, 0x4] \n\
/* 0802567a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802567c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802567e */ BL func_08001fe0 \n\
/* 08025682 */ BL get_current_mem_id \n\
/* 08025686 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08025688 */ LSLS R4, R4, 0x10 \n\
/* 0802568a */ LSRS R4, R4, 0x10 \n\
/* 0802568c */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 0802568e */ BL beats_to_ticks \n\
/* 08025692 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08025694 */ LSLS R1, R1, 0x18 \n\
/* 08025696 */ LSRS R1, R1, 0x18 \n\
/* 08025698 */ LDR R0, [R7] \n\
/* 0802569a */ LDR R2, =0x0000151c \n\
/* 0802569c */ ADDS R3, R0, R2 @ Set R3 to R0 + R2 \n\
/* 0802569e */ LDR R2, =0x0000141c \n\
/* 080256a0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080256a2 */ STR R0, [SP] \n\
/* 080256a4 */ LDR R0, =0xfffffe00 \n\
/* 080256a6 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080256a8 */ STR R5, [SP, 0x4] \n\
/* 080256aa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080256ac */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080256ae */ BL func_08001fe0 \n\
/* 080256b2 */ LDR R1, =func_08025538 \n\
/* 080256b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080256b6 */ BL run_func_after_task \n\
 \n\
branch_080256ba: \n\
/* 080256ba */ BL func_0802555c \n\
/* 080256be */ B branch_0802572e \n\
\n\
.ltorg \n\
 \n\
branch_080256e0: \n\
/* 080256e0 */ LDR R1, [R7] \n\
/* 080256e2 */ LDR R0, =0x00001410 \n\
/* 080256e4 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 080256e6 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 080256e8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080256ea */ STR R0, [R2] \n\
/* 080256ec */ LDR R0, =0x0000140c \n\
/* 080256ee */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 080256f0 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 080256f2 */ LSLS R0, R0, 0x3 \n\
/* 080256f4 */ STR R0, [R2] \n\
/* 080256f6 */ LDR R6, =0x00001408 \n\
/* 080256f8 */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 080256fa */ LDRB R0, [R0] \n\
/* 080256fc */ LSLS R0, R0, 0x1 \n\
/* 080256fe */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08025700 */ LSLS R2, R2, 0x5 \n\
/* 08025702 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025704 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025706 */ LDR R4, =D_03005380 \n\
/* 08025708 */ LDR R0, [R4] \n\
/* 0802570a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802570c */ LDRSH R5, [R1, R2] \n\
/* 0802570e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08025710 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08025712 */ BL func_0804d770 \n\
/* 08025716 */ LDR R0, [R4] \n\
/* 08025718 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802571a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802571c */ BL func_0804cebc \n\
/* 08025720 */ LDR R2, [R7] \n\
/* 08025722 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08025724 */ LDRB R0, [R2] \n\
/* 08025726 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08025728 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802572a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802572c */ STRB R0, [R2] \n\
 \n\
branch_0802572e: \n\
/* 0802572e */ ADD SP, 0x8 \n\
/* 08025730 */ POP {R4-R7} \n\
/* 08025732 */ POP {R0} \n\
/* 08025734 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
