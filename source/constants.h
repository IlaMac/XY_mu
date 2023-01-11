//
// Created by ilaria on 2021-01-23.
//
#pragma once

/*Number of components*/
inline constexpr int DIM = 2;
inline constexpr int NC = 1;
extern int Lx, Ly, N;

#define C_TWO_PI (6.2831853071795864769252867665590058L)
#define C_PI (3.1415926535897932384626433832795029L)

namespace settings {

#ifdef NDEBUG
    inline constexpr bool debug = false;
#else
    inline constexpr bool debug = true;
#endif

}
