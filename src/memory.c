#include "memory.h"

static u16 sEWRAMSaveBufferStart;
static u16 sEWRAMSaveBufferEnd;
static u16 sEWRAMMemoryHeapStart;
static u16 sEWRAMMemoryHeapLength;
static s32 unused_03000094; // unknown


/* SAVE/MEMORY */


// Initiate the size and positions of the save buffer and memory heap.
void init_ewram(void) {
    u16 ewramStart = 4;
    u16 ewramEnd = 0x10000 - 4;
    u16 saveBufferLength = SAVE_BUFFER_SIZE / 4;
	u16 saveEnd, heapLength;

    sEWRAMSaveBufferStart = ewramStart;
    saveEnd = ewramStart + saveBufferLength;
	heapLength = ewramEnd - saveBufferLength;
    sEWRAMSaveBufferEnd = saveEnd;

    sEWRAMMemoryHeapStart = saveEnd;
    sEWRAMMemoryHeapLength = heapLength;
}


void *get_save_buffer_start(void) {
	return (void *)(ExternWorkRAMBase + (sEWRAMSaveBufferStart * 4));
}


void *get_save_buffer_end(void) {
	return (void *)(ExternWorkRAMBase + (sEWRAMSaveBufferEnd * 4));
}


void *get_memory_heap_start(void) {
	return (void *)(ExternWorkRAMBase + (sEWRAMMemoryHeapStart * 4));
}


u32 get_memory_heap_length(void) {
	return sEWRAMMemoryHeapLength * 4;
}


s32 func_08000794(s32 *buffer, u32 bufferSize) {
	u32 length, remainder;
	u32 i;
	s32 total = 0;

    bufferSize /= 4;
    length = bufferSize / 16;
    remainder = bufferSize - (length * 16);

	for (i = 0; i < length; i++) {
		total += buffer[0];
		total += buffer[1];
		total += buffer[2];
		// total += buffer[3]; // lmao why is this missing
		total += buffer[4];
		total += buffer[5];
		total += buffer[6];
		total += buffer[7];
		total += buffer[8];
		total += buffer[9];
		total += buffer[10];
		total += buffer[11];
		total += buffer[12];
		total += buffer[13];
		total += buffer[14];
		total += buffer[15];
        buffer += 16;
	}

	for (i = 0; i < remainder; i++) {
		total += buffer[i];
	}

	return total;
}


// inconsistent with other functions, might be able to figure out once func_0804c96c is known (lib function?)
void func_08000804(void) {
    func_0804c96c();
    D_030046a8 = get_save_buffer_start();
}


void func_0800081c(void) {
    struct SaveBuffer *buffer = D_030046a8;

    dma3_fill(0, buffer, SAVE_BUFFER_SIZE, 0x20, 0x100);
    strcpy(buffer->header.RIQ, D_08935fbc);
    buffer->header.bufferSize = SAVE_BUFFER_SIZE;
    buffer->header.checksum = 0;
    buffer->header.unkC = 0x26040000;
    func_080102f4();
}


s32 func_08000868(s32 *cartRAM) {
    struct SaveBuffer *buffer = D_030046a8;

    D_030064c8(cartRAM, (s32 *)buffer, SAVE_BUFFER_SIZE);

    if (func_0800820c(buffer->header.RIQ, D_08935fbc, 4)) {
        return 1;
    }

    if ((func_08000794((s32 *)D_030046a8, SAVE_BUFFER_SIZE) - buffer->header.checksum) != buffer->header.checksum) {
        return 2;
    }

    return 0;
}


s32 func_080008bc(void) {
	return func_08000868(D_08935fb4); // CartRAMBase
}


s32 func_080008d0(void) {
	return func_08000868(D_08935fb8); // CartRAMBase + 0x4000
}


void func_080008e4(s32 *cartRAM) {
    struct SaveBuffer *buffer = D_030046a8;

    buffer->header.checksum = 0;
    buffer->header.checksum = func_08000794((s32 *)D_030046a8, SAVE_BUFFER_SIZE);

    func_0804c8b0(D_030046a8, cartRAM, SAVE_BUFFER_SIZE);
}


// types here are probably weird, some kind of offset calculator
s32 func_0800091c(void *ptr) {
	return (u32)ptr - (u32)D_030046a8;
}


void func_08000928(s32 *cartRAM) {
    struct SaveBuffer *buffer = D_030046a8;
    s32 bufferOffset = func_0800091c(buffer); // isn't this literally always 0

    buffer->header.checksum = 0;
    buffer->header.checksum = func_08000794((s32 *)D_030046a8, SAVE_BUFFER_SIZE);

    func_0804c8b0((void *)((u32)D_030046a8 + bufferOffset), (void *)((u32)cartRAM + bufferOffset), 0x10);
}


void func_0800096c(s32 *buffer, s32 offset) {
    s32 bufferOffset;

    func_08000928(D_08935fb4); // CartRAMBase
    bufferOffset = func_0800091c(buffer);

    func_0804c8b0((void *)((u32)D_030046a8 + bufferOffset), (void *)((u32)D_08935fb4 + bufferOffset), offset);
}


void func_080009a0(void) {
	func_080008e4(D_08935fb4); // CartRAMBase
}


void func_080009b4(void) {
	func_080008e4(D_08935fb8); // CartRAMBase + 0x4000
}


void func_080009c8_stub(void) {
}


void func_080009cc_stub(void) {
}


s32 func_080009d0(s16 *arg1) {
    if ((func_0800820c(arg1, D_08935fc4, 4) == 0) && (arg1[2] == arg1[3])) {
        return arg1[2];
    }
    return 0;
}


s32 func_080009fc(void) {
	return 0;
}
