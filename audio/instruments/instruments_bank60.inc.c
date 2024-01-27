extern struct SampleData sample_885_data;
struct InstrumentPCM instrument_pcm_1612 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_885_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_886_data;
struct InstrumentPCM instrument_pcm_1613 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_886_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_823_data;
struct InstrumentPCM instrument_pcm_1614 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_823_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x66A052,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_887_data;
struct InstrumentPCM instrument_pcm_1615 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_887_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_885_data;
struct InstrumentPCM instrument_pcm_1616 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_885_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_198_data;
struct InstrumentPCM instrument_pcm_1617 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_198_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern union Instrument inst_bank_49[];
struct InstrumentSubRhythm instrument_rhy_1618 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_49
};

extern struct SampleData sample_197_data;
struct InstrumentPCM instrument_pcm_1619 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_197_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_030_data;
struct InstrumentPCM instrument_pcm_1620 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_030_data,
    /* ADSR Init */ 0x000000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x5745D1,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_888_data;
struct InstrumentPCM instrument_pcm_1621 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_888_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

struct InstrumentPSG instrument_psg_1622 = {
    /* Type      */ INSTRUMENT_PSG,
    /* Key       */ 0x3C,
    /* Panning   */ 127,
    /* PSG Wave  */ NULL,
    /* ADSR Init */ 0x73745D,
    /* ADSR Sus  */ 0x7E0000,
    /* ADSR Atk  */ 0x1FC000,
    /* ADSR Dec  */ 0x7F0000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x7F0000,
    /* PSG Chnl  */ PSG_PULSE_CHANNEL_1,
    /* PSG Len   */ 0,
    /* PSG Sweep */ 0,
    /* PSG Tone  */ PSG_TONE_DUTY_50,
    /* PSG Noise */ 0,
};

struct InstrumentPSG instrument_psg_1623 = {
    /* Type      */ INSTRUMENT_PSG,
    /* Key       */ 0x3C,
    /* Panning   */ 127,
    /* PSG Wave  */ NULL,
    /* ADSR Init */ 0x73745D,
    /* ADSR Sus  */ 0x7E0000,
    /* ADSR Atk  */ 0x1FC000,
    /* ADSR Dec  */ 0x7F0000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x7F0000,
    /* PSG Chnl  */ PSG_PULSE_CHANNEL_2,
    /* PSG Len   */ 0,
    /* PSG Sweep */ 0,
    /* PSG Tone  */ PSG_TONE_DUTY_50,
    /* PSG Noise */ 0,
};

extern struct SampleData sample_086_data;
struct InstrumentPCM instrument_pcm_1624 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_086_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_796_data;
struct InstrumentPCM instrument_pcm_1625 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x46,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_796_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};
