

/* MIDI LIBRARY ASSEMBLY - READ PCM (NO RESAMPLE) */


@ Read PCM Samples - Base Sample Rate
@ This function is called when the same samplerate as the base SampleData is desired.
@ No resampling occurs, resulting in very fast speeds. Instruments can force streams to
@ use this method if given set as the FIXED_PCM type (char 'F'). Using this bypass may
@ cause undesired results if the samplerate of the base SampleData does not match the
@ audio system's output samplerate.
    @ R0: Batch Size (in 32-bit Words)
    @ R1: SampleStream Pointer
unaligned_thumb_func_start midi_asm_read_pcm_fixed
    orrs    r0, r0
    bne     branch_08048ba2
    bx      lr

branch_08048ba2:
    push    {r4, r5, r6, r7, lr}
    mov     r4, r8
    mov     r5, r9
    mov     r6, r10
    mov     r7, r11
    push    {r4, r5, r6, r7}
    mov     r4, r12
    push    {r4}
    adds    r5, r0, #0
    lsls    r5, r5, #2
    ldr     r6, _08048d4c   @ gMidiSampleScratch
    ldr     r6, [r6, #0]
    ldr     r0, [r1, #4]
    ldr     r7, [r1, #12]
    lsrs    r7, r7, #14
    adds    r7, r7, r0
    ldr     r3, [r1, #16]
    lsrs    r3, r3, #14
    ldr     r2, [r1, #20]
    lsrs    r2, r2, #14
    subs    r3, r3, r2
    adds    r2, r2, r0
    mov     r10, r2
    mov     r11, r3
    movs    r0, #3
    ldrsb   r2, [r1, r0]
    movs    r0, #2
    ldrsb   r3, [r1, r0]
    ldrb    r0, [r1, #1]
    ldr     r4, _08048d50   @ gMidiSamplerGain
    ldrh    r4, [r4, #0]
    adds    r0, r0, r4
    muls    r2, r0
    asrs    r2, r2, #7
    muls    r3, r0
    asrs    r3, r3, #7
    mov     r8, r2
    mov     r9, r3
    push    {r1}
    movs    r0, #FUNC_INDEX_READ_PCM_FIXED
    bl      midi_asm_read_pcm_fixed_call_arm
    pop     {r1}
    ldrb    r2, [r1, #0]
    movs    r3, #1
    bics    r2, r3
    orrs    r2, r0
    strb    r2, [r1, #0]
    ldr     r0, [r1, #4]
    subs    r7, r7, r0
    lsls    r7, r7, #14
    str     r7, [r1, #12]
    pop     {r4}
    mov     r12, r4
    pop     {r4, r5, r6, r7}
    mov     r8, r4
    mov     r9, r5
    mov     r10, r6
    mov     r11, r7
    pop     {r4, r5, r6, r7}
    pop     {r0}
    bx      r0


@ Read PCM Samples - Base Sample Rate (ARM Stereo)
arm_func_start midi_arm_stereo_read_pcm_fixed
    str     lr, _08048d40
branch_08048c24:
    ands    r0, r7, #3
    bne     branch_08048cfc
    sub     r4, r10, r7
    cmp     r4, r5
    movcs   r4, r5
    lsrs    r4, r4, #2
    beq     branch_08048cfc
    sub     r5, r5, r4, lsl #2
    tst     r4, #1
    addne   r4, r4, #1
    bne     branch_08048ca0
branch_08048c50:
    ldr     r12, [r7], #4
    ldm     r6, {r0, r1, r2, r3}
    lsl     lr, r12, #24
    asr     lr, lr, #24
    mla     r0, r8, lr, r0
    mla     r1, r9, lr, r1
    lsl     lr, r12, #16
    asr     lr, lr, #24
    mla     r2, r8, lr, r2
    mla     r3, r9, lr, r3
    stmia   r6!, {r0, r1, r2, r3}
    ldm     r6, {r0, r1, r2, r3}
    lsl     lr, r12, #8
    asr     lr, lr, #24
    mla     r0, r8, lr, r0
    mla     r1, r9, lr, r1
    asr     lr, r12, #24
    mla     r2, r8, lr, r2
    mla     r3, r9, lr, r3
    stmia   r6!, {r0, r1, r2, r3}
branch_08048ca0:
    ldr     r12, [r7], #4
    ldm     r6, {r0, r1, r2, r3}
    lsl     lr, r12, #24
    asr     lr, lr, #24
    mla     r0, r8, lr, r0
    mla     r1, r9, lr, r1
    lsl     lr, r12, #16
    asr     lr, lr, #24
    mla     r2, r8, lr, r2
    mla     r3, r9, lr, r3
    stmia   r6!, {r0, r1, r2, r3}
    ldm     r6, {r0, r1, r2, r3}
    lsl     lr, r12, #8
    asr     lr, lr, #24
    mla     r0, r8, lr, r0
    mla     r1, r9, lr, r1
    asr     lr, r12, #24
    mla     r2, r8, lr, r2
    mla     r3, r9, lr, r3
    stmia   r6!, {r0, r1, r2, r3}
    subs    r4, r4, #2
    bne     branch_08048c50
    b       branch_08048d14
branch_08048cfc:
    ldrsb   r12, [r7], #1
    ldm     r6, {r0, r1}
    mla     r0, r8, r12, r0
    mla     r1, r9, r12, r1
    stmia   r6!, {r0, r1}
    sub     r5, r5, #1
branch_08048d14:
    cmp     r7, r10
    bcc     branch_08048d2c
    mov     r0, #0
    cmp     r11, #0
    beq     branch_08048d38
    add     r7, r7, r11
branch_08048d2c:
    cmp     r5, #0
    bne     branch_08048c24
    mov     r0, #1
branch_08048d38:
    ldr     lr, _08048d40
    bx      lr

.balign 4, 0
_08048d40: .word 0

glabel midi_arm_stereo_read_pcm_fixed_end


@ Read PCM Samples - Base Sample Rate (ARM Mono)
arm_func_start midi_arm_mono_read_pcm_fixed

glabel midi_arm_mono_read_pcm_fixed_end


@ Read PCM Samples - Base Sample Rate
    @ Align THUMB Function Call
unaligned_thumb_func_start midi_asm_read_pcm_fixed_call_arm
    ldr     r1, _08048d54   @ midi_asm_call_arm_func_id
    adds    r1, #1
    bx      r1

.balign 4, 0
_08048d4c: .word gMidiSampleScratch
_08048d50: .word gMidiSamplerGain
_08048d54: .word midi_asm_call_arm_func_id
