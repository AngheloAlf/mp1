#include "common.h"

INCLUDE_ASM(s32, "1B800", func_8001AC00);

INCLUDE_ASM(s32, "1B800", func_8001B1D4);

INCLUDE_ASM(s32, "1B800", func_8001B290);

INCLUDE_ASM(s32, "1B800", func_8001B608);

INCLUDE_ASM(s32, "1B800", func_8001B6FC);

INCLUDE_ASM(s32, "1B800", func_8001B900);

INCLUDE_ASM(s32, "1B800", func_8001BD60);

INCLUDE_ASM(s32, "1B800", func_8001BF64);

INCLUDE_ASM(s32, "1B800", func_8001C2E8);

INCLUDE_ASM(s32, "1B800", func_8001C378);

INCLUDE_ASM(s32, "1B800", func_8001C3A8);

INCLUDE_ASM(s32, "1B800", func_8001C75C);

INCLUDE_ASM(s32, "1B800", func_8001C9F4);

INCLUDE_ASM(s32, "1B800", func_8001CBD8);

s16 func_8001CD00(u8* arg0) {
    s16 var_a3;
    s16 i;

    var_a3 = 0;
    for (i = 1; *arg0 != 0 && i < 24; i++) {
        var_a3 += i * (*arg0);
        arg0++;
    }

    return var_a3;
}

INCLUDE_ASM(s32, "1B800", func_8001CD60);

INCLUDE_ASM(s32, "1B800", func_8001CEB4);
