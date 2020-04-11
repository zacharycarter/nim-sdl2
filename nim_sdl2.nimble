# Package

version       = "0.1.0"
author        = "Joey Yakimowich-Payne"
description   = "SDL2 Autogenerated wrapper"
license       = "MIT"
srcDir        = "src"



# Dependencies

requires "nim >= 1.0.6", "nimterop#head"

task buildSDL2, "Build SDL2 example":
  exec "nimble c -f -r src/nim_sdl2/wrapper.nim"