# ade-vscode-myron

adapted from [Marcellos-NVim](https://github.com/mcarfagno/ade-nvim)

Use vscode inside a Autoware's [ADE](https://ade-cli.readthedocs.io/en/latest/intro.html) Container.

To install extensions from local vscode installation run

```bash
code --list-extensions >> vscode-extensions.txt
```

Build:

```bash
docker build -t ade-vscode-myron .  
```

Add to your `.aderc`:

```bash
export ADE_IMAGES="
  ade-vscode-myron:latest
"
```
