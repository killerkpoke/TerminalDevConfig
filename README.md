# This is my minimalist Terminal based programming setup
Using [Wezterm](https://wezterm.org/index.html) as terminal emulator.
[Helix IDE](https://helix-editor.com) in the terminal for programming, 
and [Micro text editor](https://micro-editor.github.io) for quick file changes.

## Fonts
For fonts, i am using [Miracode](https://github.com/IdreesInc/Miracode), if want more minecraft and fun style, use [Monocraft](https://github.com/IdreesInc/Monocraft)


## Wezterm config
Download or create the .wezterm.lua file into the home directory. if you created it then copy/paste the code to the lua file.

## Micro config
Opening micro and using the Ctrl+E combination for type into the shell and set the following:
- set colorscheme grovbox
- set softwrap true
- set ruler true
- set autoindent true


## Helix Config
### Base config and theme
After installation, create a config.toml (or download this one) like the following path:
<code>$ ~/.config/helix/config.toml</code>
And paste the code from this repo to the newely created config.toml file.

For the programming language also create (or download) the languages.toml and place it to the ~/.config/helix folder as well.

### Commands for installing LSPs

TODO: Create a bash script to do it automatically.

Using the terminal, to install globally the following LSPs (The list will be extended in the future...):
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
