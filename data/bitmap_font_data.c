#include "bitmap_font_data.h"

extern const char D_0804f338[];

const char *D_08936b50 = D_0804f338;

struct TaskMethods D_08936b54 = {
    (TaskStartFunc)bmp_font_obj_init_multi_printer,
    (TaskUpdateFunc)bmp_font_obj_update_multi_printer,
    NULL,
    NULL,
};

struct TaskMethods D_08936b64 = {
    (TaskStartFunc)bmp_font_bg_init_printer,
    (TaskUpdateFunc)bmp_font_bg_update_printer,
    NULL,
    NULL,
};

struct TaskMethods D_08936b74 = {
    (TaskStartFunc)init_scene_object_importer,
    (TaskUpdateFunc)update_scene_object_importer,
    NULL,
    NULL,
};
