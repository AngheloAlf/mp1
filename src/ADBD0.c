#include "common.h"


typedef long int Mtx_t[4][4];
typedef union {
    Mtx_t m;
    // struct {
    //     u16 intPart[4][4];
    //     u16 fracPart[4][4];
    // };
    long long int force_structure_alignment;
} Mtx;
#define USHRT_MAX 0x10000
#define USHRT_MINV (f32)(1.0 / 0x10000)
#define PACK_MTX(mtx, i, j) (((((u16*)mtx)[4 * i + j] << 0x10) | ((u16*)mtx)[16 + 4 * i + j]) * USHRT_MINV)

void func_800ACFD0(Mtx* arg0, Vec3f* arg1, Vec3f* arg2) {
    f32 sp0 = arg1->x;
    f32 sp4 = arg1->y;
    f32 sp8 = arg1->z;

    arg2->x = (PACK_MTX(arg0, 0, 0) * sp0) 
        + (PACK_MTX(arg0, 1, 0) * sp4) 
        + (PACK_MTX(arg0, 2, 0) * sp8) 
        + (PACK_MTX(arg0, 3, 0));
    arg2->y = (PACK_MTX(arg0, 0, 1) * sp0) 
        + (PACK_MTX(arg0, 1, 1) * sp4) 
        + (PACK_MTX(arg0, 2, 1) * sp8) 
        + (PACK_MTX(arg0, 3, 1));
    arg2->z = (PACK_MTX(arg0, 0, 2) * sp0) 
        + (PACK_MTX(arg0, 1, 2) * sp4) 
        + (PACK_MTX(arg0, 2, 2) * sp8) 
        + (PACK_MTX(arg0, 3, 2));
}