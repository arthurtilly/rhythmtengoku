#include "global.h"

// [D_08935fcc] Sine Table (Q8.8)
s8_8 D_08935fcc[] = {
    0,    6,    12,   18,   25,   31,   37,   43,   50,   56,   62,   68,   74,   80,   86,   92,
    98,   103,  109,  115,  120,  126,  131,  137,  142,  147,  152,  157,  162,  167,  172,  176,
    181,  185,  190,  194,  198,  202,  206,  209,  213,  216,  220,  223,  226,  229,  231,  234,
    236,  239,  241,  243,  245,  247,  248,  250,  251,  252,  253,  254,  255,  255,  256,  256,
    256,  256,  256,  255,  255,  254,  253,  252,  251,  250,  248,  247,  245,  243,  241,  239,
    236,  234,  231,  229,  226,  223,  220,  216,  213,  209,  206,  202,  198,  194,  190,  185,
    181,  176,  172,  167,  162,  157,  152,  147,  142,  137,  131,  126,  120,  115,  109,  103,
    98,   92,   86,   80,   74,   68,   62,   56,   50,   43,   37,   31,   25,   18,   12,   6,
    0,    -6,   -12,  -18,  -25,  -31,  -37,  -43,  -50,  -56,  -62,  -68,  -74,  -80,  -86,  -92,
    -98,  -103, -109, -115, -120, -126, -131, -137, -142, -147, -152, -157, -162, -167, -172, -176,
    -181, -185, -190, -194, -198, -202, -206, -209, -213, -216, -220, -223, -226, -229, -231, -234,
    -236, -239, -241, -243, -245, -247, -248, -250, -251, -252, -253, -254, -255, -255, -256, -256,
    -256, -256, -256, -255, -255, -254, -253, -252, -251, -250, -248, -247, -245, -243, -241, -239,
    -236, -234, -231, -229, -226, -223, -220, -216, -213, -209, -206, -202, -198, -194, -190, -185,
    -181, -176, -172, -167, -162, -157, -152, -147, -142, -137, -131, -126, -120, -115, -109, -103,
    -98,  -92,  -86,  -80,  -74,  -68,  -62,  -56,  -50,  -43,  -37,  -31,  -25,  -18,  -12,  -6
};

// [D_089361cc] Cosine Table (Q8.8)
s8_8 D_089361cc[] = {
    256,  256,  256,  255,  255,  254,  253,  252,  251,  250,  248,  247,  245,  243,  241,  239,
    236,  234,  231,  229,  226,  223,  220,  216,  213,  209,  206,  202,  198,  194,  190,  185,
    181,  176,  172,  167,  162,  157,  152,  147,  142,  137,  131,  126,  120,  115,  109,  103,
    98,   92,   86,   80,   74,   68,   62,   56,   50,   43,   37,   31,   25,   18,   12,   6,
    0,    -6,   -12,  -18,  -25,  -31,  -37,  -43,  -50,  -56,  -62,  -68,  -74,  -80,  -86,  -92,
    -98,  -103, -109, -115, -120, -126, -131, -137, -142, -147, -152, -157, -162, -167, -172, -176,
    -181, -185, -190, -194, -198, -202, -206, -209, -213, -216, -220, -223, -226, -229, -231, -234,
    -236, -239, -241, -243, -245, -247, -248, -250, -251, -252, -253, -254, -255, -255, -256, -256,
    -256, -256, -256, -255, -255, -254, -253, -252, -251, -250, -248, -247, -245, -243, -241, -239,
    -236, -234, -231, -229, -226, -223, -220, -216, -213, -209, -206, -202, -198, -194, -190, -185,
    -181, -176, -172, -167, -162, -157, -152, -147, -142, -137, -131, -126, -120, -115, -109, -103,
    -98,  -92,  -86,  -80,  -74,  -68,  -62,  -56,  -50,  -43,  -37,  -31,  -25,  -18,  -12,  -6,
    0,    6,    12,   18,   25,   31,   37,   43,   50,   56,   62,   68,   74,   80,   86,   92,
    98,   103,  109,  115,  120,  126,  131,  137,  142,  147,  152,  157,  162,  167,  172,  176,
    181,  185,  190,  194,  198,  202,  206,  209,  213,  216,  220,  223,  226,  229,  231,  234,
    236,  239,  241,  243,  245,  247,  248,  250,  251,  252,  253,  254,  255,  255,  256,  256
};