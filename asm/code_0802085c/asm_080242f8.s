asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080242f8 \n\
	PUSH {R4-R7, LR} \n\
	MOV R7, R10 \n\
	MOV R6, R9 \n\
	MOV R5, R8 \n\
	PUSH {R5, R6, R7} \n\
	SUB SP, 0x28 \n\
	STR R0, [SP, 0x14] \n\
	LDR R0, =D_030055d0 \n\
	LDR R0, [R0] \n\
	MOVS R1, 0xd5 \n\
	LSLS R1, R1, 0x2 \n\
	ADDS R7, R0, R1 \n\
	MOVS R4, 0x0 \n\
	MOV R2, SP \n\
	LDRB R2, [R2, 0x14] \n\
	STRB R2, [R0] \n\
	BL func_080242cc \n\
	BL func_0800e0ec \n\
	MOVS R2, 0x40 \n\
	RSBS R2, R2, 0x0 \n\
	MOVS R3, 0x10 \n\
	RSBS R3, R3, 0x0 \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1d \n\
	STR R0, [SP, 0x4] \n\
	MOVS R0, 0x1 \n\
	STR R0, [SP, 0x8] \n\
	MOVS R1, 0x0 \n\
	BL func_0800e0a0 \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3f7c \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024344 \n\
	LDR R4, =D_088c2c40 \n\
 \n\
branch_08024344: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOVS R1, 0x78 \n\
	STR R1, [SP] \n\
	MOVS R1, 0x90 \n\
	LSLS R1, R1, 0x7 \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	RSBS R1, R1, 0x0 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0xc] \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x2] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3f5c \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802437e \n\
	LDR R4, =0x088c2c20 \n\
 \n\
branch_0802437e: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOVS R1, 0x78 \n\
	STR R1, [SP] \n\
	LDR R1, =0x00004805\n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3f9c \n\
	CMP R0, 0x0 \n\
	BEQ branch_080243b6 \n\
	LDR R4, =D_088c2c60 \n\
 \n\
branch_080243b6: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOVS R1, 0x78 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047fb \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x4] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3d2c \n\
	CMP R0, 0x0 \n\
	BEQ branch_080243ee \n\
	LDR R4, =D_088c29f0 \n\
 \n\
branch_080243ee: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOVS R1, 0x57 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047ec \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x7f \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x6] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3d84 \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024426 \n\
	LDR R4, =D_088c2a48 \n\
 \n\
branch_08024426: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOVS R1, 0x55 \n\
	STR R1, [SP] \n\
	LDR R1, =0x0000480a \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x82 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x8] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3fbc \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802445e \n\
	LDR R4, =D_088c2c80 \n\
 \n\
branch_0802445e: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOVS R1, 0x78 \n\
	MOV R9, R1 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047f6 \n\
	STR R1, [SP, 0x4] \n\
	MOVS R2, 0x1 \n\
	MOV R8, R2 \n\
	STR R2, [SP, 0x8] \n\
	MOVS R6, 0x7f \n\
	STR R6, [SP, 0xc] \n\
	MOVS R5, 0x0 \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x2 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0xa] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3fdc \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802449a \n\
	LDR R4, =D_088c2ca0 \n\
 \n\
branch_0802449a: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x00004814 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x2 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0xc] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c40fc \n\
	CMP R0, 0x0 \n\
	BEQ branch_080244ce \n\
	LDR R4, =D_088c2dc0 \n\
 \n\
branch_080244ce: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x00004864 \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x12] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c40dc \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024502 \n\
	LDR R4, =D_088c2da0 \n\
 \n\
branch_08024502: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x0000486e \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x14] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c413c \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024536 \n\
	LDR R4, =D_088c2e00 \n\
 \n\
branch_08024536: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x0000480f \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x16] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c415c \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802456a \n\
	LDR R4, =D_088c2e20 \n\
 \n\
branch_0802456a: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x000047f1 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x18] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c411c \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802459e \n\
	LDR R4, =D_088c2de0 \n\
 \n\
branch_0802459e: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047f2 \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x1a] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c406c \n\
	CMP R0, 0x0 \n\
	BEQ branch_080245d2 \n\
	LDR R4, =D_088c2d30 \n\
 \n\
branch_080245d2: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x00004878 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x1c] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c3ffc \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024606 \n\
	LDR R4, =D_088c2cc0 \n\
 \n\
branch_08024606: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x00004882 \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x1e] \n\
	BL func_08024bd0 \n\
	LDR R4, =D_088c417c \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802463a \n\
	LDR R4, =D_088c2e40 \n\
 \n\
branch_0802463a: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x00004805 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL func_0804d160 \n\
	STRH R0, [R7, 0x20] \n\
	ADDS R2, R7, 0x0 \n\
	ADDS R2, 0x22 \n\
	STR R2, [SP, 0x18] \n\
	MOVS R0, 0xff \n\
	STRB R0, [R2] \n\
	ADDS R0, R7, 0x0 \n\
	ADDS R0, 0x23 \n\
	STR R0, [SP, 0x1c] \n\
	MOVS R0, 0x1 \n\
	RSBS R0, R0, 0x0 \n\
	LDR R1, [SP, 0x1c] \n\
	STRB R0, [R1] \n\
	ADDS R1, R7, 0x0 \n\
	ADDS R1, 0x24 \n\
	STRB R0, [R1] \n\
	ADDS R2, 0x3 \n\
	STR R2, [SP, 0x20] \n\
	STRB R0, [R2] \n\
	MOVS R0, 0x26 \n\
	ADDS R0, R0, R7 \n\
	MOV R10, R0 \n\
	MOVS R0, 0x1 \n\
	RSBS R0, R0, 0x0 \n\
	MOV R1, R10 \n\
	STRB R0, [R1] \n\
	MOVS R2, 0x27 \n\
	ADDS R2, R2, R7 \n\
	MOV R9, R2 \n\
	STRB R0, [R2] \n\
	MOVS R0, 0x28 \n\
	ADDS R0, R0, R7 \n\
	MOV R8, R0 \n\
	MOVS R0, 0x1 \n\
	RSBS R0, R0, 0x0 \n\
	MOV R1, R8 \n\
	STRB R0, [R1] \n\
	LDR R6, =D_03004b20 \n\
	ADDS R4, R6, 0x2 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	B branch_0802476c \n\
 \n\
.ltorg \n\
branch_0802476c: \n\
	BL func_0804e0c0 \n\
	ADDS R1, R0, 0x0 \n\
	LDR R2, =D_03005380 \n\
	LDR R0, [R2] \n\
	LSLS R1, R1, 0x10 \n\
	LSRS R1, R1, 0x10 \n\
	ADDS R2, R6, 0x0 \n\
	ADDS R3, R4, 0x0 \n\
	BL func_0804e188 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOVS R2, 0x0 \n\
	LDRSH R1, [R7, R2] \n\
	ADDS R4, R7, 0x0 \n\
	ADDS R4, 0xe \n\
	ADDS R5, R7, 0x0 \n\
	ADDS R5, 0x10 \n\
	ADDS R2, R4, 0x0 \n\
	ADDS R3, R5, 0x0 \n\
	BL func_0804db44 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOVS R2, 0x6 \n\
	LDRSH R1, [R7, R2] \n\
	ADDS R2, R4, 0x0 \n\
	ADDS R3, R5, 0x0 \n\
	BL func_0804db44 \n\
	LDR R1, =D_03005380 \n\
	LDR R0, [R1] \n\
	MOVS R2, 0x8 \n\
	LDRSH R1, [R7, R2] \n\
	ADDS R2, R4, 0x0 \n\
	ADDS R3, R5, 0x0 \n\
	BL func_0804db44 \n\
	LDRH R0, [R6] \n\
	STRH R0, [R7, 0xe] \n\
	LDRH R0, [R6, 0x2] \n\
	STRH R0, [R7, 0x10] \n\
	BL func_0800c3b8 \n\
	LSLS R0, R0, 0x10 \n\
	LSRS R0, R0, 0x10 \n\
	MOVS R1, 0x4 \n\
	MOVS R2, 0x80 \n\
	MOVS R3, 0x1e \n\
	BL func_0800a204 \n\
	ADDS R4, R0, 0x0 \n\
	BL func_08018630 \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xf \n\
	BL func_0800acb0 \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0x0 \n\
	BL func_0800acbc \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0x1 \n\
	BL func_0800acd8 \n\
	LDR R0, =D_030055d0 \n\
	LDR R0, [R0] \n\
	LDRB R0, [R0] \n\
	LDR R6, [SP, 0x18] \n\
	LDR R7, [SP, 0x1c] \n\
	LDR R1, [SP, 0x20] \n\
	STR R1, [SP, 0x24] \n\
	CMP R0, 0x1 \n\
	BEQ branch_0802482e \n\
	CMP R0, 0x1 \n\
	BGT branch_08024818 \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024822 \n\
	B branch_08024856 \n\
 \n\
.ltorg \n\
branch_08024818: \n\
	CMP R0, 0x2 \n\
	BEQ branch_0802483a \n\
	CMP R0, 0x3 \n\
	BEQ branch_08024846 \n\
	B branch_08024856 \n\
 \n\
branch_08024822: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xa \n\
	MOVS R2, 0x30 \n\
	BL func_0800ac68 \n\
	B branch_08024856 \n\
 \n\
branch_0802482e: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xc \n\
	MOVS R2, 0xa \n\
	BL func_0800ac68 \n\
	B branch_08024856 \n\
 \n\
branch_0802483a: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xa \n\
	MOVS R2, 0x20 \n\
	BL func_0800ac68 \n\
	B branch_08024856 \n\
 \n\
branch_08024846: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xa \n\
	MOVS R2, 0x30 \n\
	BL func_0800ac68 \n\
	MOVS R0, 0x1 \n\
	BL func_0801858c \n\
 \n\
branch_08024856: \n\
	MOVS R0, 0xf3 \n\
	MOVS R1, 0x0 \n\
	BL func_08017338 \n\
	LDR R5, =D_030055d0 \n\
	LDR R0, [R5] \n\
	MOVS R2, 0xe0 \n\
	LSLS R2, R2, 0x2 \n\
	ADDS R0, R0, R2 \n\
	MOVS R4, 0x0 \n\
	STRB R4, [R0] \n\
	LDR R0, [R5] \n\
	LDR R1, =0x00000396 \n\
	ADDS R2, R0, R1 \n\
	LDR R1, =0x0000ffff \n\
	STRH R1, [R2] \n\
	ADDS R0, 0x4 \n\
	BL func_0802a9b4 \n\
	BL func_08024ed0 \n\
	MOVS R0, 0x0 \n\
	BL func_080174e8 \n\
	LDR R2, [SP, 0x14] \n\
	CMP R2, 0x1 \n\
	BEQ branch_080248be \n\
	CMP R2, 0x1 \n\
	BLO branch_080248a8 \n\
	CMP R2, 0x2 \n\
	BEQ branch_08024910 \n\
	CMP R2, 0x3 \n\
	BEQ branch_08024950 \n\
	B branch_08024966 \n\
 \n\
.ltorg \n\
branch_080248a8: \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1e \n\
	STR R0, [SP, 0x4] \n\
	STR R4, [SP, 0x8] \n\
	MOVS R0, 0x2 \n\
	MOVS R1, 0x1 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL func_0800e0a0 \n\
	B branch_08024966 \n\
 \n\
branch_080248be: \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1e \n\
	STR R0, [SP, 0x4] \n\
	LDR R0, [SP, 0x14] \n\
	STR R0, [SP, 0x8] \n\
	MOVS R0, 0x2 \n\
	MOVS R1, 0x1 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL func_0800e0a0 \n\
	LDR R0, =D_03005380 \n\
	LDR R0, [R0] \n\
	LDR R1, =D_088c2f58 \n\
	MOVS R2, 0x30 \n\
	STR R2, [SP] \n\
	LDR R2, =0x000048c8 \n\
	STR R2, [SP, 0x4] \n\
	LDR R2, [SP, 0x14] \n\
	STR R2, [SP, 0x8] \n\
	STR R4, [SP, 0xc] \n\
	MOVS R2, 0x80 \n\
	LSLS R2, R2, 0x8 \n\
	STR R2, [SP, 0x10] \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x38 \n\
	BL func_0804d160 \n\
	LDR R1, [R5] \n\
	MOVS R2, 0xe5 \n\
	LSLS R2, R2, 0x2 \n\
	ADDS R1, R1, R2 \n\
	STRH R0, [R1] \n\
	B branch_08024966 \n\
 \n\
.ltorg \n\
branch_08024910: \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1e \n\
	STR R0, [SP, 0x4] \n\
	MOVS R0, 0x1 \n\
	STR R0, [SP, 0x8] \n\
	MOVS R0, 0x2 \n\
	MOVS R1, 0x1 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL func_0800e0a0 \n\
	MOVS R2, 0x6c \n\
	RSBS R2, R2, 0x0 \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1f \n\
	STR R0, [SP, 0x4] \n\
	STR R4, [SP, 0x8] \n\
	MOVS R0, 0x3 \n\
	MOVS R1, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL func_0800e0a0 \n\
	BL func_08023a18 \n\
	MOVS R1, 0x40 \n\
	RSBS R1, R1, 0x0 \n\
	MOVS R2, 0x14 \n\
	RSBS R2, R2, 0x0 \n\
	MOVS R0, 0x1 \n\
	BL func_0800e058 \n\
	B branch_08024966 \n\
 \n\
branch_08024950: \n\
	MOVS R0, 0x1 \n\
	STRB R0, [R6] \n\
	STRB R0, [R7] \n\
	LDR R1, [SP, 0x24] \n\
	STRB R0, [R1] \n\
	MOV R2, R10 \n\
	STRB R0, [R2] \n\
	MOV R1, R9 \n\
	STRB R0, [R1] \n\
	MOV R2, R8 \n\
	STRB R0, [R2] \n\
 \n\
branch_08024966: \n\
	ADD SP, 0x28 \n\
	POP {R3, R4, R5} \n\
	MOV R8, R3 \n\
	MOV R9, R4 \n\
	MOV R10, R5 \n\
	POP {R4, R5, R6, R7} \n\
	POP {R0} \n\
	BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
