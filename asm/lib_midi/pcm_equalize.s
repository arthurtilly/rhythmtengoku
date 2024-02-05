

/* MIDI LIBRARY ASSEMBLY - APPLY EQ */


@ Apply Equalization Filter
@ This function is only implemented in stereo mode. Calling this function in mono mode
@ will produce undefined results (likely resulting in a crash or infinite loop).
    @ R0: Batch Size (in 32-bit Words)
    @ R1: Equalizer Area Pointer
unaligned_thumb_func_start midi_asm_apply_eq
    orrs    r0, r0
    bne     branch_08048fc6
    bx      lr

branch_08048fc6:
    push    {r4, r5, r6, r7, lr}
    ldrb    r4, [r1, #0]
    adds    r5, r0, #0
    ldr     r2, [r1, #4]
    ldr     r3, [r1, #8]
    ldr     r6, _0804913c   @ gMidiSampleScratch
    ldr     r6, [r6, #0]
    push    {r1}
    movs    r0, #FUNC_INDEX_APPLY_EQ
    bl      midi_asm_apply_eq_call_arm
    pop     {r1}
    str     r2, [r1, #4]
    str     r3, [r1, #8]
    pop     {r4, r5, r6, r7, pc}


@ Apply Equalization Filter (ARM Stereo)
arm_func_start midi_arm_stereo_apply_eq
    push    {r8, r9, r10, r11, lr}
    mov     lr, r5
    mov     r12, r6
    cmp     r4, #0x80
    bcs     branch_08049084
    lsl     r4, r4, #1
    mov     r0, r4
    rsb     r1, r4, #0x100
branch_08049004:
    ldm     r12, {r4, r5, r6, r7, r8, r9, r10, r11}
    mul     r4, r1, r4
    mla     r4, r0, r2, r4
    asr     r4, r4, #8
    mul     r5, r1, r5
    mla     r5, r0, r3, r5
    asr     r5, r5, #8
    mul     r6, r1, r6
    mla     r6, r0, r4, r6
    asr     r6, r6, #8
    mul     r7, r1, r7
    mla     r7, r0, r5, r7
    asr     r7, r7, #8
    mul     r8, r1, r8
    mla     r8, r0, r6, r8
    asr     r8, r8, #8
    mul     r9, r1, r9
    mla     r9, r0, r7, r9
    asr     r9, r9, #8
    mul     r10, r1, r10
    mla     r10, r0, r8, r10
    asr     r10, r10, #8
    mul     r11, r1, r11
    mla     r11, r0, r9, r11
    asr     r11, r11, #8
    stmia   r12!, {r4, r5, r6, r7, r8, r9, r10, r11}
    mov     r2, r10
    mov     r3, r11
    subs    lr, lr, #1
    bne     branch_08049004
    pop     {r8, r9, r10, r11, lr}
    bx      lr

branch_08049084:
    sub     r4, r4, #0x80
    lsl     r4, r4, #1
    mov     r0, r4
    rsb     r1, r4, #0x100
branch_08049094:
    ldm     r12, {r4, r5, r6, r7}
    mul     r8, r1, r4
    mla     r8, r0, r2, r8
    sub     r4, r4, r8, asr #8
    asr     r2, r8, #8
    mul     r8, r1, r5
    mla     r8, r0, r3, r8
    sub     r5, r5, r8, asr #8
    asr     r3, r8, #8
    mul     r8, r1, r6
    mla     r8, r0, r2, r8
    sub     r6, r6, r8, asr #8
    asr     r2, r8, #8
    mul     r8, r1, r7
    mla     r8, r0, r3, r8
    sub     r7, r7, r8, asr #8
    asr     r3, r8, #8
    stmia   r12!, {r4, r5, r6, r7}
    ldm     r12, {r4, r5, r6, r7}
    mul     r8, r1, r4
    mla     r8, r0, r2, r8
    sub     r4, r4, r8, asr #8
    asr     r2, r8, #8
    mul     r8, r1, r5
    mla     r8, r0, r3, r8
    sub     r5, r5, r8, asr #8
    asr     r3, r8, #8
    mul     r8, r1, r6
    mla     r8, r0, r2, r8
    sub     r6, r6, r8, asr #8
    asr     r2, r8, #8
    mul     r8, r1, r7
    mla     r8, r0, r3, r8
    sub     r7, r7, r8, asr #8
    asr     r3, r8, #8
    stmia   r12!, {r4, r5, r6, r7}
    subs    lr, lr, #1
    bne     branch_08049094
    pop     {r8, r9, r10, r11, lr}
    bx      lr

glabel midi_arm_stereo_apply_eq_end


@ Apply Equalization Filter
    @ Align THUMB Function Call
unaligned_thumb_func_start midi_asm_apply_eq_call_arm
    ldr     r1, _08049140   @ midi_asm_call_arm_func_id
    adds    r1, #1
    bx      r1

.balign 4, 0
_0804913c: .word gMidiSampleScratch
_08049140: .word midi_asm_call_arm_func_id
