extern struct SampleData sample_240_data;
struct InstrumentPCM instrument_pcm_0551 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_240_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x015029,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_315_data;
struct InstrumentPCM instrument_pcm_0552 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_315_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x0CD40A,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x015029,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_316_data;
struct InstrumentPCM instrument_pcm_0553 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_316_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_317_data;
struct InstrumentPCM instrument_pcm_0554 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_317_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x267C1F,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00FC1F,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_239_data;
struct InstrumentPCM instrument_pcm_0555 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_239_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x024C48,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x18EA90,
};

extern struct SampleData sample_318_data;
struct InstrumentPCM instrument_pcm_0556 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_318_data,
    /* ADSR Init */ 0x000000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x1D1745,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1FC000,
};

extern struct SampleData sample_005_data;
struct InstrumentPCM instrument_pcm_0557 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_005_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_319_data;
struct InstrumentPCM instrument_pcm_0558 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_319_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x335029,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00FC1F,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_320_data;
struct InstrumentPCM instrument_pcm_0559 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_320_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x335029,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00FC1F,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern union Instrument inst_bank_48[];
struct InstrumentSubRhythm instrument_rhy_0560 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_48
};

extern union Instrument inst_bank_47[];
struct InstrumentSubRhythm instrument_rhy_0561 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_47
};
