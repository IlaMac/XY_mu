# XY_mu
Xy model with an additional potential term tuning the vortex chemical potential independently from the coupling constant J. 



# REQUIREMENTS

* Openmpi (`module load ...`)
* conan (`pip install conan`)
* CMake version 3.23 or above (`module load ...`)
* Ninja (`module load ...`)

For practical purposes, the module load commands are in the file `~/.bashrc`.

# COMPILE WITH

Shell commands:

```bash
cmake --list-presets                  <--- show available cmake configuration presets in CMakePresets.json
cmake --build --list-presets          <--- show available cmake build presets in CMakePresets.json
cmake --preset=release-native         <--- configure this cmake preset
cmake --build --preset=release-native <--- build this cmake preset
```

The file `CMakePresets.json` contains instructions for ways to invoke the file `CMakeLists.txt`.
For instance, it provides a preset of compilation flags for different machines or environments (i.e. Linux, Windows, Tetralith...).
