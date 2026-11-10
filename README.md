# XY_mu

A C++ Monte Carlo simulation of the two-dimensional XY model with an additional potential term that tunes the vortex chemical potential independently of the coupling constant `J`.

## Features

- XY-lattice Monte Carlo simulation with Metropolis updates
- Measurements of energy, staggered magnetization, vortex density, and related observables
- MPI parallel tempering
- HDF5 output through [h5pp](https://github.com/DavidAce/h5pp)
- CMake presets for release and debug builds

## Requirements

- C++17 compiler
- CMake 3.19 or newer (required by the supplied presets)
- Ninja
- MPI implementation and OpenMP support (enabled in the supplied preset)
- h5pp and its dependencies, discovered or provisioned as configured by CMake/Conan

## Build

```bash
cmake --list-presets
cmake --build --list-presets
cmake --preset=release-native
cmake --build --preset=release-native
```

The executable target is `XY_mu` and is built in `build/release-native/`. For a debug build with AddressSanitizer, use the `debug-asan` preset. The presets and their dependency setup are defined in `CMakePresets.json`.

## Run

The program takes the lattice side length and output and temporary-output directories. Optional positional arguments set restart mode and seed:

```bash
mpirun -np <process-count> build/release-native/XY_mu \
  <L> <output-directory> <temporary-directory> [restart-mode] [seed]
```

`L` specifies an `L × L` lattice. Restart and seed arguments are optional. The program writes measurements to HDF5 and saves lattice configurations in the output directory. Parameter and restart-file conventions are implemented in `source/initialization.cpp` and `source/main.cpp`.

## Tests

After configuring and building, run the registered tests with:

```bash
ctest --test-dir build/release-native --output-on-failure
```

## Repository layout

- `source/` — XY model simulation, initialization, and measurement code
- `tests/` — test programs registered with CTest
- `cmake/` — build and dependency support

