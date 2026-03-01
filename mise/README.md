# Mise Configuration

Config files for [mise](https://mise.jdx.dev). Mise manages developer tooling and helps install things like `node`, `go`, `rust`, `elixir` and other language toolchains predictably -- either on a global level or per project.

## Installation
Install `mise` according to the [instructions](https://mise.jdx.dev/installing-mise.html). Then use `stow mise` to tell mise which tooling to use on a global level.

You can override tooling requirements by providing `mise.toml` files per directory. This repo's `zsh` config makes sure to automatically load and activate `mise`.

