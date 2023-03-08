.section .text
.syntax unified

.include "include/gba.inc"

@ RLE Decompression
arm_func_start func_08000a00
    push    {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    mov     r5, #0xff
    ldr     r12, _8000b1c
    ldr     r4, _8000b20
    ldrb    r4, [r4]
    cmp     r4, #0
    beq     branch_08000a30
    ldr     r1, _8000b24
    ldm     r1, {r0, r6, r7, r8, r9, lr}
    mov     r11, r0
    str     r11, _8000b28
    bx      lr
branch_08000a30:
    cmp     r0, #0
    beq     branch_08000b14
    mov     r6, r0
    mov     r7, r1
    mov     r9, r2
    lsr     r8, r3, #0x10
    lsl     r11, r3, #0x10
    lsr     r11, r11, #0xe
    str     r11, _8000b28
branch_08000a54:
    str     r6, [r12]
    str     r7, [r12, #4]
    ldrb    r10, [r9], #1
    cmp     r10, #0
    bleq    branch_08000acc
    add     r6, r6, r10, lsl #1
    add     r7, r7, r10, lsl #1
    subs    r11, r11, r10, lsl #1
    orr     r10, r10, #0x80000000
    str     r10, [r12, #8]
    bllt    branch_08000aec
    subs    r8, r8, #1
    beq     branch_08000b00
    sub     r10, r7, #2
    str     r10, [r12]
    str     r7, [r12, #4]
    ldrb    r10, [r9], #1
    cmp     r10, #0
    bleq    branch_08000ac0
    add     r7, r7, r10, lsl #1
    subs    r11, r11, r10, lsl #1
    orr     r10, r10, #0x81000000
    str     r10, [r12, #8]
    bllt    branch_08000aec
    subs    r8, r8, #1
    beq     branch_08000b00
    b       branch_08000a54
branch_08000ac0:
    orr     r10, r5, #0x81000000
    sub     lr, lr, #24
    b       branch_08000ad8
branch_08000acc:
    add     r6, r6, r5, lsl #1
    orr     r10, r5, #0x80000000
    sub     lr, lr, #20
branch_08000ad8:
    add     r7, r7, r5, lsl #1
    str     r10, [r12, #8]
    subs    r11, r11, r5, lsl #1
    blt     branch_08000aec
    bx      lr
branch_08000aec:
    ldr     r0, _8000b28
    ldr     r1, _8000b24
    stm     r1, {r0, r6, r7, r8, r9, lr}
    mov     r1, #1
    b       branch_08000b04
branch_08000b00:
    mov     r1, #0
branch_08000b04:
    ldr     r2, _8000b20
    strb    r1, [r2]
    ldr     r0, _8000b28
    sub     r0, r0, r11
branch_08000b14:
    pop     {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    bx      lr
_8000b1c:   .word REG_DMA3SAD
_8000b20:   .word D_030053b0
_8000b24:   .word D_03005390
_8000b28:   .word 0
glabel func_08000a00_end

@ ? (Mathematics)
arm_func_start func_08000b2c
    mov     r12, r0
    mov     r0, #0
    mov     r1, #0
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x1e
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x1c
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x1a
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x18
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x16
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x14
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x12
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0x10
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0xe
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0xc
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #0xa
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #8
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #6
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #4
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #2
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, ip
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    bx      lr
glabel func_08000b2c_end

@ Fast Unsigned Division
arm_func_start fast_udivsi3_rom
    mov     r2, #0
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adcs    r0, r0, r0
    adc     r2, r2, r2
    cmp     r2, r1
    subcs   r2, r2, r1
    adc     r0, r0, r0
    bx      lr
glabel fast_udivsi3_rom_end

@ Huffman Decompression
arm_func_start func_08000f08
    push    {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    stmfd   sp!, {r0}
    ldm     r0, {r1, r2, r3, r4, r5, r6, r7, r8}
branch_08000f14:
    rors    r4, r4, #1
    bcs     branch_08000f4c
    ldrh    r0, [r1], #2
    strh    r0, [r2], #2
    subs    r3, r3, #0x10000
    blt     branch_0800110c
    sub     r8, r8, #8
branch_08000f30:
    sub     r3, r3, #1
    tst     r3, #0x1f
    orreq   r3, r3, #0x20
    ldreq   r4, [r6], #4
    cmp     r8, #0
    bge     branch_08000f14
    b       branch_08001118
branch_08000f4c:
    rors    r5, r5, #1
    bcs     branch_08001034
    mov     r9, #4
    mov     r10, #0xf
    ldrh    r11, [r1], #2
branch_08000f60:
    ldrh    r12, [r1], #2
    and     r0, r9, r12, ror #0x1e
    and     lr, r10, r11, lsr r0
    and     r0, r9, r12, ror #0x1f
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, ip
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r12, ror #1
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #0xc
    strh    lr, [r2], #2
    and     r0, r9, r12, ror #2
    and     lr, r10, r11, lsr r0
    and     r0, r9, r12, ror #3
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, r12, ror #4
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r12, ror #5
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #0xc
    strh    lr, [r2], #2
    and     r0, r9, r12, ror #6
    and     lr, r10, r11, lsr r0
    and     r0, r9, r12, ror #7
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, r12, ror #8
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r12, ror #9
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #0xc
    strh    lr, [r2], #2
    and     r0, r9, r12, ror #0xa
    and     lr, r10, r11, lsr r0
    and     r0, r9, r12, ror #0xb
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, r12, ror #0xc
branch_0800100c:
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r12, ror #0xd
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #0xc
    strh    lr, [r2], #2
    sub     r8, r8, #0xc
    subs    r11, r11, #0x100
    bge     branch_08000f60
    b       branch_080010f0
branch_08001034:
    stmfd   sp!, {r4}
    mov     r9, #0xc
    mov     r10, #0xf
    ldrh    r11, [r1], #2
    ldrh    r4, [r1], #2
    and     r0, r9, r4, lsr #6
    and     lr, r10, r11, lsr r0
    and     r0, r9, r4, lsr #8
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, r4, lsr #10
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r4, lsr #0xc
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #0xc
    strh    lr, [r2], #2
    and     r4, r4, #0xff
branch_0800107c:
    ldrh    r12, [r1], #2
    and     r0, r9, r12, ror #0x1e
    and     lr, r10, r11, lsr r0
    and     r0, r9, ip
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, r12, ror #2
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r12, ror #4
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #0xc
    strh    lr, [r2], #2
    and     r0, r9, r12, ror #6
    and     lr, r10, r11, lsr r0
    and     r0, r9, r12, ror #8
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #4
    and     r0, r9, r12, ror #0xa
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #8
    and     r0, r9, r12, ror #0xc
    and     r0, r10, r11, lsr r0
    orr     lr, lr, r0, lsl #12
    strh    lr, [r2], #2
    sub     r8, r8, #0x10
    subs    r4, r4, #1
    bge     branch_0800107c
    ldmfd   sp!, {r4}
branch_080010f0:
    subs    r3, r3, #0x10000
    blt     branch_0800110c
    sub     r3, r3, #0x100
    tst     r3, #0x1f00
    orreq   r3, r3, #0x2000
    ldreq   r5, [r7], #4
    b       branch_08000f30
branch_0800110c:
    ldmfd   sp!, {r0}
    mov     r0, #1
    b       branch_08001124
branch_08001118:
    ldmfd   sp!, {r0}
    stm     r0, {r1, r2, r3, r4, r5, r6, r7}
    mov     r0, #0
branch_08001124:
    pop     {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    bx      lr
glabel func_08000f08_end

@ Memory Heap Allocation
arm_func_start mem_heap_alloc_block_rom
    stmfd   sp!, {r4}
    mov     r4, #0
    mov     r3, r4
branch_08001138:
    add     r3, r3, r4, lsr #0x10
    cmp     r3, r1
    bcs     branch_08001160
    ldr     r4, [r0, r3, lsl #2]
    tst     r4, #0x8000
    bne     branch_08001138
    cmp     r2, r4, lsr #0x10
    bhi     branch_08001138
    mov     r0, r3
    b       branch_08001164
branch_08001160:
    mvn     r0, #0
branch_08001164:
    ldmfd   sp!, {r4}
    bx      lr
glabel mem_heap_alloc_block_rom_end

@ Text Printer Glyph Writing
arm_func_start func_0800116c
    push    {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    ldr     r9, [r0]
    ldr     r10, [r0, #4]
    ldr     r11, [r0, #8]
    ldr     r0, [r0, #0xc]
    mov     r12, #0x11
    orr     r12, r12, r12, lsl #8
    orr     r12, r12, r12, lsl #0x10
    cmp     r0, #2
    addlt   r9, r9, #0x10
    blt     branch_080011ac
    ldm     r9, {r5, r6, r7, r8}
    bl      branch_080011f4
    bl      branch_080011f4
    stm     r9, {r5, r6, r7, r8}
    sub     r9, r9, #0x30
branch_080011ac:
    ldm     r9, {r5, r6, r7, r8}
    bl      branch_080011f4
    bl      branch_080011f4
    stm     r9, {r5, r6, r7, r8}
    sub     r9, r9, #0x30
    add     r9, r9, #0x3e0
    ldm     r9, {r5, r6, r7, r8}
    bl      branch_080011f4
    bl      branch_080011f4
    stm     r9, {r5, r6, r7, r8}
    sub     r9, r9, #0x30
    ldm     r9, {r5, r6, r7, r8}
    bl      branch_080011f4
    bl      branch_080011f4
    stm     r9, {r5, r6, r7, r8}
    sub     r9, r9, #0x30
    pop     {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    bx      lr
branch_080011f4:
    ldr     r0, [r10], #4
    and     r1, r12, r0
    and     r2, r12, r0, lsr #1
    and     r3, r12, r0, lsr #2
    and     r4, r12, r0, lsr #3
    orr     r5, r5, r1, lsl fp
    orr     r6, r6, r2, lsl fp
    orr     r7, r7, r3, lsl fp
    orr     r8, r8, r4, lsl fp
    stm     r9, {r5, r6, r7, r8}
    add     r9, r9, #0x20
    rsb     r11, r11, #0x20
    ldm     r9, {r5, r6, r7, r8}
    orr     r5, r5, r1, lsr fp
    orr     r6, r6, r2, lsr fp
    orr     r7, r7, r3, lsr fp
    orr     r8, r8, r4, lsr fp
    rsb     r11, r11, #0x20
    bx      lr
glabel func_0800116c_end

@ Palette Interpolation (Two Palettes)
arm_func_start func_08001240
    push    {r4, r5, r6, r7, r8, r9, r10}
    ldr     r3, [r0]
    ldr     r4, [r0, #4]
    ldr     r5, [r0, #8]
    ldr     r6, [r0, #0xc]
    ldr     r7, [r0, #0x10]
    mov     r10, #31
branch_0800125c:
    ldrh    r8, [r3], #2
    ldrh    r9, [r4], #2
    and     r0, r10, r8
    and     r1, r10, r9
    sub     r1, r1, r0
    mul     r1, r7, r1
    add     r2, r0, r1, asr #8
    and     r0, r10, r8, lsr #5
    and     r1, r10, r9, lsr #5
    sub     r1, r1, r0
    mul     r1, r7, r1
    add     r0, r0, r1, asr #8
    add     r2, r2, r0, lsl #5
    and     r0, r10, r8, lsr #10
    and     r1, r10, r9, lsr #10
    sub     r1, r1, r0
    mul     r1, r7, r1
    add     r0, r0, r1, asr #8
    add     r2, r2, r0, lsl #10
    strh    r2, [r5], #2
    subs    r6, r6, #1
    bne     branch_0800125c
    pop     {r4, r5, r6, r7, r8, r9, r10}
    bx      lr
glabel func_08001240_end

@ Palette Interpolation (Single-Colour Source)
arm_func_start func_080012bc
    push    {r4, r5, r6, r7, r8, r9, r10}
    ldr     r2, [r0]
    ldr     r4, [r0, #4]
    ldr     r5, [r0, #8]
    ldr     r6, [r0, #0xc]
    ldr     r7, [r0, #0x10]
    mov     r10, #31
    and     r3, r10, r2, lsr #5
    and     r8, r10, r2, lsr #10
    and     r2, r10, r2
branch_080012e4:
    ldrh    r9, [r4], #2
    and     r0, r10, r9
    sub     r0, r0, r2
    mul     r0, r7, r0
    add     r1, r2, r0, asr #8
    and     r0, r10, r9, lsr #5
    sub     r0, r0, r3
    mul     r0, r7, r0
    add     r0, r3, r0, asr #8
    add     r1, r1, r0, lsl #5
    and     r0, r10, r9, lsr #10
    sub     r0, r0, r8
    mul     r0, r7, r0
    add     r0, r8, r0, asr #8
    add     r1, r1, r0, lsl #10
    strh    r1, [r5], #2
    subs    r6, r6, #1
    bne     branch_080012e4
    pop     {r4, r5, r6, r7, r8, r9, r10}
    bx      lr
glabel func_080012bc_end

@ SRAM Library
@ Write 32-bit Integers to SRAM
arm_func_start write_int_sram_fast_rom
    ldr     r12, [r0], #4
    strb    r12, [r1], #1
    lsr     r12, r12, #8
    strb    r12, [r1], #1
    lsr     r12, r12, #8
    strb    r12, [r1], #1
    lsr     r12, r12, #8
    strb    r12, [r1], #1
    subs    r2, r2, #1
    bne     write_int_sram_fast_rom
    bx      lr
glabel write_int_sram_fast_rom_end

.end
