# Testing F# Suave (Web)

This is a small project to test [suave.io](https://suave.io/) and [F#](https://fsharp.org/).

# Running

There is a `makefile` to make things simple.

    $ make bootstrap # bootstrap paket
    $ (sudo) chmod a+x .paket/paket.exe
    $ make deps      # download dependencies
    $ make serve     # build and run

# Building with dotnet cli

The branch is [building-with-dotnet-cli](https://github.com/diasbruno/testing-fsharp-suave-web/tree/building-with-dotnet-cli).

To bootstrap, download the dependencies, build and serve are the same make commands.
