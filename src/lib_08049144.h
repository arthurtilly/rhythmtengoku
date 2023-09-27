#pragma once

#include "global.h"
#include "sound.h"

/* INTERRUPT_DMA2 */

extern void func_08049144(void); // INTERRUPT_DMA2

/* DIRECTSOUND STREAM OPERATIONS */

extern void func_0804930c(u32, struct SampleData *); // Initialise Stream
extern void func_08049394(u32);             // Reset Stream
extern void func_080493b0(u32);             // Close Stream
extern void func_080493c8(u32, u32, u32);   // Set Panning
extern void func_080493e4(u32, u32);        // Set Volume Envelope
extern void func_080493f4(u32, u32);        // Set Frequency Envelope
extern void func_08049450(u32, u32);        // Set unk0_b2
extern void func_08049470(u32, u32);        // Set unk0_b3

/* DIRECTSOUND OPERATIONS */

extern void func_08049490(u32, u32, u32, volatile s32 *, u32, volatile s32 *, u16, struct SampleStream *); // Initialise DirectSound
extern void func_080497f8(void);                // Update DirectSound
extern void func_08049ad8(void);                // Initialise(?) REG_DMA1CNT & REG_DMA2CNT (unused)
extern void func_08049b34(u32, u32, u32, u32);  // Set Reverb Controllers
extern u32  func_08049b5c(u32);                 // Check If Given SampleStream Active
extern void func_08049b70(u32);                 // Set Filter EQ Position
extern void func_08049b8c(u8);                  // Set Filter EQ High Gain
extern void func_08049bac(void);                // Initialise Filter EQ
extern void func_08049be4(void);                // Reset Filter EQ
extern void func_08049bfc(u32, u32, u32);       // Set Filter EQ

/* MIDI BUS UPDATE OPERATIONS */

extern void func_08049c34(struct MidiBus *, u32);   // Update MidiChannel Modulation
extern void func_08049d08(struct MidiBus *);        // Update MidiChannel Modulation (All)
extern void func_08049d30(struct MidiBus *, u32);   // SoundChannel Note Off
extern void func_08049db8(struct MidiBus *, u32);   // SoundChannel Close
extern void func_08049e3c(struct MidiBus *);        // SoundChannel Note Off (All)
extern void func_08049e64(struct MidiBus *);        // SoundChannel Close (All)

/* MIDI BUS INITIALISATION OPERATIONS */

extern void func_08049e8c(struct MidiBus *, u8);                        // Set MidiBus Priority
extern void func_08049ec4(struct MidiBus *, u8, u16);                   // Set MidiBus Track Volume & Mask
extern void func_08049ecc(struct MidiChannel *);                        // Initialise MidiChannel
extern void func_08049fa0(struct MidiBus *, u32, struct MidiChannel *); // Initialise MidiBus
extern void func_0804a014(struct MidiBus *, const union Instrument *);  // Set MidiBus Sound Bank

/* SOUND CHANNEL OPERATIONS */

extern u32  func_0804a018(struct SoundChannel *);   // Update SoundChannel Pitch
extern u32  func_0804a1f4(struct SoundChannel *);   // Update SoundChannel Volume
extern u32  func_0804a224(struct SoundChannel *);   // Update SoundChannel ADSR
extern void func_0804a2c4(u32);                     // Update PCM SoundChannel
extern void func_0804a334(void);                    // Update PCM SoundChannel (All)
extern void func_0804a360(u32, struct SoundChannel *);  // Stop PCM SoundChannels
extern s32  func_0804a3a0(struct MidiChannel *, u8);    // Get First Active PCM SoundChannel not at ADSR Stage 3.
extern s32  func_0804a3fc(void);                    // Get First Inactive PCM SoundChannel
extern s32  func_0804a434(void);                    // Get PCM SoundChannel with Lowest Volume
extern s32  func_0804a48c(void);                    // Get PCM SoundChannel with Lowest Volume (exclude ADSR)
// extern ? func_0804a4e0(?);                       // Get PCM SoundChannel with Lowest Priority
extern void func_0804a5b4(struct MidiBus *, u32, u8);       // SoundChannel Midi 'Note Off' Event
extern s32  func_0804a628(struct MidiBus *, u32, u8, u8);   // Return First Most Replaceable DirectSound Channel
extern u8   func_0804a65c(u8);                      // Convert PCM SoundChannel Panning to SampleStream Right Volume
extern u8   func_0804a674(u8);                      // Convert PCM SoundChannel Panning to SampleStream Left Volume
extern u32  func_0804a690(struct MidiBus *, u32);   // Get Frequency of Midi Key
extern void func_0804a6b0(struct MidiBus *, u32, u8, u8);   // SoundChannel Midi 'Note On' Event

/* MIDI CHANNEL OPERATIONS */

extern void func_0804aa40(struct MidiBus *, u32, u16);  // Set Pitch Wheel [Evnt_E]
extern void func_0804aa5c(struct MidiBus *, u32, u8);   // Set Volume [Ctrl_07]
extern void func_0804aa7c(struct MidiBus *, u32, u8);   // Set Panning [Ctrl_0A]
extern u8   func_0804aaa4(struct MidiBus *, u32);       // Calculate Panning Envelope
extern void func_0804aae0(struct MidiBus *, u32);       // Update Sample Buffer Panning
extern void func_0804ab88(struct MidiBus *, u32, u8);   // Set Instrument/Patch [Evnt_C]
extern void func_0804aba8(struct MidiBus *, u32, u8);   // Set Expression [Ctrl_0B]
extern void func_0804abc8(struct MidiBus *, u32, u16);  // Set Bank Select? [Ctrl_00; Ctrl_20]
extern void func_0804ac24(struct MidiBus *, u32, u8);   // Set unk0_b0
extern void func_0804ac40(struct MidiBus *, u32, u8);   // Set Modulation Depth [Ctrl_01]
extern void func_0804ac60(struct MidiBus *, u32, u8);   // Set unk4_b21
extern void func_0804ac80(struct MidiBus *, u32, u8);   // Set Filter EQ [Ctrl_48]
extern void func_0804aca0(struct MidiBus *, u32, u8);   // Set Modulation Type [Ctrl_16]
extern void func_0804acc0(struct MidiBus *, u32, u8);   // Set unkC
extern void func_0804accc(struct MidiBus *, u32, u16);  // Set Modulation Speed [Ctrl_15]
extern void func_0804acd8(struct MidiBus *, u32, u8);   // Set Modulation Delay [Ctrl_1A]
extern void func_0804ace4(struct MidiBus *, u32, u8);   // Set Modulation Range [Ctrl_14]
extern void func_0804acf0(struct MidiBus *, u32, u32);  // Set Offset/Split Stereo Effect [Ctrl_4B]
extern void func_0804ad18(struct MidiBus *, u32, u8);   // Set Priority [Ctrl_21]
extern void func_0804ad38(struct MidiBus *, u32, u8);   // Set Random Pitch Variation [Ctrl_52]
extern void func_0804ad90(struct MidiBus *, u32, u8);   // Set unk1C [Ctrl_53]
extern void func_0804ad9c(struct MidiBus *, u32, u8);   // Set unk1D & unk1E [Ctrl_54]

/* MIDI BUS OPERATIONS */

extern void func_0804adb0(struct MidiBus *, s8);    // Set MidiBus Key
extern void func_0804adb4(struct MidiBus *, u8);    // Set MidiBus Volume
extern void func_0804adb8(struct MidiBus *, s8);    // Set MidiBus Panning
extern void func_0804ade4(struct MidiBus *, s16);   // Set MidiBus Pitch
extern void func_0804ade8(struct MidiBus *, u8);    // Set MidiBus Modulation Range
extern void func_0804ae14(struct MidiBus *, u16);   // Set MidiBus unk8
extern void func_0804ae18(struct MidiBus *, u16 *); // Set MidiBus Tuning

/* LOW-FREQUENCY OSCILLATOR OPERATIONS */

extern void func_0804ae1c(struct LFO *, u8, u8, u8, u8, u8); // Initialise LFO
extern void func_0804ae54(struct LFO *);        // Start LFO [Ctrl_49]
extern void func_0804ae60(struct LFO *);        // Stop LFO [Ctrl_49; Ctrl_4A]
extern void func_0804ae6c(struct LFO *, u32);   // Update LFO
extern u32  func_0804af0c(u16); // Pseudo-Random Number Generator

/* PSG CHANNEL OPERATIONS */

extern void func_0804af30(void);    // Stop All PSG SoundChannels
extern void func_0804af74(u32);     // Initialise PSG SoundChannels
extern u32  func_0804afa4(u32);     // Convert Pitch Envelope to PSG Frequency Register Variable
extern u32  func_0804afd8(u32);     // Convert Volume Envelope to PSG Volume Register Variable
// extern ? func_0804aff0(?);       // Update PSG SoundChannel
extern void func_0804b2c4(void);    // Update All PSG SoundChannels

/* SOUND PLAYER OPERATIONS */

extern u16  func_0804b324(const u8 *);      // Evaluate Big-Endian Short
extern u32  func_0804b330(const u8 *);      // Evaluate Big-Endian Integer
extern u32  func_0804b348(const char *);    // Get SoundPlayer Loop Marker Symbol Length
extern void func_0804b368(struct SoundPlayer *, struct SequenceData *); // Play
extern void func_0804b534(u16);                             // Play from SoundTable
extern void func_0804b560(struct SoundPlayer *);            // Stop
extern void func_0804b574(struct SoundPlayer *, u8);        // Pause/Unpause { 0 = Unpause; 1 = Pause }
extern u32  func_0804b5a0(struct SoundPlayer *);            // Check for Active Midi Readers
extern void func_0804b5d8(struct SoundPlayer *);            // Pause
extern void func_0804b5e4(struct SoundPlayer *);            // Unpause
extern void func_0804b5f0(void);                            // Pause All
extern void func_0804b620(void);                            // Unpause All
extern void func_0804b650(struct SoundPlayer *, u16);       // Set Gain (Volume)
extern void func_0804b654(struct SoundPlayer *, u16, u16);  // Set Gain for Selected Tracks
extern void func_0804b65c(struct SoundPlayer *, u16, s16);  // Set Pitch
extern void func_0804b66c(struct SoundPlayer *, u16, s8);   // Set Panning
extern void func_0804b67c(u16);                             // Pause from Index
extern u32  func_0804b6c4(const u8 *, const u8 *, u32);     // MidiStream.equals()
extern u32  func_0804b6f0(u16, u16, u16);                   // Get MIDI Ticks Per Frame
extern void func_0804b710(struct SoundPlayer *, u16);       // Align Channel Speed with BeatScript
extern void func_0804b734(struct SoundPlayer *, u16, u16);  // Set Volume Fade { type = 0..3 }
extern void func_0804b7dc(struct SoundPlayer *, u16);       // Volume Fade-Out & Clear
extern void func_0804b7ec(struct SoundPlayer *, u16);       // Volume Fade-Out & Pause
extern void func_0804b7fc(struct SoundPlayer *, u16);       // Volume Fade-In

/* MIDI SEQUENCE OPERATIONS */

extern void func_0804b80c(struct SoundPlayer *, const u8 *);    // MidiStream System-Exclusive Message [Evnt_F0]
extern u32  func_0804b898(struct SoundPlayer *, const u8 **);   // MidiStream Meta Event (Loop Start, Loop End, Track End, Set Tempo)
extern void func_0804b95c(struct SoundPlayer *, u32, u8, u8);   // MidiStream Controller Change [Evnt_B]
extern void func_0804bc5c(u32, u32, u32);                       // MidiStream Note Off/On [Evnt_8; Evnt_9]
extern u32  func_0804bcc0(struct SoundPlayer *, u32);           // MidiStream Messages/Events
extern void func_0804bed0(struct SoundPlayer *, u32);           // Update MidiStream

/* MAIN SOUND */

extern void func_0804c040(struct SoundPlayer *);    // Update SoundPlayer Volume
extern void func_0804c0f8(struct SoundPlayer *);    // Update SoundPlayer MidiStream
extern void func_0804c170(void);                    // Update Main
extern void func_0804c340(u32, u32, u32, u32);      // Set Main Reverb Controller Scratch/Queue
extern void func_0804c358(void);                    // Stub
extern void func_0804c35c(struct SoundPlayer *, struct MidiBus *, u32, struct MidiTrackStream *, u32); // Initialise SoundPlayer
extern u32  func_0804c398(const u8 **);             // Parse Midi Variable-Length Quantity

/* DIRECT-MIDI PLAYER */

extern void func_0804c3c0(struct SoundPlayer *, struct MidiTrackStream *, u32, struct MidiBus *, struct MidiChannel *, u8 *); // Initialise DirectMidi Player
extern void func_0804c4bc(s8 *, u32);   // Append DirectMidi Sequence Instructions
extern void func_0804c508(void);        // Parse DirectMidi Sequence Instructions
extern void func_0804c6c8(void);        // Update DirectMidi Player

/* INIT */

extern void func_0804c778(void);  // MIDI4AGB - Initialise
