# ade-vscode

Adapted from [Marcellos-NVim](https://github.com/streetdrone-home/ade-neovim)

Use vscode inside a Autoware's [ADE](https://ade-cli.readthedocs.io/en/latest/intro.html) container.

The latest vscode is fetched and installed [portably](https://code.visualstudio.com/docs/editor/portable) in `/opt/vscode`

Extensions are not installed with this package but can be installed by the user after launching vscode from the container.

## Build

```bash
docker build -t ade-vscode:latest .  
```

Add to your `.aderc`:

```bash
export ADE_IMAGES="
  ade-vscode:latest
"
```

## Run

Requires --no-sandbox flag to run from container.

```bash
code --no-sandbox
```
