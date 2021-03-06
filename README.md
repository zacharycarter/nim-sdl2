# nim-sdl2

NOTE: This project is not in a ready to use state yet. Working on adding support for Windows & Linux.

Autogenerated Nim bindings around SDL2. These bindings should be complete.

Bindings are autogenerated at compile time and all related libraries are downloaded and built for you as well. You can specify the version of each SDL2 lib using the information in the Configuration section below.

## Installation

```
nimble install nim_sdl2
```

## Usage

Examples are coming. To import (and use all libs except sdl2_gpu), use

```nim
import sdl2
import sdl2 / sdl2_gpu
```

If you want to only use specific libs, import individually:

```nim
import sdl2 / sdl2
import sdl2 / sdl2_image
import sdl2 / sdl2_ttf
import sdl2 / sdl2_net
import sdl2 / sdl2_mixer
import sdl2 / sdl2_gfx

import sdl2 / sdl2_gpu
```

## Configuration

This project uses [nimterop](https://github.com/nimterop/nimterop) to generate it's bindings and documentation.

As such, nimterop provides a nice configuration for choosing which versions of libraries get installed. To do so, create a `nim.cfg` file in your project's root directory (if one doesn't exist), and add the following:

```cfg
-d:SDL_SetVer="2.0.12" -d:SDL_DL -d:SDL_Static
-d:SDL_ImageSetVer="2.0.5" -d:SDL_Image_DL -d:SDL_Image_Static
-d:SDL_NetSetVer="2.0.1" -d:SDL_Net_DL -d:SDL_Net_Static
-d:SDL_MixerSetVer="2.0.4" -d:SDL_Mixer_DL -d:SDL_Mixer_Static
-d:SDL_ttf_SetVer="2.0.15" -d:SDL_TTF_DL -d:SDL_ttf_Static
-d:SDL_GpuSetVer="def5ea1" -d:SDL_GPU_Git -d:SDL_Gpu_Static
-d:SDL2_GFXPrimitivesSetVer="1.0.4" -d:SDL2_GFXPrimitives_DL -d:SDL2_GFXPrimitives_Static -d:SDL2_GFX_Static
```

Change the versions as needed above. `sdl-gpu` is in a git repo, so the version it uses is the commit hash. `SDL2_GFXPrimitives` is `sdl2-gfx`, just the naming is a bit weird. If you want to build a dynamically linked library, remove the `_Static` options above.

## Documentation

View autogenerated documentation [here](https://jyapayne.github.io/nim-sdl2).

All symbols and procedure definitions should be in line with their C counterparts, except with the prefixes removed (GPU_, SDL_, etc).

See the [SDL2 docs](https://wiki.libsdl.org/) for more information.
