# This is my minimalist Terminal based programming setup
Using [Wezterm](https://wezterm.org/index.html) as terminal emulator.
[Helix IDE](https://helix-editor.com) in the terminal for programming, 
and [Micro text editor](https://micro-editor.github.io) for quick file changes.

## Wezterm config
Download or create the .wezterm.lua file into the home directory. if you created it then copy/paste the code to the lua file.

## Micro config
Using the grovbox default color scheme:
set colorscheme grovbox

## Helix Config
### Base config and theme
After installation, create a config.toml, like the following path:
<code>$ ~/.config/helix/config.toml</code>
And paste the code from this repo to the newely created config.toml file.


### Commands for installing LSPs 
- <code>npm i -g vscode-langservers-extracted</code>
- <code>npm install -g typescript typescript-language-server</code>
- <code>npm install -g @microsoft/compose-language-service</code>
- <code>npm i -g @vue/language-server</code>
- <code>npm i -g prettier</code>
- <code>npm i -g @tailwindcss/language-server</code>
- <code>npm i -g sql-language-server</code>
- <code>pip install -U 'python-lsp-server[all]'</code>
- <code>pip install pylsp-mypy</code>
- <code>go install golang.org/x/tools/gopls@latest</code>
- <code>go install github.com/go-delve/delve/cmd/dlv@latest</code>
- <code>go install golang.org/x/tools/cmd/goimports@latest</code>
- <code>go install github.com/nametake/golangci-lint-langserver@latest</code>
- <code>go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest</code>

## Links
- https://wezterm.org/config/files.html
- https://wezterm.org/config/appearance.html
- https://wezterm.org/colorschemes/g/index.html#gruvbox-dark-gogh
- https://wezterm.org/config/fonts.html
- https://docs.helix-editor.com/configuration.html
- https://docs.helix-editor.com/themes.html
- https://micro-editor.github.io
