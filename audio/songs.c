#include "global.h"
#include "sound.h"


// Song Headers
#include "song_titles.inc.c"
#include "song_headers.inc.c"


// Song List (Unused)
#define DEFINE_SONG(song, player) +1
u32 song_header_list_size = (
    #include "song_defines.inc.c"
) - 1;
#undef DEFINE_SONG

#define DEFINE_SONG(song, player) song,
struct SongHeader *song_header_list[] = {
    #include "song_defines.inc.c"
};
#undef DEFINE_SONG


// Song Table
#define DEFINE_SONG(song, player) +1
u32 song_header_table_size = (
    #include "song_defines.inc.c"
);
#undef DEFINE_SONG

#define DEFINE_SONG(song, player) { song, player },
struct SongTable song_header_table[] = {
    #include "song_defines.inc.c"
};
#undef DEFINE_SONG
